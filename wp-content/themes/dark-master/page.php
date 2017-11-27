<?php
/**
 * Created by PhpStorm.
 * User: marcin
 * Date: 27/11/2017
 * Time: 15:19
 */

get_header();

while (have_posts()) {
    the_post();
    ?>
    <h1>Page page</h1>
    <h1><?php the_title() ?></h1>
    <p><?php the_content() ?></p>

    <a href="http://localhost/dashboard/FicUni/">Back</a>
    <?php
}


get_footer();