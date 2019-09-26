<?php get_header(); ?>

<?php 

	while (have_posts()) {
		the_post();
	}
?>

<main class="wrapper__interna">
	<header class="cabecalho__post">
		<h1 class="titulo__post"><?php the_title(); ?></h1>
		<h2 class="subtitulo__post">Aprenda a cuidar melhor do seu cabelo com dicas rápidas e caseiras para colocar em prática sua revolução capilar.</h2>
		<h4 class="autor__post">Por <?php the_author();?>, Facelook</h4>
		<div>
			<h4 class="data__post"><?php The_date('d/m/Y'); ?></h4>
			<nav>
				<a href="#"></a>
				<a href="#"></a>
				<a href="#"></a>
			</nav>
		</div>
		<hr class="divisoria--amarela">
	</header>
	<article class="artigo__post">
		<figure class="banner__post" style="background-image:url(<?php echo get_the_post_thumbnail_url(); ?>);"></figure>
		<?php the_content(); ?>
	</article>
</main>
<?php get_footer(); ?>