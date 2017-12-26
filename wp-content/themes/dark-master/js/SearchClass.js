/**
 * Created by marcin on 05/12/2017.
 */

window.jQuery = $;
class Search {

    /*Constructor - describing and object initiation*/
    constructor() {
        this.html_search_overaly();
        this.search_button = $('.js-search-trigger');
        this.close_button = $('.close_button');
        this.search_overlay = $('.search-overlay');
        this.search_term_input = $('#search-term');
        this.search_results_div = $('#search_results_div');
        this.searched_term = '';
        this.search_box = false;
        this.typing_timer = null;
        this.spinning_wheel = false;
        this.event();

    }

    /*Event listing*/
    event() {
        this.search_button.on("click", this.open_search_window.bind(this));
        this.close_button.on("click", this.close_search_window.bind(this));
        $(document).on('keydown', this.keyboard_key_listener_open_close_search_window.bind(this).bind(event));
        this.search_term_input.on('keyup', this.search_term_input_focus.bind(this));
    }

    /*Method testing whether input window has the focus*/
    search_term_input_focus() {
        if (this.search_term_input.val() != this.searched_term) {
            clearTimeout(this.typing_timer);
            this.display_spinning_wheel_to_the_user();
            if (this.search_term_input.val()) {
                this.typing_timer = setTimeout(this.display_search_results_to_the_user.bind(this), 500);
            }
        }
        this.searched_term = this.search_term_input.val();
    }

    /*Method that outputs data to the search div*/
    display_search_results_to_the_user() {
        /*Getting multiple json data from the wp site. And stating what should happen after request are complete with then method*/

        $.getJSON(data_for_js_public.site_root_url + '/wp-json/uni/v1/search?q=' + this.search_term_input.val(), (json_data) => {
            this.search_results_div.html(`
                <div class="row">
                    <div class="one-third">
                        <h3>Posts:</h3>
                        ${json_data.post.length ? '<ul>' : '<div><h2>No results were found</h2></div>'}
                        ${/*Map function that will do action on an array element*/ json_data.post.map(result => {
                return `<li><a href="${result.permalink}">${result.title}</a> ${result.type == 'post' ? `<small><em>By: ${result.author_name}</em></small>` : ''} </li>`
            }).join('')}
                        ${json_data.post.length ? '</ul>' : '<p>Please search for something else.</p>'}
                    </div>
                    
                    
                    <div class="one-third">
                        <h3>Programs: </h3>
                         ${json_data.program.length ? '<ul>' : '<div><h2>No results were found</h2></div>'}
                        ${/*Map function that will do action on an array element*/ json_data.program.map(result => {
                return `<li><a href="${result.permalink}">${result.title}</a></li>`
            }).join('')}
                        ${json_data.program.length ? '</ul>' : '<p>Please search for something else.</p>'}
                    <h3>Professors:</h3>
                        <div class="professors_ul_cards">
                    ${json_data.professor.length ? '<ul class="professor-cards">' : '<div><h2>No results were found</h2></div>'}
                        ${/*Map function that will do action on an array element*/ json_data.professor.map(result => {
                return `
                    <li class="professor-card__list-item">
                        
                            <div class="prof_related">
                        <a class="professor-card" href="${result.permalink}">
                                    <div
                                        class="professor-card__image">${result.image}</div>
                                    <div class="professor-card__name">${result.title}</div></div>
                        </a>
                    </li>`
            }).join('')}
                        ${json_data.professor.length ? '</ul>' : '<p>Please search for something else.</p>'}
                        </div>
                    
                    
                    </div>
                    
                    
                    
                    <div class="one-third">
                    <h3>Events:</h3>
                    ${json_data.event.length ? '<ul>' : '<div><h2>No results were found</h2></div>'}
                        ${/*Map function that will do action on an array element*/ json_data.event.map(result => {
                return `
<div class="event-summary">
    <a class="event-summary__date t-center" href="<?php the_permalink(); ?>">
        <span class="event-summary__month">${result.month}</span>
        <span class="event-summary__day">${result.day}</span>
    </a>
    <div class="event-summary__content">
        <h5 class="event-summary__title headline headline--tiny"><a
                href="${result.permalink}">${result.title}</a></h5>
        <p>${result.excerpt} <a href="${result.permalink}" class="nu gray">Learn more &raquo;</a></p>
    </div>
</div>`
            }).join('')}
                        ${json_data.event.length ? '</ul>' : '<p>Please search for something else.</p>'}
                        
                        
                        
                    </div>
                </div>
            `);
            this.spinning_wheel = false;
        }, () => {
            this.search_results_div.html('<div><h2>An unexpected error occurred.Please try again later.</h2></div>');
        });

        /*OLD METHOD DELETE IT*/
        /*$.when(
         /!*
         * Stating json request data_for_js_public.site_root_url object has been created in functions.php file
         *!/
         $.getJSON(data_for_js_public.site_root_url + '/wp-json/wp/v2/posts?search=' + this.search_term_input.val()),
         $.getJSON(data_for_js_public.site_root_url + '/wp-json/wp/v2/pages?search=' + this.search_term_input.val())
         ).then((post_results, page_results) => {
         /!*Creating major array with the data from the requests. Since returned information contains info about request itself we have
         * work with [0] element*!/
         var final_results = post_results[0].concat(page_results[0]);
         /!*Changing html of an element*!/
         this.search_results_div.html(`
         ${final_results.length ? '<h2>Results:</h2><ul>' : '<div><h2>No results were found</h2></div>'}
         ${/!*Map function that will do action on an array element*!/final_results.map(result => {
         return `<li><a href="${result.link}">${result.title.rendered}</a> ${result.type == 'post' ? `<small><em>By: ${result.author_name}</em>Type: ${result}</small>` : ''} </li>`
         }).join('')}
         ${final_results.length ? '</ul>' : '<p>Please search for something else.</p>'}
         `);
         this.spinning_wheel = false;
         }, () => {
         this.search_results_div.html('<div><h2>An unexpected error occurred.Please try again later.</h2></div>');
         });*/
    }

