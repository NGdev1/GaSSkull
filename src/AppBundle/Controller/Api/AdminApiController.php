<?php

namespace AppBundle\Controller\Api;

use AppBundle\Entity\CarType;
use AppBundle\Entity\Detail;
use AppBundle\Entity\PriceListItem;
use AppBundle\Entity\Section;
use AppBundle\Entity\Work;
use Exception;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\ParamConverter;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

/**
 * @Route("/admin/")
 * @Security("has_role('ROLE_ADMIN')")
 */
class AdminApiController extends Controller
{
    /**
     * @Route("api/pricelist/", name="price_list_edit_api")
     * @Method("DELETE")
     */
    public function priceListDeleteAction(Request $request)
    {
        $request->setRequestFormat('json');

        $id = $request->get('id');

        $entityManager = $this->getDoctrine()->getManager();
        $priceListItem = $entityManager->getRepository(PriceListItem::class)->find($id);
        $entityManager->remove($priceListItem);
        $entityManager->flush();

        $result = array(
            'status' => 'ok',//ok | error
        );

        return new Response(json_encode($result));
    }

    /**
     * @Route("api/pricelist/", name="price_list_edit_api")
     * @Method("POST")
     */
    public function priceListEditAction(Request $request)
    {
        $request->setRequestFormat('json');

        $id = $request->get('id');
        $price = $request->get('price');
        $workId = $request->get('workId');
        $detailId = $request->get('detailId');
        $carTypeId = $request->get('carTypeId');
        $sectionId = $request->get('sectionId');

        $entityManager = $this->getDoctrine()->getManager();
        $priceListItem = $entityManager->getRepository(PriceListItem::class)->find($id);
        $priceListItem->setPrice($price);
        $priceListItem->setWork($entityManager->getRepository(Work::class)->find($workId));
        $priceListItem->setDetail($entityManager->getRepository(Detail::class)->find($detailId));
        $priceListItem->setCarType($entityManager->getRepository(CarType::class)->find($carTypeId));
        $priceListItem->setSection($entityManager->getRepository(Section::class)->find($sectionId));

        $entityManager->flush();

        $result = array(
            'status' => 'ok',//ok | error
        );

        return new Response(json_encode($result));
    }
}
