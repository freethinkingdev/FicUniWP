<?php
/**
 * Created by PhpStorm.
 * User: marcin
 * Date: 29/11/2017
 * Time: 15:01
 */


get_header();

?>


    <div class="page-banner" xmlns="http://www.w3.org/1999/html">
        <div class="page-banner__bg-image"
             style="background-image: url(<?php echo get_theme_file_uri() ?>/images/ocean.jpg);"></div>
        <div class="page-banner__content container container--narrow">
            <h1 class="page-banner__title">Past events</h1>
            <div class="page-banner__intro">
            </div>
        </div>
    </div>

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
                'paged' => get_query_var('paged',1)
            )
        );

        while ($events_for_the_home_past->have_posts()) {
            $events_for_the_home_past->the_post();
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

        echo paginate_links(array(
            'total' => $events_for_the_home_past->max_num_pages
        ));
        ?>
    </div>

<?php
get_footer();