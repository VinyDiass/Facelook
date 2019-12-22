<?php get_header(); ?>
    <main class="wrapper">
        <section>
          <header class="cabecalho__produtos" id="product" style="background-image:url(<?php the_field('banner'); ?>);">
            <h2 class="titulo__produtos"> Todos os Produtos </h2>
          </header>
            <section class="area__prodgeral">

                <?php
                    $categories = get_terms('produto_category');
                    $tag = get_terms('produto_tag');
                ?>
                <div class="listas">
                    <form class="filtros" action="<?php echo esc_url(home_url('/listagem/'));?>" method="POST">
                        <select class="opcao" id="cat" name="categoria">
                                <option value="">Categorias</option>
                                <?php foreach ($categories as $cat) {?>
                                    <option value="<?php echo $cat->slug; ?>"><?php echo $cat->name; ?></option>
                                <?php } ?> 
                        </select>            
                        <button class="confirm" type="submit" style="text-decoration:none;" class="hidden-mobile btn-buscar"> Buscar</button>
                    </form>
                    <form class="filtros mega" action="<?php echo esc_url(home_url('/mega/'));?>" method="POST">
                        <select class="opcao" id="tag" name="tagg">
                                <option value="" none>Mega Categorias</option>
                                <?php foreach ($tag as $tags) {?>
                                    <option value="<?php echo $tags->slug; ?>"><?php echo $tags->name; ?></option>
                                <?php } ?> 
                        </select>            
                        <button class="confirm" type="submit" style="text-decoration:none;" class="hidden-mobile btn-buscar"> Buscar</button>
                    </form>
                </div>

                    <div class="area__produtos">
                            
                        <?php

                        $args = array(
                            'post_type' => 'prods',
                            'paged' => $paged
                        );

                        $prod_query = new WP_Query();
                        $prod_query->query($args);
                            if ($prod_query->have_posts()):
                                while ($prod_query->have_posts()):
                                    $prod_query->the_post();
                        ?>
                        <div class="box__produto">
                            <a href="<?php the_permalink(); ?>">
                            <div class="imagem__produto" style="background-image:url(<?php  echo esc_url(get_the_post_thumbnail_url()); ?>);">
                                <div class="conteudo__imagem__produto">
                                    <span>+</span>
                                </div>
                            </div>
                            </a>
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

    </main>
<?php get_footer(); ?>