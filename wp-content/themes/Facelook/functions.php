<?php

add_theme_support( 'post-thumbnails' ); 

//REGISTRANDO POST TYPES
function register_post_types(){

$def_posttype_args = array(

	'labels'             => array(),
	'description'        => '',
	'public'             => true,
	'publicly_queryable' => true,
	'show_ui'            => true,
	'show_in_menu'       => true,
	'query_var'          => true,
	'rewrite'            => '',
	'capability_type'    => 'post',
	'has_archive'        => true,
	'hierarchical'       => false,
	'menu_position'      => 2,
	'supports'           => array('title', 'thumbnail', 'editor', 'author', 'excerpt', 'page-attributes' ),
	'show_in_rest'		 => true

);

$def_taxonomy_args = array(
	'hierarchical'      => true,
	'labels'            => array(),
	'show_ui'           => true,
	'show_admin_column' => true,
	'query_var'         => true,
	'rewrite'           => '',
	'show_in_rest'		 => true
);

$posttypes = array(
	'blogs' => array(

		'labels' => array(
			'name'               => _( 'Blog'),
			'singular_name'      => _( 'Blog'),
			'menu_name'          => _( 'Blog'),
			'name_admin_bar'     => _( 'Blog'),
			'add_new'            => _( 'Nova Publicação'),
			'add_new_item'       => __( 'Nova Publicação'),
			'new_item'           => __( 'Nova Publicação'),
			'edit_item'          => __( 'Editar Publicação'),
			'view_item'          => __( 'Ver Publicação'),
			'all_items'          => __( 'Publicações'),
			'search_items'       => __( 'Procurar'),
			'parent_item_colon'  => __( 'blog-pai:'),
			'not_found'          => __( 'Nenhum Post encontrado.'),
			'not_found_in_trash' => __( 'Nenhum Post encontrado na lixeira.')
		),
		'menu_icon' => 'dashicons-format-quote',
		'description' => __('Blog Posts'),
		'rest_base' =>'custom/blog',
		'has_archive' => 'biblioteca/blog',
		'rewrite'     => [
			'slug' => 'blog',
		],
		'supports'    => array('title', 'thumbnail', 'excerpt', 'editor'),
		'taxonomy'    => array(

			'blog_category' => array(

				'hierarchical'      => true,
				'labels'            => array(
					'name'              => _( 'Categorias'),
					'singular_name'     => _( 'Categorias'),
					'search_items'      => __( 'Procurar' ),
					'all_items'         => __( 'Categorias' ),
					'parent_item'       => __( 'Categoria Pai' ),
					'parent_item_colon' => __( 'Categoria Pai:' ),
					'edit_item'         => __( 'Editar Categoria' ),
					'update_item'       => __( 'Atualizar Categoria' ),
					'add_new_item'      => __( 'Nova Categoria' ),
					'new_item_name'     => __( 'Nova Categoria' ),
					'menu_name'         => __( 'Categorias' ),
				),

				'show_ui'           => true,
				'show_admin_column' => true,
				'query_var'         => true,
				'rewrite'           => array('slug' => 'categorias'),
				'show_in_rest'      => true,
				'rest_base'         => 'blog_category'

			),

			'blog_tag' => array(

				'hierarchical'      => false,
				'labels'            => array(
					'name'              => _( 'Tags'),
					'singular_name'     => _( 'Tags'),
					'search_items'      => __( 'Procurar' ),
					'all_items'         => __( 'Tags' ),
					'parent_item'       => __( 'Tag Pai' ),
					'parent_item_colon' => __( 'Tag Pai:' ),
					'edit_item'         => __( 'Editar Tag' ),
					'update_item'       => __( 'Atualizar Tag' ),
					'add_new_item'      => __( 'Nova Tag' ),
					'new_item_name'     => __( 'Nova Tag' ),
					'menu_name'         => __( 'Tags' ),
				),

				'show_ui'           => true,
				'show_admin_column' => true,
				'query_var'         => true,
				'rewrite'           => array('slug' => 'tags'),
				'show_in_rest'      => true,
				'rest_base'         => 'blog_tag'

			),


		),

	),
	// Post types barbeiros
	'barbeiros' => array(

		'labels' => array(
			'name'               => _( 'Barbeiros'),
			'singular_name'      => _( 'Barbeiros'),
			'menu_name'          => _( 'Barbeiros'),
			'name_admin_bar'     => _( 'Barbeiros'),
			'add_new'            => _( 'Novo Barbeiro(a)'),
			'add_new_item'       => __( 'Novo Barbeiro(a)'),
			'new_item'           => __( 'Novo Barbeiro(a)'),
			'edit_item'          => __( 'Editar Barbeiro(a)'),
			'view_item'          => __( 'Ver Barbeiro'),
			'all_items'          => __( 'Ver barbeiros'),
			'search_items'       => __( 'Procurar'),
			'parent_item_colon'  => __( 'barbeiro-pai:'),
			'not_found'          => __( 'Nenhum Barber encontrado.'),
			'not_found_in_trash' => __( 'Nenhum Barber encontrado na lixeira.')
		),
		'menu_icon' => 'dashicons-format-quote',
		'description' => __('barber Posts'),
		'rest_base' =>'custom/barber',
		'has_archive' => 'biblioteca/barber',
		'rewrite'     => [
			'slug' => 'barber',
		],
		'supports'    => array('title', 'thumbnail', 'excerpt', 'editor'),
		'taxonomy'    => array(

			'barber_category' => array(

				'hierarchical'      => true,
				'labels'            => array(
					'name'              => _( 'Especialidades'),
					'singular_name'     => _( 'Especialidades'),
					'search_items'      => __( 'Procurar' ),
					'all_items'         => __( 'Todas as especialidades' ),
					'parent_item'       => __( 'Especialidade Pai' ),
					'parent_item_colon' => __( 'Especialidade Pai:' ),
					'edit_item'         => __( 'Editar Especialidade' ),
					'update_item'       => __( 'Atualizar Especialidade' ),
					'add_new_item'      => __( 'Nova Especialidade' ),
					'new_item_name'     => __( 'Nova Especialidade' ),
					'menu_name'         => __( 'Especialidades' ),
				),

				'show_ui'           => true,
				'show_admin_column' => true,
				'query_var'         => true,
				'rewrite'           => array('slug' => 'especialidade'),
				'show_in_rest'      => true,
				'rest_base'         => 'barber_category'

			),

			'barber_tag' => array(

				'hierarchical'      => false,
				'labels'            => array(
					'name'              => _( 'Tags'),
					'singular_name'     => _( 'Tags'),
					'search_items'      => __( 'Procurar' ),
					'all_items'         => __( 'Tags' ),
					'parent_item'       => __( 'Tag Pai' ),
					'parent_item_colon' => __( 'Tag Pai:' ),
					'edit_item'         => __( 'Editar Tag' ),
					'update_item'       => __( 'Atualizar Tag' ),
					'add_new_item'      => __( 'Nova Tag' ),
					'new_item_name'     => __( 'Nova Tag' ),
					'menu_name'         => __( 'Tags' ),
				),

				'show_ui'           => true,
				'show_admin_column' => true,
				'query_var'         => true,
				'rewrite'           => array('slug' => 'tags'),
				'show_in_rest'      => true,
				'rest_base'         => 'barber_tag'

			),


		),

	),
	// Post types Produtos
	'prods' => array(

    'labels' => array(
        'name'               => _( 'Produtos'),
        'singular_name'      => _( 'Produtos'),
        'menu_name'          => _( 'Produtos'),
        'name_admin_bar'     => _( 'Produto'),
        'add_new'            => _( 'Novo Produto'),
        'add_new_item'       => __( 'Novo Produto'),
        'new_item'           => __( 'Novo Produto'),
        'edit_item'          => __( 'Editar Produto'),
        'view_item'          => __( 'Ver Produto'),
        'all_items'          => __( 'Ver Produtos'),
        'search_items'       => __( 'Procurar'),
        'parent_item_colon'  => __( 'produto-pai:'),
        'not_found'          => __( 'Nenhum Produto encontrado.'),
        'not_found_in_trash' => __( 'Nenhum Produto encontrado na lixeira.')
    ),
    'menu_icon' => 'dashicons-format-quote',
    'description' => __('Produto Posts'),
    'rest_base' =>'custom/produto',
    'has_archive' => 'biblioteca/produto',
    'rewrite'     => [
        'slug' => 'produto',
    ],
    'supports'    => array('title', 'thumbnail', 'excerpt', 'editor'),
    'taxonomy'    => array(

        'produto_category' => array(

            'hierarchical'      => true,
            'labels'            => array(
                'name'              => _( 'Categorias'),
                'singular_name'     => _( 'Categorias'),
                'search_items'      => __( 'Procurar' ),
                'all_items'         => __( 'Categorias' ),
                'parent_item'       => __( 'Categoria Pai' ),
                'parent_item_colon' => __( 'Categoria Pai:' ),
                'edit_item'         => __( 'Editar Categoria' ),
                'update_item'       => __( 'Atualizar' ),
                'add_new_item'      => __( 'Adicionar Categoria' ),
                'new_item_name'     => __( 'Nova Categoria' ),
                'menu_name'         => __( 'Categorias' ),
            ),

            'show_ui'           => true,
            'show_admin_column' => true,
            'query_var'         => true,
            'rewrite'           => array('slug' => 'categorias'),
            'show_in_rest'      => true,
            'rest_base'         => 'produto_category'

        ),

        'produto_tag' => array(

            'hierarchical'      => false,
            'labels'            => array(
                'name'              => _( 'Tags'),
                'singular_name'     => _( 'Tags'),
                'search_items'      => __( 'Procurar' ),
                'all_items'         => __( 'Tags' ),
                'parent_item'       => __( 'Tag Pai' ),
                'parent_item_colon' => __( 'Tag Pai:' ),
                'edit_item'         => __( 'Editar Tag' ),
                'update_item'       => __( 'Atualizar Tag' ),
                'add_new_item'      => __( 'Nova Tag' ),
                'new_item_name'     => __( 'Nova Tag' ),
                'menu_name'         => __( 'Tags' ),
            ),

            'show_ui'           => true,
            'show_admin_column' => true,
            'query_var'         => true,
            'rewrite'           => array('slug' => 'tags'),
            'show_in_rest'      => true,
            'rest_base'         => 'produto_tag'

        ),


    ),

),

);

foreach ($posttypes as $posttype => $options) {

	$args = array_merge($def_posttype_args, $options);

	if(isset($args['taxonomy'])){

		$taxonomies = $args['taxonomy'];

		foreach($taxonomies as $taxonomy => $taxonomy_args){

			$taxonomy_args = array_merge($def_taxonomy_args, $taxonomy_args);

			register_taxonomy($taxonomy, array($posttype), $taxonomy_args);

		}

		unset($args['taxonomy']);

	}

	register_post_type($posttype, $args);
}

}

