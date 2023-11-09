<?php

namespace App\Controller;

use App\Entity\Recipe;
use Symfony\Component\Security\Core\Security;
use App\Repository\RecipeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class RecipeController extends AbstractController
{
    #[Route('/recipe', name: 'app_recipe')]
    public function index(RecipeRepository $recipeRepository, Security $security): Response
    {
        // Vérifie si l'utilisateur a le rôle "patient"
        if ($security->isGranted(' ')) {

            // Si oui, récupérer toutes les recettes
            $recipes = $recipeRepository->findBy([], ['id' => 'DESC']);
        } else {
            // Si non, récupérer les recettes non-accessibles uniquement
            $recipes = $recipeRepository->findBy(['isAccessible' => false], ['id' => 'DESC']);}

            return $this->render('recipe/index.html.twig', [
            'recipes' => $recipes,
            //'recipes' => $recipeRepository->findBy([], ['id' => 'DESC']),
        ]);
    }
}
