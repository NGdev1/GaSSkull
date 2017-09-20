<?php

namespace AppBundle\Controller;

use AppBundle\Entity\CarType;
use AppBundle\Entity\Detail;
use AppBundle\Entity\PriceListItem;
use AppBundle\Entity\Section;
use AppBundle\Entity\Work;
use AppBundle\Entity\User;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Symfony\Component\HttpFoundation\Request;

/**
 * @Route("/admin/")
 * @Security("has_role('ROLE_ADMIN')")
 */
class AdminController extends Controller
{
    /**
     * @Route("/")
     * @Method("GET")
     */
    public function indexAction()
    {
        return $this->render('admin/index.html.twig');
    }

    /**
     * @Route("boards/users/")
     * @Method("GET")
     */
    public function usersAction(Request $request)
    {
        if ($request->isXmlHttpRequest()) {

            $users = $this->getDoctrine()->getRepository(User::class)->findAll();

            return $this->render('admin/boards/users.html.twig', ['users' => $users]);
        } else {
            return $this->indexAction();
        }
    }

    /**
     * @Route("boards/uslugi/")
     * @Method("GET")
     */
    public function uslugiAction()
    {
        return $this->indexAction();
    }

    /**
     * @Route("boards/uslugi/pricelist/")
     * @Method("GET")
     */
    public function priceListAction(Request $request)
    {
        if ($request->isXmlHttpRequest()) {
            $priceList = $this->getDoctrine()->getRepository(PriceListItem::class)->findAll();
            $sections = $this->getDoctrine()->getRepository(Section::class)->findAll();
            $works = $this->getDoctrine()->getRepository(Work::class)->findAll();
            $carTypes = $this->getDoctrine()->getRepository(CarType::class)->findAll();
            $details = $this->getDoctrine()->getRepository(Detail::class)->findAll();

            return $this->render('admin/boards/uslugi/pricelist.html.twig',
                ['priceList' => $priceList,
                'sections' => $sections,
                'works' => $works,
                'carTypes' => $carTypes,
                'details' => $details]
            );
        } else {
            return $this->indexAction();
        }
    }
}
