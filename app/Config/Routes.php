<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (is_file(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
// The Auto Routing (Legacy) is very dangerous. It is easy to create vulnerable apps
// where controller filters or CSRF protection are bypassed.
// If you don't want to define all routes, please use the Auto Routing (Improved).
// Set `$autoRoutesImproved` to true in `app/Config/Feature.php` and set the following to true.
//$routes->setAutoRoute(false);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.



// $routes->get('/', 'Home::login',);
$routes->get('/status', 'Home::status');
$routes->get('/index.php/status', 'Home::status');
$routes->post('/status', 'Home::status');
$routes->post('/index.php/status', 'Home::status');
$routes->get('/upload', 'Home::upload', ['filter' => 'role:user']);
$routes->get('/upload/index', 'Home::upload', ['filter' => 'role:user']);
$routes->get('/Home/edit/(:any)', 'Home::edit/$1');
$routes->get('/Home/delete/(:any)', 'Home::delete/$1');
$routes->post('/Home/update/(:any)', 'Home::update/$1');
$routes->post('/Home/save', 'Home::save');
$routes->get('/Home/download/(:any)', 'Home::download/$1');




$routes->get('/Dosen/acc/(:any)', 'Dosen::acc/$1');
$routes->get('/Dosen/decline/(:any)', 'Dosen::decline/$1');
$routes->post('/Dosen/decline/(:any)', 'Dosen::decline/$1');
$routes->get('/dosen', 'Dosen::confirm');
$routes->get('/pengajuan', 'Dosen::pengajuan',);
$routes->post('/pengajuan', 'Dosen::pengajuan', ['filter' => 'role:dosen']);
$routes->get('/pengajuan/index', 'Dosen::pengajuan', ['filter' => 'role:dosen']);



/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (is_file(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
