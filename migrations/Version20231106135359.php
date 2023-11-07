<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20231106135359 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE allergen_type DROP slug');
        $this->addSql('ALTER TABLE diet_type DROP slug');
        $this->addSql('ALTER TABLE recipe DROP slug');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE allergen_type ADD slug VARCHAR(255) NOT NULL');
        $this->addSql('ALTER TABLE diet_type ADD slug VARCHAR(255) NOT NULL');
        $this->addSql('ALTER TABLE recipe ADD slug VARCHAR(255) NOT NULL');
    }
}
