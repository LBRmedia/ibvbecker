{namespace name="frontend/index/menu_footer"}


{* Newsletter *}
{block name="frontend_index_footer_column_newsletter"}
		<div class="footer--column column--newsletter">
			<div class="container">
				{block name="frontend_index_footer_column_newsletter_headline"}
					<div class="column--headline">{s namespace="frontend/index/menu_footer" name="sFooterNewsletterHead"}{/s}</div>
				{/block}

				{block name="frontend_index_footer_column_newsletter_content"}
					<div class="column--content">
						<p class="column--desc">
							{s namespace="frontend/index/menu_footer" name="sFooterNewsletter"}{/s}
						</p>

						{block name="frontend_index_footer_column_newsletter_form"}
							<form class="newsletter--form" action="{url controller='newsletter'}" method="post">
								<input type="hidden" value="1" name="subscribeToNewsletter" />

								{block name="frontend_index_footer_column_newsletter_form_field"}
									<input type="email" name="newsletter" class="newsletter--field" placeholder="{s name="IndexFooterNewsletterValue"}{/s}" />
								{/block}

								{block name="frontend_index_footer_column_newsletter_form_submit"}
									<button type="submit" class="newsletter--button btn">
										<i class="icon--mail"></i> <span class="button--text">{s name='IndexFooterNewsletterSubmit'}{/s}</span>
									</button>
								{/block}
							</form>
						{/block}
					</div>
				{/block}
			</div>
		</div>
{/block}

<div class="footer--columns block-group">
 <div class="container">

	{* Service hotline *}
	{block name="frontend_index_footer_column_service_hotline"}
	    <div class="footer--column column--action is--first block">
	        {block name="frontend_index_footer_column_service_action_headline"}
	            <div class="column--headline">{s name="sFooterActionHotlineHead"}{/s}</div>
	        {/block}
	
	        {block name="frontend_index_footer_column_service_action_content"}
	            <div class="column--content">
                 <nav class="navigation-icons">
	              <ul>
		              <li class="navigation--icons"><i class="fa fa-check"></i><div class="label_icons"><span class="label_headline">Kein Mindestbestellwert</span><br/>Bei uns brauchen Sie keine unnötigen Artikel kaufen</div></li>
	                  <li class="navigation--icons"><i class="fa fa-check"></i><div class="label_icons"><span class="label_headline">Kostenloser Versand</span><br/>Wir versenden Ihre Ware kostenlos innerhalb Deutschlands</div></li>
	                  <li class="navigation--icons"><i class="fa fa-check"></i><div class="label_icons"><span class="label_headline">Kostenlose Beratung</span><br/>Qualifiziertes Personal rund um Ihre Fragen</div></li>
	              </ul>
	             </nav>
	           </div>
	        {/block}
	    </div>
	{/block}
	
	{block name="frontend_index_footer_column_service_menu"}
	    <div class="footer--column column--menu block">
	        {block name="frontend_index_footer_column_service_menu_headline"}
	            <div class="column--headline">{s name="sFooterShopNavi1"}{/s}</div>
	        {/block}
	
	        {block name="frontend_index_footer_column_service_menu_content"}
	            <nav class="column--navigation column--content">
	                <ul class="navigation--list" role="menu">
	                    {block name="frontend_index_footer_column_service_menu_before"}{/block}
	                    {foreach $sMenu.gBottom as $item}
	
	                        {block name="frontend_index_footer_column_service_menu_entry"}
	                            <li class="navigation--entry" role="menuitem">
	                                <a class="navigation--link" href="{if $item.link}{$item.link}{else}{url controller='custom' sCustom=$item.id title=$item.description}{/if}" title="{$item.description|escape}"{if $item.target} target="{$item.target}"{/if}>
	                                    {$item.description}
	                                </a>
	
	                                {* Sub categories *}
	                                {if $item.childrenCount > 0}
	                                    <ul class="navigation--list is--level1" role="menu">
	                                        {foreach $item.subPages as $subItem}
	                                            <li class="navigation--entry" role="menuitem">
	                                                <a class="navigation--link" href="{if $subItem.link}{$subItem.link}{else}{url controller='custom' sCustom=$subItem.id title=$subItem.description}{/if}" title="{$subItem.description|escape}"{if $subItem.target} target="{$subItem.target}"{/if}>
	                                                    {$subItem.description}
	                                                </a>
	                                            </li>
	                                        {/foreach}
	                                    </ul>
	                                {/if}
	                            </li>
	                        {/block}
	                    {/foreach}
	
	                    {block name="frontend_index_footer_column_service_menu_after"}{/block}
	                </ul>
	            </nav>
	        {/block}
	    </div>
	{/block}
	
	{block name="frontend_index_footer_column_information_menu"}
	    <div class="footer--column column--menu block">
	        {block name="frontend_index_footer_column_information_menu_headline"}
	            <div class="column--headline">{s name="sFooterShopNavi2"}{/s}</div>
	        {/block}
	
	        {block name="frontend_index_footer_column_information_menu_content"}
	            <nav class="column--navigation column--content">
	                <ul class="navigation--list" role="menu">
	                    {block name="frontend_index_footer_column_information_menu_before"}{/block}
	                        {foreach $sMenu.gBottom2 as $item}
	
	                            {block name="frontend_index_footer_column_information_menu_entry"}
	                                <li class="navigation--entry" role="menuitem">
	                                    <a class="navigation--link" href="{if $item.link}{$item.link}{else}{url controller='custom' sCustom=$item.id title=$item.description}{/if}" title="{$item.description|escape}"{if $item.target} target="{$item.target}"{/if}>
	                                        {$item.description}
	                                    </a>
	
	                                    {* Sub categories *}
	                                    {if $item.childrenCount > 0}
	                                        <ul class="navigation--list is--level1" role="menu">
	                                            {foreach $item.subPages as $subItem}
	                                                <li class="navigation--entry" role="menuitem">
	                                                    <a class="navigation--link" href="{if $subItem.link}{$subItem.link}{else}{url controller='custom' sCustom=$subItem.id title=$subItem.description}{/if}" title="{$subItem.description|escape}"{if $subItem.target} target="{$subItem.target}"{/if}>
	                                                        {$subItem.description}
	                                                    </a>
	                                                </li>
	                                            {/foreach}
	                                        </ul>
	                                    {/if}
	                                </li>
	                            {/block}
	                        {/foreach}
	                    {block name="frontend_index_footer_column_information_menu_after"}{/block}
	                </ul>
	            </nav>
	        {/block}
	    </div>
	{/block}

 </div>
