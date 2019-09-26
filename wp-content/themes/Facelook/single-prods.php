<?php
	get_header();
?>

<?php 

	while (have_posts()) {
		the_post();
	}

?>
	<nav class="paginacao__links">
		<div class="wrapper">
			<a href="<?php home_url();?>/Facelook/home">Home</a>
			<a href="<?php home_url();?>/Facelook/produtos">Produtos</a>
			<a href=""><?php echo get_the_term_list( $prod_query->ID, 'produto_category', '', ', ' );?></a>
		</div>
	</nav>
	<main class="wrapper">
		<article class="produto__principal">
			<div class="produto__wrapper">
				<div class="produto__img" style="background-image: url('<?php echo get_the_post_thumbnail_url();?>');" ></div>
				<div class="produto__descricao">
					<h2 class="titulo titulo__principal"><?php the_title()?></h2>
					<span>Categoria: <?php echo get_the_term_list( $prod_query->ID, 'produto_category', '', ', ' );?></span><br />
					<?php
					$check = get_the_term_list( $prod_query->ID, 'produto_tag', '', ', ' );

					if ($check != ''):
						echo '<span>'. 'Tag: ' .$check . '</span>';
					else:
						echo '';
					endif;
					?>

					<h3 class="titulo titulo__secundario">Descrição</h3>
					<div class="produto__parag">
						<?php the_content()?>
					</div>
					<h3 class="titulo titulo__secundario">Modo de Usar</h3>
					<div class="produto__parag">
						<ol>
						<?php
						echo rwmb_meta( 'facelook-use' ); 
						
						?>
						</ol>
					</div>
					<a href="" class="btn produto__btn">Fazer pedido <i class="fab fa-whatsapp"></i></a>
				</div>
			</div>
		</article>

		<!-- <section class="slide__produtos">
			<h2 class="slide__titulo">Mais Produtos</h2>
			<div class="slide__wrapper">
				<div class="slide__item">
					<div class="slide__img"></div>
				</div>
				<div class="slide__item">
					<div class="slide__img"></div>
				</div>
				<div class="slide__item">
					<div class="slide__img"></div>
				</div>
				<div class="slide__item">
					<div class="slide__img"></div>
				</div>
			</div>
		</section> -->

	</main>

<?php
	get_footer();
?>