<?php
/**
 * Created by PhpStorm.
 * User: marcin
 * Date: 28/11/2017
 * Time: 22:50
 */


get_header();
add_page_banner_header(array('title'=>'All Events','image'=>'https://i5.walmartimages.com/asr/1382f6ea-f48a-4623-8d7f-077647fd43b8_1.c793ef4d578e69bdf49d987130933451.jpeg?odnBg=FFFFFF'));
?>



    <div class="container container--narrow page-section">
        <h2 class="headline headline--small-plus t-center">Upcoming Events</h2>

        <?php
        /*$events_for_the_home_page = new WP_Query(array(
             'posts_per_page' => -1,
             'post_type' => 'event',


         ));*/

        while (/*$events_for_the_home_page->*/have_posts()) {
            /*$events_for_the_home_page->*/the_post();
            ?>
            <div class="generic-content">
                <?php get_template_part('custom_templates/content','event_list'); ?>

            </div>


        <?php } ?>
        <?php

        echo paginate_links();
        ?>
    </div>

<?php
get_footer();