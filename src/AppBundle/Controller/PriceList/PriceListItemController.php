<?php

namespace AppBundle\Controller\PriceList;

use AppBundle\Entity\PriceListItem;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;

/**
 * Pricelistitem controller.
 *
 * @Route("/pricelist")
 */
class PriceListItemController extends Controller
{
    /**
     * Lists all priceListItem entities.
     *
     * @Route("/", name="pricelist_pricelistitem_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $priceListItems = $em->getRepository('AppBundle:PriceList\PriceListItem')->findAll();

        return $this->render('pricelist/pricelistitem/index.html.twig', array(
            'priceListItems' => $priceListItems,
        ));
    }

    /**
     * Creates a new priceListItem entity.
     *
     * @Route("/new", name="pricelist_pricelistitem_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $priceListItem = new Pricelistitem();
        $form = $this->createForm('AppBundle\Form\PriceList\PriceListItemType', $priceListItem);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($priceListItem);
            $em->flush();

            return $this->redirectToRoute('pricelist_pricelistitem_show', array('id' => $priceListItem->getId()));
        }

        return $this->render('pricelist/pricelistitem/new.html.twig', array(
            'priceListItem' => $priceListItem,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a priceListItem entity.
     *
     * @Route("/{id}", name="pricelist_pricelistitem_show")
     * @Method("GET")
     */
    public function showAction(PriceListItem $priceListItem)
    {
        $deleteForm = $this->createDeleteForm($priceListItem);

        return $this->render('pricelist/pricelistitem/show.html.twig', array(
            'priceListItem' => $priceListItem,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing priceListItem entity.
     *
     * @Route("/{id}/edit", name="pricelist_pricelistitem_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, PriceListItem $priceListItem)
    {
        $deleteForm = $this->createDeleteForm($priceListItem);
        $editForm = $this->createForm('AppBundle\Form\PriceList\PriceListItemType', $priceListItem);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('pricelist_pricelistitem_edit', array('id' => $priceListItem->getId()));
        }

        return $this->render('pricelist/pricelistitem/edit.html.twig', array(
            'priceListItem' => $priceListItem,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a priceListItem entity.
     *
     * @Route("/{id}", name="pricelist_pricelistitem_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, PriceListItem $priceListItem)
    {
        $form = $this->createDeleteForm($priceListItem);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($priceListItem);
            $em->flush();
        }

        return $this->redirectToRoute('pricelist_pricelistitem_index');
    }

    /**
     * Creates a form to delete a priceListItem entity.
     *
     * @param PriceListItem $priceListItem The priceListItem entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(PriceListItem $priceListItem)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('pricelist_pricelistitem_delete', array('id' => $priceListItem->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
