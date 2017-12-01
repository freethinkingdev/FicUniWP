<?php
/**
 * Created by PhpStorm.
 * User: marcin
 * Date: 27/11/2017
 * Time: 15:07
 */

get_header();
?>

    <div class="page-banner">
        <div class="page-banner__bg-image" style="background-image: url(<?php echo get_theme_file_uri() ?>/images/ocean.jpg);"></div>
        <div class="page-banner__content container container--narrow">
            <h1 class="page-banner__title"><?php the_title() ?></h1>
            <div class="page-banner__intro">
                <?php //TODO::Change into subtitle ?>
                <p>Latest news</p>
            </div>
        </div>
    </div>

    <div class="container container--narrow page-section">
	    <div class="metabox metabox--position-up metabox--with-home-link">
		    <p><a class="metabox__blog-home-link" href="<?php echo site_url('blog'); ?>"><i class="fa fa-home" aria-hidden="true"></i> Blog Home</a> <span class="metabox__main">Posted by m
					<!--  TODO:: AUTHOR DOESNT SHOW UP-->
				    <?php the_author(); ?> on <?php the_time('j M, y'); ?> in <?php echo get_the_category_list(' and '); ?></span></p>
	    </div>
            <div class="generic-content">
                <?php
                while (have_posts()) {
                    the_post();

                    ?>
                    <div class="post-item">
                        <p><?php the_content(); ?></p>

                    </div>
                    <?php

                }
                ?>
            </div>


    </div>

<?php
get_footer();