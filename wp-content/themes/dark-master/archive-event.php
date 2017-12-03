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
            $event_future_date_raw = get_field('event_date');
            $event_future_date = new DateTime($event_future_date_raw);
            ?>
            <div class="generic-content">
                <div class="event-summary">
                    <a class="event-summary__date t-center" href="<?php the_permalink(); ?>">
                        <span class="event-summary__month"><?php echo $event_future_date->format('M'); ?></span>
                        <span class="event-summary__day"><?php echo $event_future_date->format('d'); ?></span>
                    </a>
                    <div class="event-summary__content">
                        <h5 class="event-summary__title headline headline--tiny"><a
                                href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h5>
                        <p><?php echo wp_trim_words(get_the_content(), 20); ?>
                            <a href="<?php the_permalink(); ?>" class="nu gray">Learn more &raquo;</a></p>
                    </div>

                </div>
            </div>


        <?php } ?>
        <?php

        echo paginate_links();
        ?>
    </div>

<?php
get_footer();