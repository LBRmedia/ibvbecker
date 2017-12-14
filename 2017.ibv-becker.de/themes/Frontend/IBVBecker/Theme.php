<?php

namespace Shopware\Themes\IBVBecker;

use Shopware\Components\Form as Form;

class Theme extends \Shopware\Components\Theme
{
    protected $extend = 'Responsive';

    protected $name = <<<'SHOPWARE_EOD'
ibv-becker.de
SHOPWARE_EOD;

    protected $description = <<<'SHOPWARE_EOD'
Shop für Industrielektronik
SHOPWARE_EOD;

    protected $author = <<<'SHOPWARE_EOD'
LBR Media
SHOPWARE_EOD;

    protected $license = <<<'SHOPWARE_EOD'
LBR Media
SHOPWARE_EOD;

    public function createConfig(Form\Container\TabContainer $container)
    {
    }
}