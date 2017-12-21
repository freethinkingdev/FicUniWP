<?php
/**
 * Created by PhpStorm.
 * User: marcin wuu
 * Date: 04/12/2017
 * Time: 15:47
 * Web: github.com/marsinwu
 */

get_header();
add_page_banner_header();

?>
    <div class="container container--narrow page-section">
        <div class="generic-content">
            <?php
            while (have_posts()) {
                the_post();
                $location = get_field('map_location');
                /*Custom query to show related programs to the campus*/
                $related_program = new WP_Query(array(
                    'posts_per_page' => -1,
                    'post_type' => 'program',
                    'orderby' => 'title',
                    'order' => 'ASC',
                    'meta_query' => array(
                        array(
                            'key' => 'related_campus',
                            'compare' => 'LIKE',
                            'value' => '"' . get_the_ID() . '"'
                        ))
                ));
                ?>
                <div class="post-item">
                    <div class="row group">
                        <?php the_content();

                        if ($related_program->have_posts()) {
                        ?>
                        <h3>Programs at this campus:</h3>
                        <ul>
                            <?php
                            while ($related_program->have_posts()) {
                                $related_program->the_post();
                                ?>
                                <li><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></li>
                                <?php
                            }
                            }
                            ?>
                        </ul>
                        <div class="acf-map">
                            <div class="marker" data-lat="<?php echo $location['lat']; ?>"
                                 data-lng="<?php echo $location['lng']; ?>">
                                <?php the_title(); ?>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>

<?php
get_footer();