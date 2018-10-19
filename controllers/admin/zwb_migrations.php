<?php
namespace zunderweb\zwb_migrations\controllers\admin;

class zwb_migrations extends \OxidEsales\Eshop\Application\Controller\Admin\AdminController
{
    
    public function render()
    {
        if ($this->getConfig()->isDemoShop()) {
            return \OxidEsales\Eshop\Core\Registry::getUtils()->showMessageAndExit("Access denied !");
        }

        parent::render();

        return "zwb_migrations.tpl";
    }
}