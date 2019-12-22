<?php get_header(); ?>

            <section class="wrapper area__prodgeral">
                <a class="voltar" href="<?php home_url();?>/Facelook/produtos">Voltar</a>
                <h2 class="busca__titulo">Resultado de sua busca</h2>
                    <div class="area__produtos listagem">  
                        <?php

                        	$args = [
                        		'post_type' => 'prods'
                        	];

                        	if( $_POST['tagg'] != '') {
                                $args['tax_query'] = array( 
									array(
										'taxonomy' => 'produto_tag',
										'field' => 'slug',
										'terms' => $_POST['tagg']
									)
								);
                            }

	                        $prod_query = new WP_Query($args);
	                            if ($prod_query->have_posts()):
	                                while ($prod_query->have_posts()):
	                                    $prod_query->the_post();
                        ?>
                        <div class="box__produto">
                            <div class="imagem__produto" style="background-image:url(<?php  echo get_the_post_thumbnail_url(); ?>);">
                                <div class="conteudo__imagem__produto">
                                    <span><a href="<?php the_permalink(); ?>">+</a></span>
                                </div>
                            </div>
                            <h6 class="nome__produto"><?php the_title()?></h6>
                        </div>
                        <?php
                            endwhile;
                                wp_reset_postdata();
                            endif;
                        ?>                  
                    </div>
                </section>

<?php get_footer(); ?>