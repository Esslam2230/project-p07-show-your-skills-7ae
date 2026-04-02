<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20260326090732 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE book_stock ADD book_id INT NOT NULL');
        $this->addSql('ALTER TABLE book_stock ADD CONSTRAINT FK_45F4431916A2B381 FOREIGN KEY (book_id) REFERENCES book (id)');
        $this->addSql('CREATE INDEX IDX_45F4431916A2B381 ON book_stock (book_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE book_stock DROP FOREIGN KEY FK_45F4431916A2B381');
        $this->addSql('DROP INDEX IDX_45F4431916A2B381 ON book_stock');
        $this->addSql('ALTER TABLE book_stock DROP book_id');
    }
}
