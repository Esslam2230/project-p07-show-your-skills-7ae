<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20260318082845 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE book ADD book_borrow VARCHAR(255) NOT NULL');
        $this->addSql('ALTER TABLE book_borrow ADD book_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE book_borrow ADD CONSTRAINT FK_7C0CA33D16A2B381 FOREIGN KEY (book_id) REFERENCES book (id)');
        $this->addSql('CREATE INDEX IDX_7C0CA33D16A2B381 ON book_borrow (book_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE book DROP book_borrow');
        $this->addSql('ALTER TABLE book_borrow DROP FOREIGN KEY FK_7C0CA33D16A2B381');
        $this->addSql('DROP INDEX IDX_7C0CA33D16A2B381 ON book_borrow');
        $this->addSql('ALTER TABLE book_borrow DROP book_id');
    }
}
