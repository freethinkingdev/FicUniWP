<?php
/**
 * Created by PhpStorm.
 * User: marcin
 * Date: 29/11/2017
 * Time: 15:01
 */


get_header();
add_page_banner_header(array('title' => 'What happened', 'image' => 'https://az616578.vo.msecnd.net/files/2017/01/15/636200560694747214-45315179_27.passe_.jpg'))
?>

    <div class="container container--narrow page-section">
        <h2 class="headline headline--small-plus t-center">Past events</h2>

        <?php
        $todays_date = date('Ymd');
        $events_for_the_home_past = new WP_Query(array(
                'post_type' => 'event',
                'meta_key' => 'event_date',
                'orderby' => 'meta_value_num',
                'order' => 'desc',
                'meta_query' => array
                (
                    'key' => 'event_date',
                    'compare' => '<',
                    'value' => $todays_date
                ),
                'type' => 'numeric',
                'paged' => get_query_var('paged', 1)
            )
        );

        while ($events_for_the_home_past->have_posts()) {
            $events_for_the_home_past->the_post();

            ?>
            <div class="generic-content">
                <?php get_template_part('custom_templates/content','event_list'); ?>
            </div>


        <?php } ?>
        <?php

        echo paginate_links(array(
            'total' => $events_for_the_home_past->max_num_pages
        ));
        ?>
    </div>

<?php
get_footer();