<?php
	get_header();
?>

	<main class="wrapper">
		<div class="paginacao__links">
			<a href="">Home</a>
			<a href="">Produtos</a>
			<a href="">Nome da categoria</a>
		</div>
		<article class="produto__principal">
			<h2 class="titulo titulo__principal"><?php the_title()?></h2>
			<div class="produto__wrapper">
				<div class="produto__img"></div>
				<div class="produto__descricao">
					<p class="produto__parag">
						<?php the_content()?>
					</p>
					<h3 class="titulo titulo__secundario">Modo de Usar</h3>
					<p class="produto__parag">
						<?php the_content()?>
					</p>
					<a href="" class="btn produto__btn">Fazer pedido</a>
				</div>
			</div>
		</article>

		<section class="slide__produtos">
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
		</section>

	</main>

<?php
	get_footer();
?>