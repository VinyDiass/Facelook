<?php get_header(); ?>

	<?php
		if ($barber_Query->have_posts()):
			while ($barber_Query->have_posts()):
				$barber_Query->the_post();
			
	?>

	<div>
		<h2><?php the_title(); ?></h2>
		<p><?php the_content();?></p>
	</div>

	<?php

		endwhile;
		else:
			echo "Não há postagens";

		endif;
		

	?>

<?php get_footer(); ?>