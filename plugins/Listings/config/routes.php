<?php
use Cake\Routing\RouteBuilder;
use Cake\Routing\Router;
use Cake\Routing\Route\DashedRoute;


Router::scope('/', function (RouteBuilder $routes) {
	$routes->prefix('admin', function ($routes) {
	    $routes->plugin(
	        'Listings', ['path' => '/listings'], function (RouteBuilder $routes) {
	        $routes->fallbacks(DashedRoute::class);
	    }
	    ); 
	});
});

