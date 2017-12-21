<?php
/**
 * Created by PhpStorm.
 * User: marcin
 * Date: 29/11/2017
 * Time: 17:20
 */

get_header();
add_page_banner_header();
?>

    <div class="container container--narrow page-section">
        <div class="metabox metabox--position-up metabox--with-home-link">
            <p><a class="metabox__blog-home-link" href="<?php echo get_post_type_archive_link('program'); ?>"><i
                        class="fa fa-home" aria-hidden="true"></i> All programs</a>
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
                                    'compare' => '>=',
                                    'value' => $day_today,
                                    'type' => 'numeric'
                                ), array(
                                    'key' => 'related_programs',
                                    'compare' => 'LIKE',
                                    'value' => '"' . get_the_ID() . '"'
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
                                get_template_part('custom_templates/content', 'event_list');

                            }
                        }
                        ?>
                        <!-- RELATED PROFESSOR SECTION        -->
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
                                    'value' => '"' . get_the_ID() . '"'
                                )
                            )
                        ));
                        if ($program_related_professors->have_posts()){
                        ?>
                        <div class="height100px"></div>
                        <h5>
                            <strong>
                                Related <?php the_title(); ?> professors:
                            </strong>
                            <hr>
                        </h5>
                        <ul>
                            <?php
                            while ($program_related_professors->have_posts()) {
                                $program_related_professors->the_post();
                                ?>
                                <li>
                                    <div>
                                        <div class="prof_related"><a href="<?php echo the_permalink(); ?>">
                                                <div
                                                    class="prof_image"> <?php the_post_thumbnail('professor_portrait'); ?></div>
                                                <div class="prof_name"><?php the_title(); ?></div></div>
                                    </div>
                                    </a></li>
                            <?php }
                            } ?>
                        </ul>

                    </div>
                </div>

            <?php } ?>
        </div>


        <?php
        /*RELATED CAMPUS SECTION*/
        wp_reset_postdata();
        $related_campus = get_field('related_campus');
        if($related_campus) {
            ?>

        <div style="float: left;">

        <h3><?php the_title(); ?> is available at the following campus(es): </h3>
            <ul>
                <?php
                foreach ($related_campus as $campus) {
                    ?>
                    <li><h3><a href="<?php echo get_the_permalink($campus); ?>"><?php echo get_the_title($campus); ?></a></h3></li>
                    <?php
                }
                ?>
            </ul>
            <?php
        }
        ?>
            </div>
    </div>
<?php
get_footer();