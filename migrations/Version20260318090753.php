<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20260318090753 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE book_borrow ADD user_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE book_borrow ADD CONSTRAINT FK_7C0CA33DA76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('CREATE INDEX IDX_7C0CA33DA76ED395 ON book_borrow (user_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE book_borrow DROP FOREIGN KEY FK_7C0CA33DA76ED395');
        $this->addSql('DROP INDEX IDX_7C0CA33DA76ED395 ON book_borrow');
        $this->addSql('ALTER TABLE book_borrow DROP user_id');
    }
}
