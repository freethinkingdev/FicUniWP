<?php
/**
 * Created by PhpStorm.
 * User: marcin
 * Date: 28/11/2017
 * Time: 22:50
 */


get_header();
add_page_banner_header(array('title'=>'All Programs','image'=>'http://oxfordstudent.com/wp-content/uploads/2015/05/queens-summer.jpg'))
?>


    <div class="container container--narrow page-section">
        <!--<h2 class="headline headline--small-plus t-center">All programs</h2>-->
        <ul class="link-list min-list">
        <?php
        while (have_posts()) {
            the_post();
            ?>
            <li>
            <div class="generic-content">
                <div class="event-summary">
                    <div class="event-summary__content">
                        <h5 class="event-summary__title headline headline--tiny">
                            <!--TITLE OF THE ITEM-->
                            <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                        </h5>
                        <p>
                            <!--CONTENT OF THE ITEM (TRIMMED VERSION)-->
                            <?php echo wp_trim_words(get_the_content(), 20); ?>
                            <a href="<?php the_permalink(); ?>" class="nu gray">Learn more &raquo;</a>
                        </p>
                    </div>
                </div>
            </div>
            </li>
        <?php } ?>
        </ul>
        <?php

        echo paginate_links();
        ?>
    </div>

<?php
get_footer();