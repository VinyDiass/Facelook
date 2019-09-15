<div class="imagemBarbeiro" style="background-image:url(<?php echo get_the_post_thumbnail_url(); ?>);">
    <div class="conteudoBarbeiro">
            <h4 class="conteudoBarbeiro__titulo"><?php the_title();?></h4>
            <h5 class="conteudoBarbeiro__especialidade">Barbeiro</h5>
            <p class="conteudoBarbeiro__descricao"><?php the_excerpt();?></p>
            <nav class="conteudoBarbeiro__social">
                <a class="redes__items" href=""><i class="fab fa-twitter"></i></a>
                <a class="redes__items" href=""><i class="fab fa-facebook-f"></i></a>
                <a class="redes__items" href=""><i class="fab fa-instagram"></i></a>
                <a  class="redes__items" href=""><i class="fas fa-map-marker-alt"></i></a>
            </nav>
    </div>
</div>