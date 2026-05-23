<?php

namespace App\Controller;

use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

final class SearchController extends AbstractController
{
    #[Route('/search', name: 'book_search')]
    public function search(Request $request, EntityManagerInterface $em): Response
    {
        $query = $request->query->get('q');

        $books = $em->getRepository(Book::class)->createQueryBuilder('b')
            ->where('b.title LIKE :q')
            ->orWhere('b.author LIKE :q')
            ->setParameter('q', '%' . $query . '%')
            ->getQuery()
            ->getResult();

        return $this->render('book/search.html.twig', [
            'books' => $books,
            'query' => $query
        ]);
    }
}
