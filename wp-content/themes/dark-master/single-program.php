<?php
/**
 * Created by PhpStorm.
 * User: marcin
 * Date: 29/11/2017
 * Time: 17:20
 */

get_header();
?>

    <div class="page-banner">
        <div class="page-banner__bg-image" style="background-image: url(<?php echo get_theme_file_uri() ?>/images/ocean.jpg);"></div>
        <div class="page-banner__content container container--narrow">
            <h1 class="page-banner__title"><?php the_title() ?></h1>
            <div class="page-banner__intro">
                <?php //TODO::Change into subtitle ?>
            </div>
        </div>
    </div>

    <div class="container container--narrow page-section">
	    <div class="metabox metabox--position-up metabox--with-home-link">
		    <p><a class="metabox__blog-home-link" href="<?php echo get_post_type_archive_link('program'); ?>"><i class="fa fa-home" aria-hidden="true"></i> All programs</a>
                <span class="metabox__main"><?php the_title(); ?></span></p>
	    </div>
            <div class="generic-content">
                <?php
                while (have_posts()) {
                    the_post();
                    ?>
                    <div class="post-item">
                        <p><?php the_content(); ?></p>
                        <div>
                            <?php
                            /* FUTURE EVENTS SECTION*/
                            $day_today = date('Ymd');
                            $events_for_the_programs = new WP_Query(array(
                                'posts_per_page' => 3,
                                'post_type' => 'event',
                                'meta_key' => 'event_date',
                                'orderby' => 'meta_value_num',
                                'order' => 'ASC',
                                'meta_query' => array(
                                    array(
                                    'key' => 'event_date',
                                    'compare' =>'>=',
                                    'value' => $day_today,
                                    'type' => 'numeric'
                                    ), array(
                                    'key' => 'related_programs',
                                    'compare' => 'LIKE',
                                    'value' => '"'.get_the_ID().'"'
                                ))
                            ));
                            /*
                             * RELATED EVENTS SECTION
                             * */
                            if ($events_for_the_programs->have_posts()) { ?>
                                <p>
                                    <h5>
                                        <strong>
                                            Upcoming <?php echo get_the_title(); ?> events:
                                        </strong>
                                    </h5>
                                    <hr>
                                </p>
                                <?php

                                while ($events_for_the_programs->have_posts()) {
                                    $events_for_the_programs->the_post();
                                    $event_future_date_raw = get_field('event_date',false,false);
                                    $event_future_date = new DateTime($event_future_date_raw);
                                    ?>
                                    <div class="event-summary">
                                        <a class="event-summary__date t-center" href="<?php the_permalink(); ?>">
                                            <span class="event-summary__month"><?php echo $event_future_date->format('M'); ?></span>
                                            <span class="event-summary__day"><?php echo $event_future_date->format('d'); ?></span>
                                        </a>
                                        <div class="event-summary__content">
                                            <h5 class="event-summary__title headline headline--tiny"><a
                                                    href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h5>
                                            <p><?php if (has_excerpt()){ echo get_the_excerpt(); } else {echo wp_trim_words(get_the_content(), 20);}  ?>
                                                <a href="<?php the_permalink(); ?>" class="nu gray">Learn more &raquo;</a></p>
                                        </div>
                                    </div>
                                <?php } ?>
                            <?php }
                            ?>
                            <!--
                                RELATED PROFESSOR SECTION
                            -->
                            <?php
                            wp_reset_postdata();
                            $program_related_professors = new WP_Query(array(
                                'posts_per_page' => -1,
                                'post_type' => 'professor',
                                'orderby' => 'title',
                                'order' => 'ASC',
                                'meta_query' => array(
                                    array(
                                        'key' => 'related_programs',
                                        'compare' => 'LIKE',
                                        'value' => '"'.get_the_ID().'"'
                                    )

                                )
                            ));

                            ?>
                            <h5>
                                <strong>
                                    Related <?php the_title(); ?> professors:
                                </strong>
                                <hr>
                            </h5>
                            <ul class="link-list min-list">
                            <?php
                            while ($program_related_professors->have_posts()) {
                                $program_related_professors->the_post();
                                ?>
                                    <li><a href="<?php echo the_permalink(); ?>"> <?php the_title(); ?></a></li>
                                <?php } ?>
                                </ul>
                        </div>
                    </div>
                    <?php } ?>
            </div>
    </div>
<?php
get_footer();