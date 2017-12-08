/**
 * Created by marcin on 05/12/2017.
 */

window.jQuery = $;
class Search {
    /*Constructor - describing and object initiation*/
    constructor(){

        this.search_button = $('.js-search-trigger');
        this.close_button = $('.close_button');
        this.search_overlay = $('.search-overlay');
        this.event();
    }

    /*Event listing*/
    event(){
        this.search_button.on("click", this.open_search_window.bind(this));
        this.close_button.on("click", this.close_search_window.bind(this));
    }
    /*Methods description*/
    open_search_window(){
        this.search_overlay.addClass("search-overlay--active");
        $('body').addClass('body-no-scroll');
    }

    close_search_window(){
        this.search_overlay.removeClass('search-overlay--active');
        $('body').removeClass('body-no-scroll');
    }


}


$(Document).ready(function(){
    var d = new Search();
});



