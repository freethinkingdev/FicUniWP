<?php
/**
 * Created by PhpStorm.
 * User: marcin
 * Date: 27/11/2017
 * Time: 15:41
 */


add_action('wp_enqueue_scripts', 'uni_files');
add_action('after_setup_theme','uni_features');


function uni_files() {
    wp_enqueue_script('slider_code',get_theme_file_uri('/js/scripts-bundled.js'),NULL,microtime(),true);
    wp_enqueue_style('google_font','https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
    wp_enqueue_style('font_awesome','https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
    wp_enqueue_style('uni_main_css',get_stylesheet_uri(),null,microtime(),false);
}

function uni_features() {
    add_theme_support('title-tag');
}