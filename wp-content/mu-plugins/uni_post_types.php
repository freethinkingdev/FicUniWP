<?php
/**
 * Created by PhpStorm.
 * User: marcin
 * Date: 28/11/2017
 * Time: 21:30
 */

/*Adding new post type*/
add_action('init','uni_post_types');
function uni_post_types(){
    register_post_type('event', array(
        'public' => true,
        'labels' => array(
            'name' => 'Events',
            'add_new_item' => 'Add New Event',
            'edit_item' => 'Edit Event',
            'view_item' => 'View Event',
            'search_items' => 'Search Events',
            'all_items' => 'All Events',
            'singular_name' => 'Event'
        ),
        'menu_icon' => 'dashicons-calendar-alt',
        'has_archive' => true,
        'rewrite' => array('slug'=>'events'),
        'supports' => array('title','editor','author','thumbnail','excerpt','trackbacks', 'revisions','post-formats')
    ));
    register_post_type('campus', array(
        'public' => true,
        'labels' => array(
            'name' => 'Campuses',
            'add_new_item' => 'Add New Campus',
            'edit_item' => 'Edit Campus',
            'view_item' => 'View Campus',
            'search_items' => 'Search Campuses',
            'all_items' => 'All Campuses',
            'singular_name' => 'Campus'
        ),
        'menu_icon' => 'dashicons-building',
        'has_archive' => true,
        'supports' => array('title','editor'),
        'rewrite' => array('slug'=> 'campuses')
    ));
    register_post_type('program', array(
        'public' => true,
        'labels' => array(
            'name' => 'Programs',
            'add_new_item' => 'Add New Program',
            'edit_item' => 'Edit Program',
            'view_item' => 'View Program',
            'search_items' => 'Search Programs',
            'all_items' => 'All Programs',
            'singular_name' => 'Program'
        ),
        'menu_icon' => 'dashicons-awards',
        'has_archive' => true,
        'supports' => array('title','editor'),
        'rewrite' => array('slug'=> 'programs')
    ));
}