{extends file='parent:frontend/index/index.tpl'}

{block name="frontend_index_page_wrap"}
	{include file="frontend/index/lbr-conversion-header.tpl"}
  {$smarty.block.parent}
{/block}

{block name='frontend_index_navigation_categories_top_home'}
                <li class="navigation--entry{if $sCategoryCurrent == $sCategoryStart && $Controller == 'index'} is--active{/if} is--home" role="menuitem">
                    <a class="navigation--link is--first{if $sCategoryCurrent == $sCategoryStart && $Controller == 'index'} active{/if}" href="{url controller='index'}" title="{s name='IndexLinkHome' namespace="frontend/index/categories_top"}{/s}" itemprop="url">
                        <i class="fa fa-align-left"></i>
                    </a>
                </li>
{/block}