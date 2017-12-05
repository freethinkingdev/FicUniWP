<?php
/**
 * Created by PhpStorm.
 * User: marcin wuu
 * Date: 03/12/2017
 * Time: 22:50
 * Web: github.com/marsinwu
 */


get_header();
add_page_banner_header(array('title' => 'Our Campuses', 'subtitle' => 'Find the one!'))
?>
    <div class="container container--narrow page-section">
        <ul class="link-list min-list">
            <?php
            while (have_posts()) {
                the_post();
                $campus_location = get_field('map_location');
                ?>
                <li>
                <div class="generic-content">
                    <div class="event-summary">
                        <div class="event-summary__content">
                            <h5 class="event-summary__title headline headline--tiny">
                                <!--TITLE OF THE ITEM-->
                                <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                            </h5>
                            <!--Setting up map marker-->
                            <div class="acf-map">
                                <div class="marker" data-lat="<?php echo $campus_location['lat']; ?>"
                                 data-lng="<?php echo $campus_location['lng']; ?>"><h5><a href='<?php the_permalink(); ?>'><?php
                                    the_title(); ?></a></h5><?php echo $campus_location['address']; ?></div>
                            </div>
                            <p>
                                <!--CONTENT OF THE ITEM (TRIMMED VERSION)-->
                            <div><?php /*echo wp_trim_words(get_the_content(), 20); */?></div>
                            <a href="<?php the_permalink(); ?>" class="nu gray">Learn more &raquo;</a>
                            </p>
                        </div>
                    </div>
                </div>
                </li>
            <?php } ?>
        </ul>
        <?php
        /*echo paginate_links();*/
        ?>
    </div>
<?php
get_footer();