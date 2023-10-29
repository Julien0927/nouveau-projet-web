<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20231029152705 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE recipe_allergen_type DROP FOREIGN KEY FK_F46E266BF7A7758');
        $this->addSql('ALTER TABLE recipe_allergen_type DROP FOREIGN KEY FK_F46E266B59D8A214');
        $this->addSql('ALTER TABLE recipe_diet_type DROP FOREIGN KEY FK_6107ADCA35BFD6CF');
        $this->addSql('ALTER TABLE recipe_diet_type DROP FOREIGN KEY FK_6107ADCA59D8A214');
        $this->addSql('ALTER TABLE recipe_score DROP FOREIGN KEY FK_248AE34E12EB0A51');
        $this->addSql('ALTER TABLE recipe_score DROP FOREIGN KEY FK_248AE34E59D8A214');
        $this->addSql('ALTER TABLE user_allergen_type DROP FOREIGN KEY FK_8A159DFDF7A7758');
        $this->addSql('ALTER TABLE user_allergen_type DROP FOREIGN KEY FK_8A159DFDA76ED395');
        $this->addSql('ALTER TABLE user_diet_type DROP FOREIGN KEY FK_76260EC835BFD6CF');
        $this->addSql('ALTER TABLE user_diet_type DROP FOREIGN KEY FK_76260EC8A76ED395');
        $this->addSql('DROP TABLE recipe_allergen_type');
        $this->addSql('DROP TABLE recipe_diet_type');
        $this->addSql('DROP TABLE recipe_score');
        $this->addSql('DROP TABLE user_allergen_type');
        $this->addSql('DROP TABLE user_diet_type');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE recipe_allergen_type (recipe_id INT NOT NULL, allergen_type_id INT NOT NULL, INDEX IDX_F46E266BF7A7758 (allergen_type_id), INDEX IDX_F46E266B59D8A214 (recipe_id), PRIMARY KEY(recipe_id, allergen_type_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE recipe_diet_type (recipe_id INT NOT NULL, diet_type_id INT NOT NULL, INDEX IDX_6107ADCA59D8A214 (recipe_id), INDEX IDX_6107ADCA35BFD6CF (diet_type_id), PRIMARY KEY(recipe_id, diet_type_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE recipe_score (recipe_id INT NOT NULL, score_id INT NOT NULL, INDEX IDX_248AE34E59D8A214 (recipe_id), INDEX IDX_248AE34E12EB0A51 (score_id), PRIMARY KEY(recipe_id, score_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE user_allergen_type (user_id INT NOT NULL, allergen_type_id INT NOT NULL, INDEX IDX_8A159DFDA76ED395 (user_id), INDEX IDX_8A159DFDF7A7758 (allergen_type_id), PRIMARY KEY(user_id, allergen_type_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE user_diet_type (user_id INT NOT NULL, diet_type_id INT NOT NULL, INDEX IDX_76260EC835BFD6CF (diet_type_id), INDEX IDX_76260EC8A76ED395 (user_id), PRIMARY KEY(user_id, diet_type_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('ALTER TABLE recipe_allergen_type ADD CONSTRAINT FK_F46E266BF7A7758 FOREIGN KEY (allergen_type_id) REFERENCES allergen_type (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE recipe_allergen_type ADD CONSTRAINT FK_F46E266B59D8A214 FOREIGN KEY (recipe_id) REFERENCES recipe (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE recipe_diet_type ADD CONSTRAINT FK_6107ADCA35BFD6CF FOREIGN KEY (diet_type_id) REFERENCES diet_type (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE recipe_diet_type ADD CONSTRAINT FK_6107ADCA59D8A214 FOREIGN KEY (recipe_id) REFERENCES recipe (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE recipe_score ADD CONSTRAINT FK_248AE34E12EB0A51 FOREIGN KEY (score_id) REFERENCES score (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE recipe_score ADD CONSTRAINT FK_248AE34E59D8A214 FOREIGN KEY (recipe_id) REFERENCES recipe (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE user_allergen_type ADD CONSTRAINT FK_8A159DFDF7A7758 FOREIGN KEY (allergen_type_id) REFERENCES allergen_type (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE user_allergen_type ADD CONSTRAINT FK_8A159DFDA76ED395 FOREIGN KEY (user_id) REFERENCES user (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE user_diet_type ADD CONSTRAINT FK_76260EC835BFD6CF FOREIGN KEY (diet_type_id) REFERENCES diet_type (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE user_diet_type ADD CONSTRAINT FK_76260EC8A76ED395 FOREIGN KEY (user_id) REFERENCES user (id) ON DELETE CASCADE');
    }
}
