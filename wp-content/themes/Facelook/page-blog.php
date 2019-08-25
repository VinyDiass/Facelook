<?php

	get_header();

?>

	<main class="wrapper">
		<header class="cabecalho__blog">
			<h2 class="titulo__blog">Blog</h2>
		</header>
		<section class="area__post">

		<?php
			$wp_query = new WP_Query();
			$wp_query->query('showposts=3&post_type=blogs'.'&paged='.$paged);

			if  ($wp_query-> have_posts()) :
				while ($wp_query->have_posts()) :
					$wp_query->the_post();
		?>

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

			<?php
						endwhile;
				?>

					<footer class="listagem__footer wrapper">
						<?php next_posts_link('Proxima página <i class="fas fa-chevron-right text-green"></i>'); ?>
						<?php previous_posts_link('<i class="fas fa-chevron-left text-green"></i> Página anterior ') ?>
					</footer>
				<?php
					endif;
					wp_reset_postdata();
				?>

		</section>
	</main>
<?php get_footer(); ?>