/**
 * Created by marcin on 05/12/2017.
 */

window.jQuery = $;
class Search {

    /*Constructor - describing and object initiation*/
    constructor() {

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
                this.typing_timer = setTimeout(this.display_search_results_to_the_user.bind(this), 1000);
            }
        }
        this.searched_term = this.search_term_input.val();
    }

    /*Method that outputs data to the search div*/
    display_search_results_to_the_user() {
        /*Getting json from the wp. Using arrow function*/
        $.getJSON(data_for_js_public.site_root_url+'/wp-json/wp/v2/posts?search=' + this.search_term_input.val(), results => {
            /*Changing html of an element*/
            this.search_results_div.html(`
            ${results.length ? '<h2>Results:</h2><ul>' : '<div><h2>No results were found</h2></div>'}
            ${/*Map function that will do action on an array element*/results.map(result => {
                return `<li><a href="${result.link}">${result.title.rendered}</a></li>`
            }).join('')}             
            ${results.length ? '</ul>' : '<p>Please search for something else.</p>'}
            `);
            this.spinning_wheel = false;
        });
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
    }

    /*Method that hides search window*/
    close_search_window() {
        this.search_overlay.removeClass('search-overlay--active');
        $('body').removeClass('body-no-scroll');
        this.search_box = false;
    }

}


$(Document).ready(function () {
    var d = new Search();
});



