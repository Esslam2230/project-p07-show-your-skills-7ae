<?php

namespace App\Controller;

use App\Entity\BookBorrow;
use App\Entity\User;
use App\Repository\BookBorrowRepository;
use App\Repository\BookRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Bundle\SecurityBundle\Security;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

final class UserController extends AbstractController
{
    #[Route('/user', name: 'app_user')]
    public function index (BookBorrowRepository $bookBorrowRepository): Response
    {
        $user = $this->getUser();
        if (!$user) {
            return $this->redirectToRoute('app_login');
        }
        $borrowedBooks = $bookBorrowRepository->findBy(
            ['user' => $user],
            ['loanDate' => 'DESC']
        );


        return $this->render('user/index.html.twig', [
            'user' => $user,
            'borrowedBooks' => $borrowedBooks,
            ]);
    }
    #[Route('/borrow/{id}', name: 'app_borrow_book')]
    public function borrowBook(
        int $id,
        EntityManagerInterface $em,
        BookRepository $bookRepository,
        Security $security
    ): Response {
        $user = $security->getUser();

        if (!$user instanceof User) {
            throw $this->createAccessDeniedException();
        }

        $book = $bookRepository->find($id);

        if (!$book) {
            throw $this->createNotFoundException();
        }

        $borrow = new BookBorrow();
        $borrow->setUser($user);
        $borrow->setLoanDate(new \DateTime());
        $borrow->setBookStock($book);

        $em->persist($borrow);
        $em->flush();

        return $this->redirectToRoute('app_user_profile');
    }
    #[Route('/profile', name: 'app_user_profile')]
    public function profile(Security $security): Response
    {
        $user = $security->getUser();

        return $this->render('user/index.html.twig', [
            'user' => $user,
            'borrowedBooks' => $user->getBookBorrows(),
        ]);


    }

    #[Route('/return/{id}', name: 'app_return_book')]
    public function returnBook(
        int $id,
        EntityManagerInterface $em,
        BookBorrowRepository $repo,
        Security $security
    ): Response {
        $user = $security->getUser();

        if (!$user instanceof User) {
            throw $this->createAccessDeniedException();
        }

        $borrow = $repo->find($id);

        if (!$borrow) {
            throw $this->createNotFoundException();
        }

        if ($borrow->getUser() !== $user) {
            throw $this->createAccessDeniedException();
        }

        $em->remove($borrow);
        $em->flush();

        $this->addFlash('success', 'Boek is teruggebracht!');

        return $this->redirectToRoute('app_user_profile');
    }

}
