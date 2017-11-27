<?php
/**
 * Created by PhpStorm.
 * User: marcin
 * Date: 27/11/2017
 * Time: 15:41
 */


add_action('wp_enqueue_scripts', 'uni_files');

function uni_files() {
    wp_enqueue_style('uni_main_css',get_stylesheet_uri());
}