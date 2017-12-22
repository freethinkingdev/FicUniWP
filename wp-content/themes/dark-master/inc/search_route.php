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
function uni_search_returned_results($searched_item)
{
    $searched_results = new WP_Query(array(
            'post_type' => array('professor','post','event','page'),
            's' =>  sanitize_text_field($searched_item['q'])
        )
    );
    $results_data_array = array(
        'general_info' => array(),
        'events' => array(),
        'professor' => array(),
        'page' => array()
    );

    while ($searched_results->have_posts()) {
    $searched_results->the_post();
        array_push($results_data_array, array(
            'id' => get_the_ID(),
            'title' => get_the_title(),
            'permalink' => get_the_permalink()
        ));

    }

    return $results_data_array;
}