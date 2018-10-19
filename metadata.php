<?php
$sMetadataVersion = '2.0';
$aModule = array(
    'id'          => 'zwb_migrations',
    'title'       => 'Zunderweb Backend Database Migrations',
    'description' =>  array(
        'de'=>'Erm&ouml;glicht die Ausf&uuml;hrung der Datenbank Migration ohne Kommandozeile. Sie finden diese Option unter Service/Migrations.',
        'en'=>'Makes it possible to execute database migrations without commandline. The option can be found in Service/Migrations.',
    ),
    'version'     => '0.0.1',
    'url'         => 'http://zunderweb.de',
    'email'       => 'info@zunderweb.de',
    'author'      => 'Zunderweb',
    'extend'      => array(
    ),
    'controllers'       => array(
        'zwb_migrations' => \zunderweb\zwb_migrations\controllers\admin\zwb_migrations::class,
        'zwb_migrations_list' => \zunderweb\zwb_migrations\controllers\admin\zwb_migrations_list::class,
        'zwb_migrations_main' => \zunderweb\zwb_migrations\controllers\admin\zwb_migrations_main::class,
    ),
    'blocks' => array(
    ),
    'templates' => array(
        'zwb_migrations.tpl' => 'zunderweb/zwb_migrations/views/admin/tpl/zwb_migrations.tpl',
        'zwb_migrations_list.tpl' => 'zunderweb/zwb_migrations/views/admin/tpl/zwb_migrations_list.tpl',
        'zwb_migrations_main.tpl' => 'zunderweb/zwb_migrations/views/admin/tpl/zwb_migrations_main.tpl',
    ),
    'settings' => array(
    ),
    'events'       => array(
    ),
);
