<div class="post">
<div class="thumb__post" style="background-image: url(<?php echo get_the_post_thumbnail_url(); ?>);"></div>
<div class="content__post">
	<h3 class="title__post"><?php the_title(); ?></h3>
	<article class="excerpt__post">
		<?php the_excerpt(); ?>
	</article>
	<a href="<?php the_permalink(); ?>" class="link__post">Leia mais</a>
</div>
</div>
<hr class="divisoria--amarela divisorio__blog">
