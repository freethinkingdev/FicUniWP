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
    /*Specifying json url that will be used in the process of the search*/
    register_rest_route('uni/v1', 'search', array(
        /*
         *Defines which HTTP methods are to be processed by the function defined by ‘callback’
         * WP_REST_Server::READABLE = ‘GET’
         * WP_REST_Server::EDITABLE = ‘POST, PUT, PATCH’
         * WP_REST_Server::DELETABLE = ‘DELETE’
         * WP_REST_Server::ALLMETHODS = ‘GET, POST, PUT, PATCH, DELETE’
         */
        'methods' => WP_REST_Server::READABLE,
        /*Method that runs as callback*/
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
            /*Adding post types to look within when the search is performed*/
            'post_type' => array('program', 'post', 'event', 'page', 'professor'),
            /*Specifying search query term*/
            's' => sanitize_text_field($searched_item['q'])
        )
    );
    /*Creating multidimensional array with possible results categories that represent search custom posts*/
    $results_data_array = array(
        'post' => array(),
        'event' => array(),
        'program' => array(),
        'page' => array(),
        'professor' => array()
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
                        'author_name' => get_the_author(),
                        'type' => get_post_type()
                    )
                );
                break;
            /*In the case the post is an event*/
            case 'event':
                $event_future_date = new DateTime(get_field('event_date'));
                $excerpt_text = null;
                if (has_excerpt()) {
                    $excerpt_text = get_the_excerpt();
                } else {
                    $excerpt_text = wp_trim_words(get_the_content(), 20);
                }
                array_push($results_data_array['event'], array(
                        'id' => get_the_ID(),
                        'title' => get_the_title(),
                        'permalink' => get_the_permalink(),
                        'author_name' => get_the_author(),
                        'type' => get_post_type(),
                        'month' => $event_future_date->format('M'),
                        'day' => $event_future_date->format('d'),
                        'excerpt' => $excerpt_text
                    )
                );
                break;
            /*In the case the post is the professor type*/
            case 'professor':
                array_push($results_data_array['professor'], array(
                        'id' => get_the_ID(),
                        'title' => get_the_title(),
                        'permalink' => get_the_permalink(),
                        'author_name' => get_the_author(),
                        'type' => get_post_type(),
                        'image' => get_the_post_thumbnail(0, 'professor_portrait')
                    )
                );
                break;
            /*If the custom post type is the program*/
            case 'program':
                array_push($results_data_array['program'], array(
                        'id' => get_the_ID(),
                        'title' => get_the_title(),
                        'permalink' => get_the_permalink(),
                        'author_name' => get_the_author(),
                        'type' => get_post_type()
                    )
                );
                break;
        }
    }

    /*Creating custom query that look for related professor from within related programs*/
    $related_professor_custom_query = new WP_Query(array(
        /*What we are looking for*/
        'post_type' => 'professor',
        /*Since we look in custom fields we use meta query*/
        'meta_query' => array(
            /*Setting up relation to the OR. This would allow at least one filter to be true instead of them all*/
            'relation' => 'OR',
            array(
                /*Name of the advanced custom filed we want to look within*/
                'key' => 'related_programs',
                /*Way of comparing. LIKE represents SQL operator*/
                'compare' => 'LIKE',
                /*Value we look for*/
                'value' => '"' . $results_data_array['program'][0]['id'] . '"'
            )
        )
    ));
    /*We are using while loop to look through the posts*/
    while ($related_professor_custom_query->have_posts()) {
        /*Setting up loop counter*/
        $related_professor_custom_query->the_post();
        /*Populating professors array*/
//        if(get_post_type() == 'professor'){
        array_push($results_data_array['professor'], array(
            'id' => get_the_ID(),
            'title' => get_the_title(),
            'permalink' => get_the_permalink(),
            'author_name' => get_the_author(),
            'type' => get_post_type(),
            'image' => get_the_post_thumbnail(0, 'professor_portrait')
        ));
//        }
    }
    /*Removing duplicated from the array*/
    $results_data_array['professor'] = array_values(array_unique($results_data_array['professor'], SORT_REGULAR));
    /*Returning the array*/
    return $results_data_array;
}