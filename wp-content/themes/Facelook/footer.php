
    <!-- FOOTER -->
    <footer>

        <!-- AREA REDES SOCIAIS -->
        <div class="redes loc">
            <nav class="wrapper redes__nav">
                <a class="redes__items" href="https://api.whatsapp.com/send?1=pt_BR&phone=5511954965600"><i class="fab fa-whatsapp"></i></a>
                <a class="redes__items" href="https://www.facebook.com/facelookcosmeticosoficial/"><i class="fab fa-facebook-f"></i></a>
                <a class="redes__items" href="https://www.instagram.com/facelookcosmeticosoficial/"><i class="fab fa-instagram"></i></a>
                <a  class="redes__items item__loc"><i class="fas fa-map-marker-alt"><iframe class="footer__loc" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3659.00422356802!2d-46.743223485544846!3d-23.496357365078964!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cef931044a37cd%3A0xb42e819f798da5fc!2sR.%20Armando%20Martino%2C%20360%20-%20Parque%20Sao%20Domingos%2C%20S%C3%A3o%20Paulo%20-%20SP%2C%2005127-000!5e0!3m2!1spt-BR!2sbr!4v1573089112397!5m2!1spt-BR!2sbr" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe></i></a>
            </nav>
        </div>

        <div class="rodape wrapper">
            <div class="rodape__news">
                <h2 class="novidades__titulo">Novidades</h2>
                <p class="novidades__text">Envie-nos seu melhore e-mail e fique por dentro de todas as novidades</p>
               
<!--                     <input class="novidades__input" placeholder="Seu melhor e-mail" type="text" />
                    <input class="novidades__button" type="submit" value="Enviar"/> -->
                    <div class="form__footer">
                    <?php echo do_shortcode('[contact-form-7 id="195" title="newsletter_footer"]') ?>
                    </div>
            
            </div>

            <nav class="rodape__menu stroke">
                <a class="rodape__item" href="<?php home_url(); ?>/Facelook/home">home</a>
                <a class="rodape__item" href="<?php home_url(); ?>/Facelook/produtos">produtos</a>
                <a class="rodape__item" href="<?php home_url(); ?>/Facelook/blog">blog</a>
            </nav>

            <div class="rodape__contato">
                <h2 class="contatos">Contatos</h2>
                <p class="contato__items rodape__endereco">Rua: Armando Martino, 360</p>
                <p class="contato__items rodape__tel">(11) 95496-5600</p>
            </div>

            <div class="rodape__copy wrapper">
                <p>Copyright &copy;2019 - <?php bloginfo('name'); ?> - Todos os direitos reservados</p>
            </div>
        </div>
    </footer>
	<?php wp_footer(); ?>
</body>
</html>