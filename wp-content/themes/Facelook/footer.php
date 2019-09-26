
    <!-- FOOTER -->
    <footer>

        <!-- AREA REDES SOCIAIS -->
        <div class="redes">
            <nav class="wrapper redes__nav">
                <a class="redes__items" href=""><i class="fab fa-twitter"></i></a>
                <a class="redes__items" href=""><i class="fab fa-facebook-f"></i></a>
                <a class="redes__items" href=""><i class="fab fa-instagram"></i></a>
                <a  class="redes__items" href=""><i class="fas fa-map-marker-alt"></i></a>
            </nav>
        </div>

        <div class="rodape wrapper">
            <div class="rodape__news">
                <h2 class="novidades__titulo">Novidades</h2>
                <p class="novidades__text">Envie-nos seu melhore e-mail e fique por dentro de todas as novidades</p>
                <form  class="novidades__form">
                    <input class="novidades__input" placeholder="Seu melhor e-mail" type="text" />
                    <input class="novidades__button" type="submit" value="Enviar"/>
                </form>
            </div>

            <nav class="rodape__menu stroke">
                <a class="rodape__item" href="<?php home_url(); ?>/Facelook/home">home</a>
                <a class="rodape__item" href="">parceiros</a>
                <a class="rodape__item" href="">produtos</a>
                <a class="rodape__item" href="<?php home_url(); ?>/Facelook/blog">blog</a>
            </nav>

            <div class="rodape__contato">
                <h2 class="contatos">Contatos</h2>
                <p class="contato__items rodape__endereco">R. Jonhson's Baby - 235</p>
                <p class="contato__items rodape__tel">99999-9999</p>
            </div>

            <div class="rodape__copy wrapper">
                <p>Copyright &copy;2019 - <?php bloginfo('name'); ?> - Todos os direitos reservados</p>
            </div>
        </div>
    </footer>
	<?php wp_footer(); ?>
</body>
</html>