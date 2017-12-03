<?php
/**
 * Created by PhpStorm.
 * User: marcin
 * Date: 27/11/2017
 * Time: 15:41
 */


add_action('wp_enqueue_scripts', 'uni_files');
add_action('after_setup_theme', 'uni_features');
add_action('pre_get_posts', 'uni_events_list');


/*Adding font awesome, js file, css and google font*/
function uni_files()
{
    wp_enqueue_script('slider_code', get_theme_file_uri('/js/scripts-bundled.js'), NULL, microtime(), true);
    wp_enqueue_style('google_font', 'https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
    wp_enqueue_style('font_awesome', 'https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
    wp_enqueue_style('uni_main_css', get_stylesheet_uri(), null, microtime(), false);
}

/*Adding menus to the site*/
function uni_features()
{
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');
    add_image_size('professor_landscape',200,160,true);
    add_image_size('professor_portrait',160,200,true);
    add_image_size('page_banner',1500,350,true);
    register_nav_menu('menu_header', 'Header menu location');
    register_nav_menu('menu_footer_left', 'Footer left menu location');
    register_nav_menu('menu_footer_right', 'Footer right menu location');
}

/*Adjusting events on the archive-event page*/
function uni_events_list($query)
{
    if (!is_admin() and is_post_type_archive('program') and $query->is_main_query()) {
        $query->set('orderby', 'title');
        $query->set('order', 'ASC');
        $query->set('post_per_page', -1);
    }
    $day_today = date('Ymd');
    if (!is_admin() and is_post_type_archive('event') and $query->is_main_query()) {
        /*$query->set('posts_per_page', '2');*/
        $query->set('meta_key', 'event_date');
        $query->set('orderby', 'meta_value_num');
        $query->set('order', 'ASC');
        $query->set('meta_query', array(
            'key' => 'event_date',
            'compare' =>'>=',
            'value' => $day_today,
            'type' => 'numeric'
        ));

    }



}