<?php
/**
 * Created by PhpStorm.
 * User: marcin
 * Date: 27/11/2017
 * Time: 15:07
 */

get_header();
add_page_banner_header();
?>
    <div class="container container--narrow page-section">
            <div class="generic-content">
                <?php
                while (have_posts()) {
                    the_post();
                    ?>
                    <div class="metabox metabox--position-up metabox--with-home-link">
                        <p><a class="metabox__blog-home-link" href="<?php echo site_url('blog'); ?>"><i class="fa fa-home" aria-hidden="true"></i> Blog Home</a> <span class="metabox__main">
                                Posted by <?php the_author(); ?> on <?php the_time('j M, y'); ?> in <?php echo get_the_category_list(' and '); ?></span></p>
                    </div>
                    <div class="post-item">
                        <div class="single_post">
                            <?php echo '<img src="' . the_post_thumbnail() . '">' ?>
                        </div>
                        <div>
                            <p><?php the_content(); ?></p>
                        </div>

                    </div>
                    <?php } ?>
            </div>
    </div>
<?php
get_footer();