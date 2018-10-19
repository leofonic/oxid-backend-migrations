<?php

namespace zunderweb\zwb_migrations\controllers\admin;

use \OxidEsales\Facts\Facts;
use \OxidEsales\DoctrineMigrationWrapper\Migrations;
use Symfony\Component\Console\Output\Output;
use Symfony\Component\Console\Output\BufferedOutput;
use zunderweb\zwb_migrations\migration_wrapper\MigrationsBuilder;

class zwb_migrations_list extends \OxidEsales\Eshop\Application\Controller\Admin\AdminListController
{
    protected $_sThisTemplate = 'zwb_migrations_list.tpl';
    
    public function executemigrations()
    {
        //preventing edit for anyone except malladmin
        if (\OxidEsales\Eshop\Core\Registry::getSession()->getVariable("malladmin")) {
            $oMetaData = oxNew(\OxidEsales\Eshop\Core\DbMetaDataHandler::class);
            
            $this->_aViewData["blMigrationsExecuted"] = 1;
            $output = new BufferedOutput;
            $this->executeExternalDatabaseMigrationCommand($output);
            $response = $output->fetch();
            $this->_aViewData["blMigrationsResponse"] = $response;
        }
    }
    
    protected function createMigrations(Facts $facts = null)
    {
        $migrationsBuilder = new MigrationsBuilder();

        return $migrationsBuilder->build($facts);
    }
    public function executeExternalDatabaseMigrationCommand(Output $output = null, Facts $facts = null)
    {
        $migrations = $this->createMigrations($facts);
        $migrations->setOutput($output);

        $command = Migrations::MIGRATE_COMMAND;

        $migrations->execute($command);
    }
}