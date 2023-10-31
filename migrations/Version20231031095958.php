<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20231031095958 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE recipe DROP FOREIGN KEY FK_DA88B13726ED0855');
        $this->addSql('ALTER TABLE recipe DROP FOREIGN KEY FK_DA88B1376E775A4A');
        $this->addSql('ALTER TABLE recipe DROP FOREIGN KEY FK_DA88B137E1E13ACE');
        $this->addSql('DROP INDEX IDX_DA88B137E1E13ACE ON recipe');
        $this->addSql('DROP INDEX IDX_DA88B13726ED0855 ON recipe');
        $this->addSql('DROP INDEX IDX_DA88B1376E775A4A ON recipe');
        $this->addSql('ALTER TABLE recipe DROP note_id, DROP allergen_id, DROP diet_id');
        $this->addSql('ALTER TABLE user DROP FOREIGN KEY FK_8D93D6496E775A4A');
        $this->addSql('ALTER TABLE user DROP FOREIGN KEY FK_8D93D649E1E13ACE');
        $this->addSql('DROP INDEX IDX_8D93D6496E775A4A ON user');
        $this->addSql('DROP INDEX IDX_8D93D649E1E13ACE ON user');
        $this->addSql('ALTER TABLE user DROP allergen_id, DROP diet_id');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE recipe ADD note_id INT DEFAULT NULL, ADD allergen_id INT DEFAULT NULL, ADD diet_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE recipe ADD CONSTRAINT FK_DA88B13726ED0855 FOREIGN KEY (note_id) REFERENCES score (id)');
        $this->addSql('ALTER TABLE recipe ADD CONSTRAINT FK_DA88B1376E775A4A FOREIGN KEY (allergen_id) REFERENCES allergen_type (id)');
        $this->addSql('ALTER TABLE recipe ADD CONSTRAINT FK_DA88B137E1E13ACE FOREIGN KEY (diet_id) REFERENCES diet_type (id)');
        $this->addSql('CREATE INDEX IDX_DA88B137E1E13ACE ON recipe (diet_id)');
        $this->addSql('CREATE INDEX IDX_DA88B13726ED0855 ON recipe (note_id)');
        $this->addSql('CREATE INDEX IDX_DA88B1376E775A4A ON recipe (allergen_id)');
        $this->addSql('ALTER TABLE user ADD allergen_id INT DEFAULT NULL, ADD diet_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE user ADD CONSTRAINT FK_8D93D6496E775A4A FOREIGN KEY (allergen_id) REFERENCES allergen_type (id)');
        $this->addSql('ALTER TABLE user ADD CONSTRAINT FK_8D93D649E1E13ACE FOREIGN KEY (diet_id) REFERENCES diet_type (id)');
        $this->addSql('CREATE INDEX IDX_8D93D6496E775A4A ON user (allergen_id)');
        $this->addSql('CREATE INDEX IDX_8D93D649E1E13ACE ON user (diet_id)');
    }
}
