<?php

namespace App\Controller;

use App\Entity\Score;
use App\Entity\Recipe;
use App\Repository\ScoreRepository;
use App\Repository\RecipeRepository;
use App\Form\ScoreFormType;
use Symfony\Component\Form\FormTypeInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Routing\Annotation\Route;

class ScoreController extends AbstractController
{
    #[Route('/note/{id}', name: 'app_recipe_note')]
    public function note(Request $request, EntityManagerInterface $entityManager, $id): Response
    {
        $recipe = $entityManager->getRepository(Recipe::class)->find($id);

        if(!$recipe) {
            throw $this->createNotFoundException(
                'Recette non trouvée'
            );
        }

        $note = new Score();
        
        $form = $this->createForm(ScoreFormType::class, $note);
        $form->handleRequest($request);
        
        if ($form->isSubmitted() && $form->isValid()) {
            
            $note->addRecipe($recipe);

            $entityManager->persist($note);
            $entityManager->flush();

            if ($request->isXmlHttpRequest()) {
                return new JsonResponse([
                    'code' => 200,
                    'message' => 'Votre note a bien été enregistrée'
                ], 200);
            }

            return $this->redirectToRoute('app_recipe');
        }
        
        return $this->render('score/score.html.twig', [
            'scoreForm' => $form->createView(),
            'recipe' => $recipe
        ]);
    }
}