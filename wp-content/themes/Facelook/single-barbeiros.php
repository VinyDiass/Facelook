<?php get_header(); ?>
	<?php 

	while (have_posts()) {
		the_post();
	}

?>

<main>
	<!-- Sessão de apresntação -->
	<section class="barbeiro__apresentacao">
		<div class="barbeiro__conteudo wrapper">
			<div class="barbeiro__foto" style="background-image: url(<?php  echo get_the_post_thumbnail_url(); ?>);">
				
			</div>
			<div class="barbeiro__descricao">
				<h2 class="barbeiro__nome"><?php the_title(); ?></h2>
				<p class="barbeiro__info"><?php the_content(); ?></p>	
				<div class="barbeiro__redes">
					<a href="<?php the_field('facebook'); ?>"><i class="fab fa-facebook-f"></i></a>
					<a href="<?php the_field('wps'); ?>"><i class="fab fa-whatsapp"></i></i></a>
					<a href="<?php the_field('instagram'); ?>"><i class="fab fa-instagram"></i></a>
				</div>
			</div>
		</div>

	</section>
	<!-- Fim sessão de apresentação -->

	<!-- Sessão de localização -->
	<section class="barbeiro__localizacao">
		<div class="wrapper">
			<h2 class="localizacao__titulo">Veja a nossa Localização</h2>
			<div class="localizacao__conteudo">
				<?php the_field('iframe_da_localizacao') ?>
				<p class="localizacao__paragrafo"><?php the_field('desc_loc'); ?></p>
			</div>
			<div class="itens">
				<p class="contato__item">
					<i class="fas fa-phone-alt"></i> <span><?php the_field('telefone') ?></span>
				</p>
				<p class="contato__item">
					<i class="fas fa-envelope"></i> <span><?php the_field('mail'); ?></span>
				</p>
				<p class="contato__item">
					<i class="fas fa-map-marker-alt"></i> <span><?php the_field('endereco'); ?></span>
				</p>
			</div>
		</div>
	</section>
	<!-- Fim sessão de localização -->

</main>


<?php get_footer(); ?>