</div>

<div class="footer--columns block-group">
 <div class="container">

	{* Service hotline *}
	{block name="frontend_index_footer_column_service_hotline"}
	    <div class="footer--column column--hotline is--first block">
	        {block name="frontend_index_footer_column_service_hotline_headline"}
	            <div class="column--headline">{s name="sFooterServiceHotlineHead"}{/s}</div>
	        {/block}
	
	        {block name="frontend_index_footer_column_service_hotline_content"}
	            <div class="column--content">
	                <p class="column--desc">{s name="sFooterServiceHotline"}{/s}</p>
	            </div>
	        {/block}
	    </div>
	{/block}
	
	
		{* footer social *}
		{block name="frontend_index_footer_column_social"}
			<div class="footer--column column--menu block">
				{block name="frontend_index_footer_column_social_headline"}
					<div class="column--headline">{s name="sFooterSocialHead"}{/s}</div>
				{/block}

				{block name="frontend_index_footer_column_communitys_content"}
					<div class="column--content">
						<a href="{s name="FooterFacebookL"}{/s}" target="_blank" class="fa fa-facebook-official"></a>
						<a href="{s name="FooterYoutubeL"}{/s}" target="_blank" class="fa fa-youtube-square"></a>
					</div>
				{/block}
			</div>
		{/block}
	
		{* footer payments *}
		{block name="frontend_index_footer_column_payment"}
			<div class="footer--column column--payment block">
				{block name="frontend_index_footer_column_payment_headline"}
					<div class="column--headline">{s name="sFooterPaymentHead"}{/s}</div>
				{/block}

				{block name="frontend_index_footer_column_payment_content"}
					<div class="column--content">
						<img src="{link file='frontend/_public/src/img/zahlungsart/amazon-payments.jpg'}" width="100" alt="Amazon Payments">
						<img src="{link file='frontend/_public/src/img/zahlungsart/paypal.jpg'}" width="100" alt="Paypal">
						<img src="{link file='frontend/_public/src/img/zahlungsart/sofort_ueberweisung.jpg'}" width="100" alt="Sofort Überweisung">
						<img src="{link file='frontend/_public/src/img/zahlungsart/visa.jpg'}" width="100" alt="Visa">
						<img src="{link file='frontend/_public/src/img/zahlungsart/mastercard.jpg'}" width="100" alt="Mastercard">
						<img src="{link file='frontend/_public/src/img/zahlungsart/vorauskasse.jpg'}" width="100" alt="Zahlung per Vorkasse">
					</div>
				{/block}
			</div>
		{/block}
		
		{* footer shipping *}
		{block name="frontend_index_footer_column_shipping"}
			<div class="footer--column column--shipping block">
				{block name="frontend_index_footer_column_shipping_headline"}
					<div class="column--headline">{s name="sFooterShippingHead"}{/s}</div>
				{/block}

				{block name="frontend_index_footer_column_shipping_content"}
					<div class="column--content">
						<img src="{link file='frontend/_public/src/img/versand/dpd.jpg'}" width="100" alt="DPD">
						<img src="{link file='frontend/_public/src/img/versand/spedition.jpg'}" width="100" alt="Spedition">
					</div>
				{/block}
			</div>
		{/block}
		

 </div>
</div>
