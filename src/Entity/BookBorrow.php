<?php

namespace App\Entity;

use App\Repository\BookBorrowRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: BookBorrowRepository::class)]
class BookBorrow
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(type: Types::DATE_MUTABLE)]
    private ?\DateTime $loanDate = null;

    #[ORM\Column(type: Types::DATE_MUTABLE, nullable: true)]
    private ?\DateTime $returnDate = null;


    #[ORM\ManyToOne(inversedBy: 'bookBorrows')]
    private ?User $user = null;

    #[ORM\ManyToOne(inversedBy: 'bookBorrows')]
    #[ORM\JoinColumn(nullable: false)]
    private ?BookStock $bookStock = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getLoanDate(): ?\DateTime
    {
        return $this->loanDate;
    }

    public function setLoanDate(\DateTime $loanDate): static
    {
        $this->loanDate = $loanDate;

        return $this;
    }

    public function getReturnDate(): ?\DateTime
    {
        return $this->returnDate;
    }

    public function setReturnDate(?\DateTime $returnDate): static
    {
        $this->returnDate = $returnDate;

        return $this;
    }

    public function getUser(): ?User
    {
        return $this->user;
    }

    public function setUser(?User $user): static
    {
        $this->user = $user;

        return $this;
    }

    public function getBookStock(): ?BookStock
    {
        return $this->bookStock;
    }

    public function setBookStock(?BookStock $bookStock): static
    {
        $this->bookStock = $bookStock;

        return $this;
    }
}
