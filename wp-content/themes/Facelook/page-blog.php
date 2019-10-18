<?php

	get_header();

?>

	<main class="wrapper">
		<header class="cabecalho__blog">
			<h2 class="titulo__blog">Veja as notícias mais recentes</h2>
		</header>
		<section class="post__wrapper">

		<?php
			$wp_query = new WP_Query();
			$wp_query->query('post_type=blogs'.'&paged='.$paged);

			if  ($wp_query-> have_posts()) :
				while ($wp_query->have_posts()) :
					$wp_query->the_post();
		?>

			<article class="blog__box">

				<a href="<?php the_permalink(); ?>"><img class="blog__img" style="background-image: url(<?php echo get_the_post_thumbnail_url(); ?>);"/></a>
				 
				<div class="blog__content">
					<a class="blog__titulo" href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
					<span class="blog__date"><?php the_date(); ?></span>
					<p class="blog__resumo"><?php the_excerpt(); ?></p>
				</div>
			</article>
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