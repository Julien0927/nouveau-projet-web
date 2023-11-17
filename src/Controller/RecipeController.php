<?php

namespace App\Controller;

use App\Entity\Recipe;
use App\Entity\User;
use App\Entity\Score;
use App\Repository\RecipeRepository;
use App\Repository\ScoreRepository;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\ORM\Tools\Console\EntityManagerProvider;
use Symfony\Component\Security\Core\Security;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;

class RecipeController extends AbstractController
{
    #[Route('/recipe', name: 'app_recipe')]
    public function index(RecipeRepository $recipeRepository, Security $security, ScoreRepository $scoreRepository): Response
    {

        //Récupérer l'utilisateur connecté
        $user = $this->getUser();

        // Vérifiez si l'utilisateur est connecté et a un rôle admin
        if($security->isGranted('ROLE_ADMIN')) {
            // Récupérer toutes les recettes
            $recipes = $recipeRepository->findBy([], ['id' => 'DESC']);
            return $this->render('recipe/index.html.twig', [
                'recipes' => $recipes,
            ]);
        }
        // Vérifiez si l'utilisateur est connecté et a un régime défini        
        if ($security->isGranted('ROLE_USER') && $user->getDietType()) {
            
            // Récupérez les recettes en fonction du régime du patient
           $recipes = $recipeRepository->findByDietType($user->getDietType(), ['id' => 'DESC']);

            // Si oui, récupérer toutes les recettes
            return $this->render('recipe/index.html.twig', [
                'recipes' => $recipes,
            ]);

        // Vérifiez si l'utilisateur est connecté et n'a pas de régime défini
        if ($security->isGranted('ROLE_USER') && !$user->getDietType() == null ) {
            // Récupérer toutes les recettes
            $recipes = $recipeRepository->findBy([], ['id' => 'DESC']);
            return $this->render('recipe/index.html.twig', [
                'recipes' => $recipes,
            ]);
        }
        
        
        } else {
            // Si non, récupérer les recettes non-accessibles uniquement
            $recipes = $recipeRepository->findBy(['isAccessible' => false], ['id' => 'DESC']);}
            
            return $this->render('recipe/index.html.twig', [
            'recipes' => $recipes,
        ]);
    }
}   

