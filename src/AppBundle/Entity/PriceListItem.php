<?php

namespace AppBundle\Entity;

use AppBundle\Entity\CarType;
use Doctrine\ORM\Mapping as ORM;

/**
 * PriceListItem
 *
 * @ORM\Table(name="price_list_item")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\PriceList\PriceListItemRepository")
 */
class PriceListItem
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var int
     *
     * @ORM\Column(name="price", type="integer")
     */
    private $price;

    /**
     * @var CarType
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\CarType")
     */
    private $carType;

    /**
     * @var Section
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Section")
     */
    private $section;

    /**
     * @var Work
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Work")
     */
    private $work;

    /**
     * @var Detail
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Detail")
     */
    private $detail;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set price
     *
     * @param integer $price
     *
     * @return PriceListItem
     */
    public function setPrice($price)
    {
        $this->price = $price;

        return $this;
    }

    /**
     * Get price
     *
     * @return int
     */
    public function getPrice()
    {
        return $this->price;
    }

    /**
     * Set carType
     *
     * @param CarType $carType
     *
     * @return PriceListItem
     */
    public function setCarType($carType)
    {
        $this->carType = $carType;

        return $this;
    }

    /**
     * Get carType
     *
     * @return CarType
     */
    public function getCarType()
    {
        return $this->carType;
    }

    /**
     * Set section
     *
     * @param Section $section
     *
     * @return PriceListItem
     */
    public function setSection($section)
    {
        $this->section = $section;

        return $this;
    }

    /**
     * Get section
     *
     * @return Section
     */
    public function getSection()
    {
        return $this->section;
    }

    /**
     * Set work
     *
     * @param Work $work
     *
     * @return PriceListItem
     */
    public function setWork($work)
    {
        $this->work = $work;

        return $this;
    }

    /**
     * Get work
     *
     * @return Work
     */
    public function getWork()
    {
        return $this->work;
    }

    /**
     * Set detail
     *
     * @param Detail $detail
     *
     * @return PriceListItem
     */
    public function setDetail($detail)
    {
        $this->detail = $detail;

        return $this;
    }

    /**
     * Get detail
     *
     * @return Detail
     */
    public function getDetail()
    {
        return $this->detail;
    }
}

