<?php
/**
 * Created by PhpStorm.
 * User: marcin
 * Date: 28/11/2017
 * Time: 22:29
 */

get_header();
add_page_banner_header(array('subtitle'=>'the past...'));
?>



    <div class="container container--narrow page-section">
        <div class="metabox metabox--position-up metabox--with-home-link">
            <p><a class="metabox__blog-home-link" href="<?php echo get_post_type_archive_link('event'); ?>"><i
                        class="fa fa-home" aria-hidden="true"></i> Event Home</a>
                <span class="metabox__main"><?php the_title(); ?></span></p>
        </div>
        <div class="generic-content">
            <?php
            while (have_posts()) {
                the_post();

                ?>
                <div class="post-item">
                    <p><?php the_content(); ?></p>
                    <?php
                    /*CHECKING TO SEE IF THE POST/EVENT HAS RELATED PROGRAM*/
                    $related_programs = get_field('related_programs');
                    /*IF THE EVENT HAS RELATED PROGRAM*/
                    if($related_programs){?>
                    <div>
                        <p><h5>Related program(s):</h5></p>

                        <?php

                        echo '<ul class="link-list min-list">';
                        foreach ($related_programs as $study_program) {
                        ?>
                        <li>
                            <a href="<?php echo get_the_permalink($study_program); ?>">
                                <?php
                                echo get_the_title($study_program);
                                ?>
                            </a>
                        </li>
                            <?php }
                            echo '</ul>'; ?>

                    </div>
                    <?php } ?>
                </div>


                <?php

            }
            ?>

        </div>


    </div>

<?php
get_footer();