<?php get_header(); ?>
    <main class="wrapper">
        <section>
          <header class="cabecalho__produtos" style="background-image:url(<?php echo get_template_directory_uri(); ?>/assets/img/barbeiro.jpg);">
            <h2 class="titulo__produtos"> Todos os produtos </h2>
          </header>
          <section class="container__produtos">
            <aside class="filtro__produtos">
                <h5>Filtros</h5>
                <h4>Categorias</h4>
                <hr>
                <nav class="categorias__produtos">
                    <a href="#">Pós</a>
                    <a href="#">Shampoo & Condicionador</a>
                    <a href="#">Cremes</a>
                    <a href="#">Perfumes</a>
                    <a href="#">Óleos</a>
                </nav>
                <h4>Linhas</h4>
                <hr>
                <nav class="categorias__produtos">
                    <a href="#">Feminino</a>
                    <a href="#">Masculino</a>
                    <a href="#">Premium</a>
                </nav>
            </aside>
            <section class="area__produtos">
                    <?php

                    $prod_query = new WP_Query();
                    $prod_query->query('post_type=prods'.'&paged='.$paged);
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
                <div class="box__produto">
                    <div class="imagem__produto" style="background-image:url(<?php echo get_template_directory_uri(); ?>/assets/img/moonlight.jpg);">
                        <div class="conteudo__imagem__produto">
                            <span>+</span>
                        </div>
                    </div>
                    <h6 class="nome__produto">Pó descolorante moonlight</h6>
                </div>
                <div class="box__produto">
                    <div class="imagem__produto" style="background-image:url(<?php echo get_template_directory_uri(); ?>/assets/img/moonlight.jpg);">
                        <div class="conteudo__imagem__produto">
                            <span>+</span>
                        </div>
                    </div>
                    <h6 class="nome__produto">Pó descolorante moonlight</h6>
                </div>
                <div class="box__produto">
                    <div class="imagem__produto" style="background-image:url(<?php echo get_template_directory_uri(); ?>/assets/img/moonlight.jpg);">
                        <div class="conteudo__imagem__produto">
                            <span>+</span>
                        </div>
                    </div>
                    <h6 class="nome__produto">Pó descolorante moonlight</h6>
                </div>
                <div class="box__produto">
                    <div class="imagem__produto" style="background-image:url(<?php echo get_template_directory_uri(); ?>/assets/img/moonlight.jpg);">
                        <div class="conteudo__imagem__produto">
                            <span>+</span>
                        </div>
                    </div>
                    <h6 class="nome__produto">Pó descolorante moonlight</h6>
                </div>
                <div class="box__produto">
                    <div class="imagem__produto" style="background-image:url(<?php echo get_template_directory_uri(); ?>/assets/img/moonlight.jpg);">
                        <div class="conteudo__imagem__produto">
                            <span>+</span>
                        </div>
                    </div>
                    <h6 class="nome__produto">Pó descolorante moonlight</h6>
                </div>
            </section>
          </section>
        </section>

        <section class="area__colecoes">
            <header class="cabecalho__colecoes">
                <h2>Outras coleções</h2>
            </header>
            <section class="destaques__colecoes">
                <div class="destaque__colecoes" style="background-image:url(<?php echo get_template_directory_uri(); ?>/assets/img/barbeiro.jpg);">
                    <button class="btn__colecoes">
                        <p>Feminino</span> <span>30 itens</p>
                    </button>
                </div>
                <div class="destaques__secundarios__colecoes">
                    <div class="destaque__secundario__colecoes" style="background-image:url(<?php echo get_template_directory_uri(); ?>/assets/img/barbeiro.jpg);">
                        <button class="btn__colecoes">
                            <p>Masculino</span> <span>30 itens</p>
                        </button>
                    </div>
                    <div class="destaque__secundario__colecoes" style="background-image:url(<?php echo get_template_directory_uri(); ?>/assets/img/barbeiro.jpg);">
                        <button class="btn__colecoes">
                            <p>Premium</span> <span>30 itens</p>
                        </button>
                    </div>
                </div>
            </section>
        </section>

        <section class="area__parceria">
            <div class="container__parceria">
                <h3>Parceria com a Mega do Brasil</h3>
                <button class="btn__parceria--laranja">Visitar</button>
            </div>
            <div class="container__parceria container__parceria__background" style="background-image:url(<?php echo get_template_directory_uri(); ?>/assets/img/barbeiro.jpg);">
                <div class="conteudo__parceria__background">
                    <h3>Maior parceria de todos os tempos</h3>
                    <button class="btn__parceria--transparente">Produtos <i class="far fa-eye"></i></button>
                </div>
            </div>
        </section>
    </main>
<?php get_footer(); ?>