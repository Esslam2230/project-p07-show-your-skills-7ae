<?php

namespace App\Entity;

use App\Repository\BookStockRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: BookStockRepository::class)]
class BookStock
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $status = null;

    /**
     * @var Collection<int, BookBorrow>
     */
    #[ORM\OneToMany(targetEntity: BookBorrow::class, mappedBy: 'bookStock', orphanRemoval: true)]
    private Collection $bookBorrows;

    #[ORM\ManyToOne(inversedBy: 'bookStocks')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Book $book = null;

    public function __construct()
    {
        $this->bookBorrows = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getStatus(): ?string
    {
        return $this->status;
    }

    public function setStatus(string $status): static
    {
        $this->status = $status;

        return $this;
    }

    /**
     * @return Collection<int, BookBorrow>
     */
    public function getBookBorrows(): Collection
    {
        return $this->bookBorrows;
    }

    public function addBookBorrow(BookBorrow $bookBorrow): static
    {
        if (!$this->bookBorrows->contains($bookBorrow)) {
            $this->bookBorrows->add($bookBorrow);
            $bookBorrow->setBookStock($this);
        }

        return $this;
    }

    public function removeBookBorrow(BookBorrow $bookBorrow): static
    {
        if ($this->bookBorrows->removeElement($bookBorrow)) {
            // set the owning side to null (unless already changed)
            if ($bookBorrow->getBookStock() === $this) {
                $bookBorrow->setBookStock(null);
            }
        }

        return $this;
    }

    public function getBook(): ?Book
    {
        return $this->book;
    }

    public function setBook(?Book $book): static
    {
        $this->book = $book;

        return $this;
    }
}
