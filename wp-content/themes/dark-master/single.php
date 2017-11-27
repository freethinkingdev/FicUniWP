<?php
/**
 * Created by PhpStorm.
 * User: marcin
 * Date: 27/11/2017
 * Time: 15:07
 */

get_header();

while (have_posts()) {
    the_post();
    ?>

    <h1><?php the_title() ?></h1>
    <p><?php the_content() ?></p>

    <a href="<?php echo site_url(); ?>">Back</a>
    <?php
}

get_footer();