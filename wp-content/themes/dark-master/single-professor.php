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
        <div class="page-banner__bg-image" style="background-image: url(<?php $page_image = get_field('page_banner_background_image'); echo $page_image['sizes']['page_banner']; ?>"></div>
        <div class="page-banner__content container container--narrow">
            <h1 class="page-banner__title"><?php the_title() ?></h1>
            <div class="page-banner__intro">
                <p><?php echo get_field('page_banner_subtitle'); ?></p>
            </div>
        </div>
    </div>

    <div class="container container--narrow page-section">

            <div class="generic-content">
                <?php
                while (have_posts()) {
                    the_post();
                    ?>
                    <div class="post-item">
                        <div class="row group">
                            <div class="one-third">
                                <?php the_post_thumbnail('professor_landscape');?>
                            </div>

                            <div class="two-thirds">
                                <?php the_content(); ?>
                            </div>
                        </div>
                        <div>

                            <?php

                            /* FUTURE EVENTS SECTION*/
                            $day_today = date('Ymd');
                            $related_programs_to_professors = get_field('related_programs');
                            /*If there are any related programs*/
                            if ($related_programs_to_professors) { ?>
                                <p>
                                    <h5>
                                        <strong>
                                            Subject(s) Taught:
                                        </strong>
                                    </h5>
                                    <hr>
                                </p>
                                <ul class="link-list min-list">
                            <?php
                                foreach ($related_programs_to_professors as $program) {
                                    ?>

                                    <li><h3><a href="<?php echo get_the_permalink($program)?>"><?php echo get_the_title($program); ?></a></h3></li>

                                    <?php
                                }

                            } ?>
                                </ul>
                        </div>
                    </div>
                    <?php } ?>
            </div>
    </div>
<?php
get_footer();