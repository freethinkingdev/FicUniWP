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
            <?php while (have_posts()) {  the_post(); $location = get_field('map_location');?>
                <div class="post-item">
                    <div class="row group">
                            <?php the_content(); ?>
                        <div class="acf-map">
                            <div class="marker" data-lat="<?php echo $location['lat']; ?>" data-lng="<?php echo $location['lng']; ?>"></div>
                        </div>
                    </div>


                </div>
            <?php } ?>
        </div>
    </div>

<?php
get_footer();