{block name="title" prepend}{if $mode == "defense"}{$LNG.lm_defenses}{else}{$LNG.lm_shipshard}{/if}{/block}
{block name="content"}
{if !$NotBuilding}<table width="70%" id="infobox" style="border: 2px solid red; text-align:center;background:transparent"><tr><td>{$LNG.bd_building_shipyard}</td></tr></table><br><br>{/if}
{if !empty($BuildList)}
<table style="width:760px">
	<tr>
		<td class="transparent">
			<div id="bx" class="z"></div>
			<br>
			<form action="game.php?page=shipyard&amp;mode={$mode}" method="post">
			<input type="hidden" name="action" value="delete">
			<table>
			<tr>
				<th>&nbsp;</th>
			</tr>
			<tr>
				<td><select name="auftr[]" id="auftr" size="10" multiple><option>&nbsp;</option></select><br><br>{$LNG.bd_cancel_warning}<br><input type="submit" value="{$LNG.bd_cancel_send}"></td>
			</tr>
			<tr>
				<th>&nbsp;</th>
			</tr>
			</table>
			</form>
			<br><span id="timeleft"></span><br><br>
		</td>
	</tr>
</table>
<br>
{/if}
<form action="game.php?page=shipyard&amp;mode={$mode}" method="post">
<table style="width:760px">
	{foreach $elementList as $ID => $Element}
	<tr>
		<th colspan="3">
			<span style="color:yellow"><a href="#" style="color:yellow" onclick="return Dialog.info({$ID})">{$LNG.tech.{$ID}}</a></span><span style="color:yellow" id="val_{$ID}">{if $Element.available != 0} ({$LNG.bd_available} {$Element.available|number}){/if}</span>
		</th>
	</tr>
	<tr>
		<td rowspan="2" style="width:120px;">
			<a href="#" onclick="return Dialog.info({$ID})">
				<img src="{$dpath}gebaeude/{$ID}.gif" alt="{$LNG.tech.{$ID}}" width="120" height="120">
			</a>
		</td>
	</tr>
	<tr>
		<td>
			<table style="width:100%">
				<tr>
					<td class="transparent left" style="width:90%"><p>{$LNG.shortDescription.{$ID}}</p>{foreach $Element.costResources as $RessID => $RessAmount}
						{$LNG.tech.{$RessID}}: <b><span style="color:{if $Element.costOverflow[$RessID] == 0}lime{else}red{/if}">{$RessAmount|number}</span>											</b>
						{/foreach}

						{$LNG.fgf_time}: {$Element.elementTime|time}

						<p>{$LNG.bd_remaining}
						{foreach $Element.costOverflow as $ResType => $ResCount}
						{$LNG.tech.{$ResType}}: <span style="font-weight:700">{$ResCount|number}</span>
						{/foreach}

						<p>{$LNG.bd_max_ships_long}: <span style="font-weight:700">{$Element.maxBuildable|number}</span>


				    </td>
					<td class="transparent" style="vertical-align:middle;width:100px">
						<p>{if $Element.AlreadyBuild}<span style="color:red">{$LNG.bd_protection_shield_only_one}</span>{elseif $NotBuilding && $Element.buyable}<input type="text" name="fmenge[{$ID}]" id="input_{$ID}" size="{$maxlength}" maxlength="{$maxlength}" value="0" tabindex="{$smarty.foreach.FleetList.iteration}"></p><p>
						<input type="button" value="{$LNG.bd_max_ships}" onclick="$('#input_{$ID}').val('{$Element.maxBuildable}')"></p>
						{/if}
					</td>
				</tr>
			</table>
		</td>
	</tr>






	<tr>
		<td colspan="2" style="margin-bottom:10px;">  
			<table style="width:100%">
				<tr>
					<td class="transparent left">
						
						<br>
					</td>
					<td class="transparent right">
						
					</td>
				</tr>
				<tr>		
					<td class="transparent left" style="width:68%">
						
					</td>
					<td class="transparent right" style="white-space:nowrap;">
						
					</td>
				</tr>	
			</table>
		</td>
	</tr>
	{/foreach}
	{if $NotBuilding}<tr><th colspan="2" style="text-align:center"><input type="submit" value="{$LNG.bd_build_ships}"></th></tr>{/if}
</table>
</form>
{/block}
{block name="script" append}
<script type="text/javascript">
data			= {$BuildList|json};
bd_operating	= '{$LNG.bd_operating}';
bd_available	= '{$LNG.bd_available}';
</script>
{if !empty($BuildList)}
<script src="scripts/base/bcmath.js"></script>
<script src="scripts/game/shipyard.js"></script>
<script type="text/javascript">
$(function() {
    ShipyardInit();
});
</script>
{/if}
{/block}