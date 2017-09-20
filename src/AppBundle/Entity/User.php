<?php
/**
 * Created by PhpStorm.
 * User: apple
 * Date: 08.02.17
 * Time: 8:59
 */
namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Security\Core\User\UserInterface;

/**
 * @ORM\Table(name="Users")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\UserRepository")
 */
class User implements UserInterface {

    /**
     * @ORM\Column(type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;
    /**
     * @ORM\Column(type="string", length=100)
     */
    private $pin;

    /**
     * @var CarType
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\CarType")
     */
    private $carType;
    /**
     * @ORM\Column(type="string", length=100)
     */
    private $devceId;
    /**
     * @ORM\Column(type="string", length=100)
     */
    private $devcePlatform;
    /**
     * @ORM\Column(type="string", length=100)
     */
    private $devceName;
    /**
     * @ORM\Column(type="string", length=100)
     */
    private $phone;
    /**
     * @ORM\Column(type="string", length=100)
     */
    private $image;
    /**
     * @ORM\Column(type="string", length=100)
     */
    private $carNumber;
    /**
     * @ORM\Column(type="string", length=100)
     */
    private $userName;
    /**
     * @var \DateTime
     *
     * @ORM\Column(type="datetime")
     */
    private $registrationDate;
    /**
     * @var \DateTime
     *
     * @ORM\Column(type="datetime")
     */
    private $lastActivity;

    /**
     * @var array
     *
     * @ORM\Column(type="json_array")
     */
    private $roles = [];

    /**
     * Returns the roles or permissions granted to the user for security.
     */
    public function getRoles()
    {
        $roles = $this->roles;

        // guarantees that a user always has at least one role for security
        if (empty($roles)) {
            $roles[] = 'ROLE_USER';
        }

        return array_unique($roles);
    }

    public function setRoles(array $roles)
    {
        $this->roles = $roles;
    }

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * @return mixed
     */
    public function getPin()
    {
        return $this->pin;
    }

    /**
     * @param mixed $pin
     */
    public function setPin($pin)
    {
        $this->pin = $pin;
    }

    /**
     * Set carType
     *
     * @param CarType $carType
     *
     * @return User
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
     * @return mixed
     */
    public function getDevceId()
    {
        return $this->devceId;
    }

    /**
     * @param mixed $devceId
     */
    public function setDevceId($devceId)
    {
        $this->devceId = $devceId;
    }

    /**
     * @return mixed
     */
    public function getDevcePlatform()
    {
        return $this->devcePlatform;
    }

    /**
     * @param mixed $devcePlatform
     */
    public function setDevcePlatform($devcePlatform)
    {
        $this->devcePlatform = $devcePlatform;
    }

    /**
     * @return mixed
     */
    public function getDevceName()
    {
        return $this->devceName;
    }

    /**
     * @param mixed $devceName
     */
    public function setDevceName($devceName)
    {
        $this->devceName = $devceName;
    }

    /**
     * @return mixed
     */
    public function getPhone()
    {
        return $this->phone;
    }

    /**
     * @param mixed $phone
     */
    public function setPhone($phone)
    {
        $this->phone = $phone;
    }

    /**
     * @return mixed
     */
    public function getImage()
    {
        return $this->image;
    }

    /**
     * @param mixed $image
     */
    public function setImage($image)
    {
        $this->image = $image;
    }

    /**
     * @return mixed
     */
    public function getCarNumber()
    {
        return $this->carNumber;
    }

    /**
     * @param mixed $carNumber
     */
    public function setCarNumber($carNumber)
    {
        $this->carNumber = $carNumber;
    }

    /**
     * @return mixed
     */
    public function getUsername()
    {
        return $this->userName;
    }

    /**
     * @param mixed $userName
     */
    public function setUsername($userName)
    {
        $this->userName = $userName;
    }

    /**
     * @return \DateTime
     */
    public function getRegistrationDate()
    {
        return $this->registrationDate;
    }

    /**
     * @param \DateTime $registrationDate
     */
    public function setRegistrationDate($registrationDate)
    {
        $this->registrationDate = $registrationDate;
    }

    /**
     * @return \DateTime
     */
    public function getLastActivity()
    {
        return $this->lastActivity;
    }

    /**
     * @param \DateTime $lastActivity
     */
    public function setLastActivity($lastActivity)
    {
        $this->lastActivity = $lastActivity;
    }

    /**
     * Returns the password used to authenticate the user.
     *
     * This should be the encoded password. On authentication, a plain-text
     * password will be salted, encoded, and then compared to this value.
     *
     * @return string The password
     */
    public function getPassword()
    {
        return $this->getPin();
    }

    /**
     * Returns the salt that was originally used to encode the password.
     *
     * {@inheritdoc}
     */
    public function getSalt() { }

    /**
     * Removes sensitive data from the user.
     *
     * {@inheritdoc}
     */
    public function eraseCredentials() { }
}