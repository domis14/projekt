<?php

namespace WypozyczalniaBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;

class DefaultController extends Controller
{
    public function indexAction()
    {
       // return $this->render('WypozyczalniaBundle:Default:index.html.twig');
	   return new Response('<html><body>Hello world!</body></html>');
    }
}
