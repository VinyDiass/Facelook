<?php

	get_header();

?>

<main>
        <!-- SLIDER -->
        <section class="sectionSlider">
            <div class="slider">
                <div class="wrapper slider__content">
                    <h2 class="sliderContent__title">Melhores produtos do mundo dos cosméticos</h2>
                    <p class="sliderContent__text"> Venha fazer uma parceria conosco tenha em mãos os melhres produtos </p>
                    <a class="btn slider__btn" href="#">Revender</a>
                </div>
            </div>
        </section>

        <!-- LINHAS DE PRODUTOS -->
        <section>
            <div class="wrapper linhas">
                <header class="linhas__header">
                    <h2 class="header__title">Linhas</h2>
                    <h3 class="header__subtitle">Veja nossa linha</h3>
                </header>
                <!-- AREA CARDS -->
                <div class="linhas__cards">
                <!-- CARD -->
                    <div class="linhas__card">
                        <div class="linhas__cabelofeminino">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/icons/cabelo.svg" width="80"/>
                        </div>
                        <div>
                            <h4 class="linhas__subtitulo">Feminina</h4>
                            <p class="linhas__paragrafo">Os produtos da linha feminina são feitos com todo cuidado em prol de sempre manter o bem estar de seu couro cabeludo.</p>
                            <a class="linhas__link" href="#">ver mais</a>
                        </div>
                    </div>
                <!-- CARD -->
                    <div class="linhas__card">
                        <div class="linhas__bigode">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/icons/bigode.svg" width="100"/>
                        </div>
                        <div>
                        <h4 class="linhas__subtitulo">Masculina</h4>
                            <p class="linhas__paragrafo">Os produtos da linha masculina são feitos para os cortes mais estilosos e tambem para as diferentes barbas.</p>
                            <a class="linhas__link" href="#">ver mais</a>
                        </div>
                    </div>
                <!-- CARD -->
                    <div class="linhas__card">
                        <div class="linhas__medalha">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/icons/medalha.svg" width="80"/>
                        </div>
                        <div>
                        <h4 class="linhas__subtitulo">Premium</h4>
                            <p class="linhas__paragrafo">A linha premium é voltada para os produtos mais diferenciados e mais interessantes para todos os generos.</p>
                            <a class="linhas__link" href="#">ver mais</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- CONHEÇA A FACELOOK -->
        <section class="facelook">
            <div class="wrapper facelook__wrapper">
                <div class="facelook__video">
                    <img class="video" src="<?php echo get_template_directory_uri(); ?>/assets/img/video.png" width="540" height="305">
                    <a class="facelook__player" href="#">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/icons/player.svg" width="98">
                    </a>
                </div>
                <div class="facelook__content">
                    <h2 class="facelook__titulo">Conheça a facelook</h2>
                    <div class="content__barra">
                        <p class="facelook__paragrafo">Surgimos em 2013 com o intuito de fazer a diferença no mercado de cosmeticos e nossa missão é disponibilizar os melhores produtos e aprimorar cada vez mais os nossos  serviços, gerando veiculos fortes e duradourosb com clientes e consumidores</p>
                    </div>

                    <a class="facelook__link" href="#">
                        <img class="facelook__img" src="<?php echo get_template_directory_uri(); ?>/assets/icons/player.svg" width="18"/>
                        Veja o nosso canal
                    </a>
                </div>
            </div>
        </section>

        <!-- LIGA DOS BARBER -->
        <section class="barber">
            <div class="wrapper barber__wrapper">
                <header class="barber__cabecalho">
                    <h2 class="barber__titulo">Conheça a Liga dos Barber </h2>
                    <p class="barber__paragrafo">Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat totam officiis quaerat aperiam impedit error quasi maiores sapiente corrupti nemo libero ullam, doloremque tempora dolore temporibus nulla doloribus at obcaecati?</p>
                </header>
                <!-- AREA BARBEIROS -->
                <div class="barber__fotos">
                    <!-- BOX BARBEIRO -->
            <?php
                $barber_Query = new WP_Query();
                $barber_Query->query('showposts=3&post_type=barbeiros'.'&paged='.$paged);
            
                if($barber_Query->have_posts()):
                    while($barber_Query->have_posts()):
                        $barber_Query->the_post();
            ?>
    

                    <?php get_template_part( 'template-parts/content', 'barberCard' ); ?>
    


            <?php  endwhile; endif; ?>
                     
                    </div>
                </div>
            </div>

                    <!-- FIM AREA BARBEIROS -->
        </section>

            <!-- NEWSLETTER -->
        <section class="news">
            <!-- AREA CONTEUDO NEWSLETTER -->
            <div class="wrapper news__content">
                <div class="news__info">
                    <h2 class="news__titulo">Novidades</h2>
                    <p class="news__paragrafo">Envie-nos seu e-mail e fique por dentro de todas as novidades e receba promoções.</p>
                </div>
                <div class="news__form">
                    <input type="text" name="newsletter" placeholder="Seu melhor e-mail">
                    <button>Enviar</button>
                </div>
            </div>
            </div>
        </section>

        <!-- BLOG -->
        <section class="blog">
            <!-- AREA BLOG -->
            <div class="wrapper blog__wrapper">
                <h2>Veja as ultimas postagens</h2>
                <div class="blog__postagem">
                    <!-- POST -->
                    <div class="blog__post" style="background-image:url(<?php echo get_template_directory_uri(); ?>/assets/img/barbeiro.jpg);">
                        <div class="blog__info">
                            <i class="far fa-clock"></i><span class="blog__data">02/jan/20</span>
                            <h4 class="blog__titulo"> Homem fez barba de forma inusitada, veja como ficou insano </h4>
                            <p class="blog__previa">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod 
                                tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo 
                                viverra maecenas accumsan lacus vel facilisis. 
                            </p>
                            <a class="blog__chamada" href="#">Leia mais <i class="fas fa-angle-double-right"></i></a>
                        </div>
                    </div>
                    <!-- POST -->
                    <div class="blog__post" style="background-image:url(<?php echo get_template_directory_uri(); ?>/assets/img/barbeiro.jpg);">
                        <div class="blog__info">
                            <i class="far fa-clock"></i><span class="blog__data">02/jan/20</span>
                            <h4 class="blog__titulo"> Homem fez barba de forma inusitada, veja como ficou insano </h4>
                            <p class="blog__previa">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod 
                                tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo 
                                viverra maecenas accumsan lacus vel facilisis. 
                            </p>
                            <a class="blog__chamada" href="#">Leia mais <i class="fas fa-angle-double-right"></i></a>
                        </div>
                    </div>
                    <!-- POST -->
                    <div class="blog__post" style="background-image:url(<?php echo get_template_directory_uri(); ?>/assets/img/barbeiro.jpg);">
                        <div class="blog__info">
                            <i class="far fa-clock"></i><span class="blog__data">02/jan/20</span>
                            <h4 class="blog__titulo"> Homem fez barba de forma inusitada, veja como ficou insano </h4>
                            <p class="blog__previa">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod 
                                tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo 
                                viverra maecenas accumsan lacus vel facilisis. 
                            </p>
                            <a class="blog__chamada" href="#">Leia mais <i class="fas fa-angle-double-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
	</main>
	
	<?php get_footer(); ?>