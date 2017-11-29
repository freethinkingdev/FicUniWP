<?php
/**
 * Created by PhpStorm.
 * User: marcin
 * Date: 28/11/2017
 * Time: 22:50
 */


get_header();

?>


    <div class="page-banner" xmlns="http://www.w3.org/1999/html">
        <div class="page-banner__bg-image"
             style="background-image: url(<?php echo get_theme_file_uri() ?>/images/ocean.jpg);"></div>
        <div class="page-banner__content container container--narrow">
            <h1 class="page-banner__title"><?php the_archive_title(); ?></h1>
            <div class="page-banner__intro">
                <p>Upcoming events...</p>
            </div>
        </div>
    </div>

    <div class="container container--narrow page-section">
        <h2 class="headline headline--small-plus t-center">Upcoming Events</h2>

        <?php
        $events_for_the_home_page = new WP_Query(array(
            'posts_per_page' => 10,
            'post_type' => 'event'
        ));

        while ($events_for_the_home_page->have_posts()) {
            $events_for_the_home_page->the_post();
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