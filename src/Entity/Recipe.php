<?php

namespace App\Entity;

use App\Repository\RecipeRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: RecipeRepository::class)]
class Recipe
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $title = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $description = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $ingredients = null;

    #[ORM\Column]
    private ?int $preparationTime = null;

    #[ORM\Column]
    private ?int $cookingTime = null;

    #[ORM\Column]
    private ?int $timeOfRest = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $steps = null;

    #[ORM\Column(length: 255)]
    private ?string $picture = null;

    #[ORM\Column]
    private ?bool $isAccessible = null;

    #[ORM\ManyToOne(inversedBy: 'recipes')]
    private ?Score $note = null;

    #[ORM\ManyToOne(inversedBy: 'recipes')]
    private ?AllergenType $allergen = null;

    #[ORM\ManyToOne(inversedBy: 'recipes')]
    private ?DietType $diet = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): static
    {
        $this->title = $title;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): static
    {
        $this->description = $description;

        return $this;
    }

    public function getIngredients(): ?string
    {
        return $this->ingredients;
    }

    public function setIngredients(string $ingredients): static
    {
        $this->ingredients = $ingredients;

        return $this;
    }

    public function getPreparationTime(): ?int
    {
        return $this->preparationTime;
    }

    public function setPreparationTime(int $preparationTime): static
    {
        $this->preparationTime = $preparationTime;

        return $this;
    }

    public function getCookingTime(): ?int
    {
        return $this->cookingTime;
    }

    public function setCookingTime(int $cookingTime): static
    {
        $this->cookingTime = $cookingTime;

        return $this;
    }

    public function getTimeOfRest(): ?int
    {
        return $this->timeOfRest;
    }

    public function setTimeOfRest(int $timeOfRest): static
    {
        $this->timeOfRest = $timeOfRest;

        return $this;
    }

    public function getSteps(): ?string
    {
        return $this->steps;
    }

    public function setSteps(string $steps): static
    {
        $this->steps = $steps;

        return $this;
    }

    public function getPicture(): ?string
    {
        return $this->picture;
    }

    public function setPicture(string $picture): static
    {
        $this->picture = $picture;

        return $this;
    }

    public function isIsAccessible(): ?bool
    {
        return $this->isAccessible;
    }

    public function setIsAccessible(bool $isAccessible): static
    {
        $this->isAccessible = $isAccessible;

        return $this;
    }

    public function getNote(): ?Score
    {
        return $this->note;
    }

    public function setNote(?Score $note): static
    {
        $this->note = $note;

        return $this;
    }

    public function getAllergen(): ?AllergenType
    {
        return $this->allergen;
    }

    public function setAllergen(?AllergenType $allergen): static
    {
        $this->allergen = $allergen;

        return $this;
    }

    public function getDiet(): ?DietType
    {
        return $this->diet;
    }

    public function setDiet(?DietType $diet): static
    {
        $this->diet = $diet;

        return $this;
    }


}
