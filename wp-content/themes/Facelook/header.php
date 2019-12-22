<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php bloginfo('name'); ?></title>
    <?php wp_head(); ?>
    <script src="https://kit.fontawesome.com/837a87187f.js"></script>
</head>
<body>
    <!-- HEADER -->
    <header class="header">
    <!-- NAVEGAÇÃO -->
        <nav class="wrapper header__menu stroke">
            <!-- LOGO -->
            <h1 class="nav__brand">
                <a class="brand" href="<?php home_url();?>/Facelook/home">
                    Facelook cosméticos
                </a>
            </h1>

            <input type="checkbox" id="chk" />
            <label class="menu__h" for="chk">
                <i class="fas fa-bars"></i>
            </label>

            <!-- ITEMS MENU -->
            <div class="nav__menu">
                <a class="menu__item" href="<?php home_url();?>/Facelook/home">Home</a>
                <a class="menu__item" href="<?php home_url();?>/Facelook/produtos">Produtos</a>
                <a class="menu__item" href="<?php home_url(); ?>/Facelook/blog">Blog</a>
                <a class="btn menu__btn" href="http://api.whatsapp.com/send?1=pt_BR&phone=55<?php the_field('apidw'); ?>">Revender</a>
            </div>
        </nav>
	</header>
