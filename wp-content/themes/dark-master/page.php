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
    add_page_banner_header();
    ?>

    <div class="container container--narrow page-section">

        <?php
        $parent_id = wp_get_post_parent_id(get_the_ID());
        if ($parent_id) {
            ?>
            <div class="metabox metabox--position-up metabox--with-home-link">
                <p><a class="metabox__blog-home-link" href="<?php echo get_permalink($parent_id); ?>"><i class="fa fa-home" aria-hidden="true"></i> Back to <?php echo get_the_title($parent_id); ?></a> <span class="metabox__main"><?php the_title(); ?></span></p>
            </div>
            <?php
        }
        ?>

        <?php
        $parent = get_pages(array(
            'child_of' => get_the_ID()
        ));
        if ($parent_id or $parent) { ?>
        <div class="page-links">
            <h2 class="page-links__title"><a href="<?php echo get_permalink($parent_id); ?>"><?php echo get_the_title($parent_id); ?></a></h2>
            <ul class="min-list">
                <?php
                if ($parent_id) {
                    $id_of_the_item = $parent_id;
                } else {
                    $id_of_the_item = get_the_ID();
                }

                wp_list_pages(array(
                    'title_li' => null,
                    'child_of' => $id_of_the_item
                ));

                ?>
            </ul>
        </div>
        <?php } ?>

        <div class="generic-content">
            <?php the_content() ?>
        </div>

    </div>
    <?php
}


get_footer();