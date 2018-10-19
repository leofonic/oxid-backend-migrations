<?php

namespace zunderweb\zwb_migrations\controllers\admin;

class zwb_migrations_main extends \OxidEsales\Eshop\Application\Controller\Admin\AdminDetailsController
{
    public function render()
    {
        if ($this->getConfig()->isDemoShop()) {
            \OxidEsales\Eshop\Core\Registry::getUtils()->showMessageAndExit("Access denied !");
        }

        parent::render();

        return "zwb_migrations_main.tpl";
    }
}
