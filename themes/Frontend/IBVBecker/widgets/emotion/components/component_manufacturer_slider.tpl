{extends file='parent:widgets/emotion/components/component_manufacturer_slider.tpl'}

{block name="frontend_widgets_manufacturer_slider_item_link"}
		{if $supplier.image}
			{block name="frontend_widgets_manufacturer_slider_item_image"}
				<img class="manufacturer--image" src="{$supplier.image}" alt="{$supplier.name|escape}" />
			{/block}
		{else}
			{block name="frontend_widgets_manufacturer_slider_item_text"}
				test<span class="manufacturer--name">{$supplier.name}</span>
			{/block}
		{/if}
{/block}