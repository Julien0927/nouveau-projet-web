<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20231029161231 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE allergen_type DROP FOREIGN KEY FK_649B30AD59D8A214');
        $this->addSql('DROP INDEX IDX_649B30AD59D8A214 ON allergen_type');
        $this->addSql('ALTER TABLE allergen_type DROP recipe_id');
        $this->addSql('ALTER TABLE diet_type DROP FOREIGN KEY FK_76C6832C59D8A214');
        $this->addSql('DROP INDEX IDX_76C6832C59D8A214 ON diet_type');
        $this->addSql('ALTER TABLE diet_type DROP recipe_id');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE allergen_type ADD recipe_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE allergen_type ADD CONSTRAINT FK_649B30AD59D8A214 FOREIGN KEY (recipe_id) REFERENCES recipe (id)');
        $this->addSql('CREATE INDEX IDX_649B30AD59D8A214 ON allergen_type (recipe_id)');
        $this->addSql('ALTER TABLE diet_type ADD recipe_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE diet_type ADD CONSTRAINT FK_76C6832C59D8A214 FOREIGN KEY (recipe_id) REFERENCES recipe (id)');
        $this->addSql('CREATE INDEX IDX_76C6832C59D8A214 ON diet_type (recipe_id)');
    }
}
