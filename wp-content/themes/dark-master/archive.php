<?php
/**
 * Created by PhpStorm.
 * User: marcin
 * Date: 28/11/2017
 * Time: 15:02
 */


get_header();
add_page_banner_header(array('title'=>get_the_archive_title(), 'subtitle'=>get_the_archive_description()));
?>


    <div class="container container--narrow page-section">
        <?php
        while (have_posts()) {
            the_post();
            ?>
            <div class="post-item">
                <!-- Post title that is also a link-->
                <h2 class="headline headline--medium headline-post-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
                <div class="metabox">
                    <p>Posted by <?php the_author_posts_link(); ?> on <?php the_time('j M, y'); ?> in <?php echo get_the_category_list(' and '); ?></p>
                </div>


                <div class="generic-content">
                    <?php the_excerpt(); ?>
                    <p><a class="btn btn--gray" href="<?php the_permalink(); ?>">Continue to read &rightarrow;</a> </p>
                </div>

            </div>
            <?php

        }
        echo paginate_links();
        ?>
    </div>

<?php
get_footer();