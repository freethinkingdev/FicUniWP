<?php
/**
 * Created by PhpStorm.
 * User: marcin
 * Date: 29/11/2017
 * Time: 14:56
 */

get_header();
?>
    <div class="page-banner">
        <div class="page-banner__bg-image"
             style="background-image: url(<?php echo get_theme_file_uri() ?>/images/ocean.jpg);"></div>
        <div class="page-banner__content container container--narrow">
            <h1 class="page-banner__title">Page not found....uuups</h1>
            <div class="page-banner__intro">
                <?php //TODO::Change into subtitle ?>
                <p><?php echo '!!!!Change into subtitle!!!!' ?></p>
            </div>
        </div>
    </div>
    <div class="container container--narrow page-section">
        <h1>Sorry to see that...</h1>
        <p>For some reason, the page you have requested cannot be found.</p>
    </div>

<?php


get_footer();