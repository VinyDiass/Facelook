<?php
	get_header();
?>

<?php 

	while (have_posts()) {
		the_post();
	}

?>
	<main class="wrapper">
		<article class="produto__principal">
			<h2 class="titulo titulo__principal"><?php the_title()?></h2>
			<div class="produto__wrapper">
				<div class="produto__img" style="background-image: url('<?php echo get_the_post_thumbnail_url();?>');" ></div>
				<div class="produto__descricao">
					<div class="accordion">
						<input type="checkbox" id="check1" checked />
						<label for="check1" class="desc titulo__sec">Descrição</label>
						<div class="produto__parag accordion__item">
							<?php the_content()?>
						</div>
					</div>
					<a href="http://api.whatsapp.com/send?1=pt_BR&phone=55<?php the_field('apidw'); ?>" class="btn produto__btn--single">Fazer pedido <i class="fab fa-whatsapp"></i></a>
				</div>
			</div>
		</article>
	</main>

<?php
	get_footer();
?>