<?php get_header(); ?>
    <main class="wrapper">
        <section>
          <header class="cabecalho__produtos" id="product" style="background-image:url(<?php the_field('banner'); ?>);">
            <h2 class="titulo__produtos"> Todos os produtos </h2>
          </header>
            <section class="area__prodgeral">

                <?php
                    $categories = get_terms('produto_category');
                ?>
            
                <form class="filtros" action="<?php echo esc_url(home_url('/listagem/'));?>" method="POST">
                    <select class="opcao" id="cat" name="categoria">
                            <option value="">Categorias</option>
                            <?php foreach ($categories as $cat) {?>
                                <option value="<?php echo $cat->slug; ?>"><?php echo $cat->name; ?></option>
                            <?php } ?> 
                    </select>            
                    <button class="confirm" type="submit" style="text-decoration:none;" class="hidden-mobile btn-buscar"> Buscar</button>
                </form>

                    <div class="area__produtos">
                            
                        <?php

                        $prod_query = new WP_Query();
                        $prod_query->query('post_type=prods'.'&paged='.$paged);
                            if ($prod_query->have_posts()):
                                while ($prod_query->have_posts()):
                                    $prod_query->the_post();
                        ?>
                        <div class="box__produto">
                            <div class="imagem__produto" style="background-image:url(<?php  echo esc_url(get_the_post_thumbnail_url()); ?>);">
                                <div class="conteudo__imagem__produto">
                                    <span><a href="<?php the_permalink(); ?>">+</a></span>
                                </div>
                            </div>
                            <a class="perma__prod" href="<?php the_permalink();?>"><h6 class="nome__produto"><?php the_title()?></h6></a>
                        </div>
                        <?php
                                endwhile;
                                    wp_reset_postdata();
                                endif;
                        ?>                  
                    </div>
                </section>
            </section>

        <section class="area__colecoes">
            <header class="cabecalho__colecoes">
                <h2>Outras coleções</h2>
            </header>
            <section class="destaques__colecoes">
                <div class="destaque__colecoes" style="background-image:url(<?php the_field('imgf');?>">
                    <button class="btn__colecoes">
                        <a class="colecoes" href="#product">Feminino</a>
                    </button>
                </div>
                <div class="destaques__secundarios__colecoes">
                    <div class="destaque__secundario__colecoes" style="background-image:url(<?php the_field('imgm') ?>);">
                        <button class="btn__colecoes">
                            <a class="colecoes" href="#product">Masculino</a>
                        </button>
                    </div>
                    <div class="destaque__secundario__colecoes" style="background-image:url(<?php the_field('imgp') ?>);">
                        <button class="btn__colecoes">
                            <a class="colecoes" href="#product">Premium</a>
                        </button>
                    </div>
                </div>
            </section>
        </section>

    </main>
        <section class="area__parceria">
            <div class="container__parceria">
                <h3>Parceria com a Mega do Brasil</h3>
                <a class="btn btn--dourado" href="https://megadobrasil.com">Visitar</a>
            </div>
            <div class="container__parceria container__parceria__background" style="background-image:url(<?php the_field('parc'); ?>);">
                <div class="conteudo__parceria__background">
                    <h3>Maior parceria de todos os tempos</h3>
                    <a class="btn btn--transparente" href="https://megadobrasil.com">Produtos <i class="far fa-eye"></i></a>
                </div>
            </div>
        </section>
<?php get_footer(); ?>