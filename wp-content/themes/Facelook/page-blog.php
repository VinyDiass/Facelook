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

			<?php get_template_part( 'template-parts/content', 'blog' ); ?>

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