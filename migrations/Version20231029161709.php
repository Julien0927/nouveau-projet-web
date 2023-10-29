<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20231029161709 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE user ADD allergen_id INT DEFAULT NULL, ADD diet_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE user ADD CONSTRAINT FK_8D93D6496E775A4A FOREIGN KEY (allergen_id) REFERENCES allergen_type (id)');
        $this->addSql('ALTER TABLE user ADD CONSTRAINT FK_8D93D649E1E13ACE FOREIGN KEY (diet_id) REFERENCES diet_type (id)');
        $this->addSql('CREATE INDEX IDX_8D93D6496E775A4A ON user (allergen_id)');
        $this->addSql('CREATE INDEX IDX_8D93D649E1E13ACE ON user (diet_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE user DROP FOREIGN KEY FK_8D93D6496E775A4A');
        $this->addSql('ALTER TABLE user DROP FOREIGN KEY FK_8D93D649E1E13ACE');
        $this->addSql('DROP INDEX IDX_8D93D6496E775A4A ON user');
        $this->addSql('DROP INDEX IDX_8D93D649E1E13ACE ON user');
        $this->addSql('ALTER TABLE user DROP allergen_id, DROP diet_id');
    }
}
