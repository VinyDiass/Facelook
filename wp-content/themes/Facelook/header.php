<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php bloginfo('name'); ?></title>
    <link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/assets/css/style.css">
    <script src="https://kit.fontawesome.com/837a87187f.js"></script>
    <?php wp_head(); ?>
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

            <!-- <input type="checkbox" id="chk">
            <label for="chk" class="show-menu-btn">
                <i class="fas fa-ellipsis-h"></i>
            </label> -->

            <!-- ITEMS MENU -->
            <div class="nav__menu">
                <a class="menu__item" href="<?php home_url();?>/Facelook/home">Home</a>
                <a class="menu__item" href="<?php home_url();?>/Facelook/produtos">Produtos</a>
                <a class="menu__item" href="<?php home_url(); ?>/Facelook/blog">Blog</a>
                <a class="btn menu__btn" href="<?php the_field('apidw'); ?>">Revender</a>
                <label for="chk" class="hide-menu-btn">
                    <i class="fas fa-times"></i>
                </label>
            </div>
            <!-- MENU IDIOMAS -->
            <!-- <nav class="nav__linguas">
                <a class="linguas__pt" href="#">PT</a>
                <div>
                    <a href=""></a>
                    <a href=""></a>
                </div>
            </nav> -->
        </nav>
	</header>
