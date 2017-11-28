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
        'menu_icon' => 'dashicons-calendar-alt'
    ));
}