add_action( 'init', 'register_post_types', 0 );








function facelook_metaBarber( $meta_boxes ) {
	$prefix = 'facelook-';

	$meta_boxes[] = array(
		'id' => 'geral',
		'title' => esc_html__( 'Informações adicionais', 'facelook' ),
		'post_types' => array('barbeiros' ),
		'context' => 'advanced',
		'priority' => 'default',
		'autosave' => 'true',
		'fields' => array(
			array(
				'id' => $prefix . 'face',
				'type' => 'url',
				'name' => esc_html__( 'Link Facebook', 'facelook' ),
				'desc' => esc_html__( 'Link do facebook', 'facelook' ),
				'placeholder' => esc_html__( 'Insira o link do facebook', 'facelook' ),
			),
			array(
				'id' => $prefix . 'tw',
				'type' => 'url',
				'name' => esc_html__( 'Link twitter', 'facelook' ),
				'desc' => esc_html__( 'Link do twitter', 'facelook' ),
				'placeholder' => esc_html__( 'Insira o link do twitter', 'facelook' ),
			),
			array(
				'id' => $prefix . 'insta',
				'type' => 'url',
				'name' => esc_html__( 'Link Instagram', 'facelook' ),
				'desc' => esc_html__( 'Link do Instagram', 'facelook' ),
				'placeholder' => esc_html__( 'Insira o link do Instagram', 'facelook' ),
			),
			array(
				'id' => $prefix . 'loca',
				'type' => 'url',
				'name' => esc_html__( 'Link da Localização', 'facelook' ),
				'desc' => esc_html__( 'Insira o link da localização do estabelecimento pegada no maps', 'facelook' ),
				'placeholder' => esc_html__( 'Link da Localização do estabelecimento', 'facelook' ),
			),
			array(
					'id' => $prefix . 'tel',
					'type' => 'text',
					'name' => esc_html__( 'Telefone', 'facelook' ),
					'desc' => esc_html__( 'Telefone ou Celular', 'facelook' ),
					'placeholder' => esc_html__( 'Insira o Telefone ou Celular', 'facelook' ),
				),
				array(
				'id' => $prefix . 'mail',
				'name' => esc_html__( 'E-mail', 'facelook' ),
				'type' => 'email',
				'desc' => esc_html__( 'E-mail do individuo', 'facelook' ),
				'placeholder' => esc_html__( 'Insira o E-mail', 'facelook' ),
				),
				array(
					'id' => $prefix . 'iframe',
					'type' => 'text',
					'name' => esc_html__( 'Localização', 'facelook' ),
					'desc' => esc_html__( 'Localização do individuo em iframe', 'facelook' ),
					'placeholder' => esc_html__( 'Insira o iframe da localizacao', 'facelook' ),
				),
				array(
				'id' => $prefix . 'html',
				'type' => 'map',

				),
		),
	);

	return $meta_boxes;
}
add_filter( 'rwmb_meta_boxes', 'facelook_metaBarber' );

function facelook_metaProd( $meta_boxes ) {
	$prefix = 'facelook-';

	$meta_boxes[] = array(
		'id' => 'geral',
		'title' => esc_html__( 'Informações adicionais', 'facelook' ),
		'post_types' => array( 'prods' ),
		'context' => 'advanced',
		'priority' => 'default',
		'autosave' => 'true',
		'fields' => array(
				array(
				'id' => $prefix . 'use',
				'type' => 'textarea',
				'name' => esc_html__( 'Como usar', 'facelook' ),
				'desc' => esc_html__( 'Passo a passo de como utilizar', 'facelook' ),
				'placeholder' => esc_html__( 'Insira o passo a passo', 'facelook' ),
				'rows' => 20,
				),

			),
		);

	return $meta_boxes;
}
add_filter( 'rwmb_meta_boxes', 'facelook_metaProd' );