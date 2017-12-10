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
        this.search_term_input = $('#search-term');
        this.searchBox = false;
        this.typing_timer = null;
        this.event();
    }

    /*Event listing*/
    event(){
        this.search_button.on("click", this.open_search_window.bind(this));
        this.close_button.on("click", this.close_search_window.bind(this));
        $(document).on('keydown',this.keyboard_key_listener_open_close_search_window.bind(this).bind(event));
        this.search_term_input.on('keydown',this.search_term_input_focus.bind(this));


    }


    /*Method testing whether input window has the focus*/
    search_term_input_focus(){
       clearTimeout(this.typing_timer);
       this.typing_timer = setTimeout(function(){
           console.log(this.name);
           console.log('2');
        },2000)
    }

    /*Method that allows to open or close search div with the keyboard*/
    keyboard_key_listener_open_close_search_window(event){
        /*Setting keycode*/
        var key_code = event.keyCode;

        /*Checking which button has be pressed*/
        switch(key_code) {
            case 83:
                if (!this.searchBox) {
                    this.open_search_window();
                }
                break;
            case 27:
                if (this.searchBox){
                    this.close_search_window();
                }
                break;
            default:
                break;
        }
    }
    /*Open search window*/
    open_search_window(){
        this.search_overlay.addClass("search-overlay--active");
        $('body').addClass('body-no-scroll');
        this.searchBox=true;
    }

    /*Method that hides search window*/
    close_search_window(){
        this.search_overlay.removeClass('search-overlay--active');
        $('body').removeClass('body-no-scroll');
        this.searchBox=false;
    }


}


$(Document).ready(function(){
    var d = new Search();
});



