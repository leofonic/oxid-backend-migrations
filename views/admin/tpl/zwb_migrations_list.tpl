[{include file="headitem.tpl" title="TOOLS_LIST_TITLE"|oxmultilangassign box="list"}]

<script type="text/javascript">
<!--
window.onload = function ()
{
    top.reloadEditFrame();
    [{if $updatelist == 1}]
        top.oxid.admin.updateList('[{$oxid}]');
    [{/if}]
}
//-->
</script>
<form name="search" id="search" action="[{$oViewConf->getSelfLink()}]" method="post">
    [{$oViewConf->getHiddenSid()}]
    <input type="hidden" name="actedit" value="[{$actedit}]">
    <input type="hidden" name="cl" value="zwb_migrations_list">
    <input type="hidden" name="oxid" value="x">
</form>

<div id="liste">

    <table cellspacing="0" cellpadding="0" border="0">
    [{if isset($blMigrationsExecuted)}]
    <tr>
        <td class="editnavigation">
            [{if $blMigrationsExecuted}]
            [{oxmultilang ident="ZWB_MIGRATIONS_SUCCESS"}]
            [{/if}]
        </td>
    </tr>
    [{/if}]
    [{if isset($blMigrationsResponse)}]
    <tr>
        <td class="editnavigation">
            [{if $blMigrationsResponse}]
            <pre>[{$blMigrationsResponse}]</pre>
            [{/if}]
        </td>
    </tr>
    [{/if}]
    </table>
    <br>
    

</div>

[{include file="pagetabsnippet.tpl" noOXIDCheck="true"}]

<script type="text/javascript">
if (parent.parent)
{   parent.parent.sShopTitle   = "[{$actshopobj->oxshops__oxname->getRawValue()|oxaddslashes}]";
    parent.parent.sMenuItem    = "[{oxmultilang ident="TOOLS_LIST_MENUITEM"}]";
    parent.parent.sMenuSubItem = "[{oxmultilang ident="TOOLS_LIST_MENUSUBITEM"}]";
    parent.parent.sWorkArea    = "[{$_act}]";
    parent.parent.setTitle();
}
</script>

[{include file="bottomitem.tpl"}]
