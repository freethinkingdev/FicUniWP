<?php
/**
 * Created by PhpStorm.
 * User: marcin wuu
 * Date: 13/12/2017
 * Time: 21:03
 * Web: github.com/marsinwu
 */

/*Creating custom json response*/
add_action('rest_api_init', 'uni_custom_json_rest_response_when_searching');
function uni_custom_json_rest_response_when_searching()
{
    register_rest_route('uni/v1', 'search', array(
        'methods' => WP_REST_Server::READABLE,
        'callback' => 'uni_search_returned_results'
    ));
}

/*Function that feeds callback for json*/
/*
 * post_type that takes an array allow to search for the content in the custom posts provided in the array
 * s attribute allow to search for the given term
 */
function uni_search_returned_results($searched_item)
{
    /*Getting custom wp_query in order to search for the item.*/
    $searched_results = new WP_Query(array(
            'post_type' => array('program', 'post', 'event', 'page'),
            's' => sanitize_text_field($searched_item['q'])
        )
    );
    /*Creating multidimensional array with possible results categories*/
    $results_data_array = array(
        'post' => array(),
        'event' => array(),
        'program' => array(),
        'page' => array()
    );


    /*Getting the loop in answer for the custom query*/
    while ($searched_results->have_posts()) {
        $searched_results->the_post();
        $post_type = get_post_type();

        /*Catching the post type and accordingly pushing data to the multidimensional array*/
        switch ($post_type) {
            /*The same feed goes for the page and post type post*/
            case 'post':
            case 'page':
                array_push($results_data_array['post'], array(
                        'id' => get_the_ID(),
                        'title' => get_the_title(),
                        'permalink' => get_the_permalink(),
                        'author_name' => get_the_author()
                    )
                );
                break;

            case 'event':
                array_push($results_data_array['event'], array(
                        'id' => get_the_ID(),
                        'title' => get_the_title(),
                        'permalink' => get_the_permalink(),
                        'author_name' => get_the_author()
                    )
                );
                break;

            case 'program':
                array_push($results_data_array['program'], array(
                        'id' => get_the_ID(),
                        'title' => get_the_title(),
                        'permalink' => get_the_permalink(),
                        'author_name' => get_the_author()
                    )
                );
                break;
        }
    }
    /*Returning the array*/
    return $results_data_array;
}