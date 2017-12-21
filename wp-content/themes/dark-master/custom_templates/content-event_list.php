<?php
/**
 * Created by PhpStorm.
 * User: marcin wuu
 * Date: 03/12/2017
 * Time: 19:51
 * Web: github.com/marsinwu
 */
$event_future_date = new DateTime(get_field('event_date'));
?>

<div class="event-summary">
    <a class="event-summary__date t-center" href="<?php the_permalink(); ?>">
        <span class="event-summary__month"><?php echo $event_future_date->format('M'); ?></span>
        <span class="event-summary__day"><?php echo $event_future_date->format('d'); ?></span>
    </a>
    <div class="event-summary__content">
        <h5 class="event-summary__title headline headline--tiny"><a
                href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h5>
        <p><?php if (has_excerpt()) {
                echo get_the_excerpt();
            } else {
                echo wp_trim_words(get_the_content(), 20);
            } ?>
            <a href="<?php the_permalink(); ?>" class="nu gray">Learn more &raquo;</a></p>
    </div>
</div>