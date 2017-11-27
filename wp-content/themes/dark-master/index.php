<?php
/**
 * Created by PhpStorm.
 * User: marcin
 * Date: 27/11/2017
 * Time: 13:41
 */

get_header();

while (have_posts()) {
    the_post();
    ?>

    <h1><a href="<?php the_permalink() ?>"><?php the_title() ?></a></h1>
    <p><?php the_content() ?></p>

    <?php
}

get_footer();