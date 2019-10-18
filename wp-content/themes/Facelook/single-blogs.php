<?php get_header(); ?>

<?php 

	while (have_posts()) {
		the_post();
	}
?>

<main class="wrapper">
	<section class="artigo__wrapper">
		<article class="artigo__box">
			<header class="artigo__header">
				<p class="artigo__autor"><?php the_author(); ?></p>
				<span class="artigo__data"><?php the_date(); ?></span>
			</header>
			<div class="artigo__post">
				<h2 class="artigo__titulo"><?php the_title();?></h2>
				<img class="artigo__img" style="background-image: url(<?php echo get_the_post_thumbnail_url(); ?>);" />
				<p class="artigo__content"> <?php the_content(); ?> </p>
			</div>
		</article>
	</section>
</main>
<?php get_footer(); ?>