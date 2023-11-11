<?php

namespace App\Controller;

use App\Entity\Recipe;
use App\Entity\User;
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
        //Récupérer l'utilisateur connecté
        $user = $this->getUser();
        
        // Vérifiez si l'utilisateur est connecté et a un régime défini        
        if ($security->isGranted('ROLE_USER') && $user->getDietType()) {
            
            // Récupérez les recettes en fonction du régime du patient
           $recipes = $recipeRepository->findByDietType($user->getDietType(), ['id' => 'DESC']);

            // Si oui, récupérer toutes les recettes
            //$recipes = $recipeRepository->findBy([], ['id' => 'DESC']);
            return $this->render('recipe/index.html.twig', [
                'recipes' => $recipes,
            ]);
        } else {
            // Si non, récupérer les recettes non-accessibles uniquement
            $recipes = $recipeRepository->findBy(['isAccessible' => false], ['id' => 'DESC']);}

            return $this->render('recipe/index.html.twig', [
            'recipes' => $recipes,
            //'recipes' => $recipeRepository->findBy([], ['id' => 'DESC']),
        ]);
    }
}
