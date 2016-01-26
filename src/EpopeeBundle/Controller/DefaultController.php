<?php

namespace EpopeeBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('EpopeeBundle:Default:index.html.twig');
    }

    public function addAction(Request $request)
    {
        return $this->render('EpopeeBundle:Book:k'.$book.'.html.twig', 
		array('book'=>$book));
    }
}