    /*Method that show intermittent content to the user*/
    display_spinning_wheel_to_the_user() {
        /*Check to see if the search input is empty*/
        if (this.search_term_input.val()) {
            if (!this.spinning_wheel) {
                this.search_results_div.html("<div class='spinner-loader'></div>");
                this.spinning_wheel = true;
            }
        } else {
            this.search_results_div.html('');
            this.spinning_wheel = false;
        }


    }

    /*Method that allows to open or close search div with the keyboard*/
    keyboard_key_listener_open_close_search_window(event) {
        /*Setting keycode*/
        var key_code = event.keyCode;

        /*Checking which button has be pressed*/
        switch (key_code) {
            case 83:
                if (!this.search_box && !$('input, textarea').is(':focus')) {
                    this.open_search_window();
                }
                break;
            case 27:
                if (this.search_box) {
                    this.close_search_window();
                }
                break;
            default:
                break;
        }
    }

    /*Open search window*/
    open_search_window() {
        this.search_overlay.addClass("search-overlay--active");
        $('body').addClass('body-no-scroll');
        this.search_box = true;
        setTimeout(() => {
            this.search_term_input.focus();
        }, 500);
    }

    /*Method that hides search window*/
    close_search_window() {
        this.search_overlay.removeClass('search-overlay--active');
        $('body').removeClass('body-no-scroll');
        this.search_box = false;
        this.search_term_input.val('');
    }

    /*Method that adds search overlay to the bottom of the page*/
    html_search_overaly() {
        $('body').append(`
            <div class="search-overlay">
        <div class="search-overlay__top">
            <div class="container">
                <i class="fa fa-search fa-3x" aria-hidden="true"></i> <input type="text" class="search-term" placeholder="you are searching for.." id="search-term"> <span class="close_button"><i class="fa fa-times-circle fa-3x" aria-hidden="true"></i></span>
            </div>
        </div>
        <div class="container">
            <div id="search_results_div">

            </div>
        </div>
    </div>
        `);
    }
}


$(Document).ready(function () {
    var d = new Search();
});



