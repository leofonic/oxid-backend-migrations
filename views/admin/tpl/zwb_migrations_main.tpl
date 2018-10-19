[{include file="headitem.tpl" title="ZWB_MIGRATIONS_TITLE"|oxmultilangassign}]

[{assign var="readonly" value=""}]
[{if $readonly}]
    [{assign var="readonly" value="readonly disabled"}]
[{/if}]
<form name="transfer" id="transfer" action="[{$oViewConf->getSelfLink()}]" method="post">
    [{$oViewConf->getHiddenSid()}]
    <input type="hidden" name="oxid" value="[{$oxid}]">
    <input type="hidden" name="oxidCopy" value="[{$oxid}]">
    <input type="hidden" name="cl" value="zwb_migrations_main">
</form>

<form name="myedit" id="myedit" action="[{$oViewConf->getSelfLink()}]" method="post">
    [{$oViewConf->getHiddenSid()}]
    <input type="hidden" name="cl" value="zwb_migrations_main">
    <input type="hidden" name="fnc" value="">
    <input type="hidden" name="oxid" value="[{$oxid}]">
    <input type="hidden" name="voxid" value="[{$oxid}]">
    <input type="hidden" name="oxparentid" value="[{$oxparentid}]">
    <input type="hidden" name="editval[oxarticles__oxid]" value="[{$oxid}]">
</form>

<table cellspacing="0" cellpadding="0" border="0" width="98%">
<tr>
    <td valign="top" class="edittext">

      <hr>
      <form name="migrations" id="migrations" action="[{$oViewConf->getSelfLink()}]" method="post" target="list">
        [{$oViewConf->getHiddenSid()}]
        <input type="hidden" name="cl" value="zwb_migrations_list">
        <input type="hidden" name="fnc" value="executemigrations">
        <br>[{oxmultilang ident="ZWB_MIGRATIONS_EXECUTEMIGRATIONS_INFO"}]<br><br>
        <input class="confinput" type="Submit" value="[{oxmultilang ident="ZWB_MIGRATIONS_EXECUTEMIGRATIONS"}]" onClick="return confirm('[{oxmultilang ident="ZWB_MIGRATIONS_EXECUTEMIGRATIONS_CONFIRM"}]')" [{$readonly}]>
      </form>

    </td>
    <td valign="top" class="edittext" align="left">
    <br>
        <table cellspacing="0" cellpadding="0" border="0">
        <tr>
            <td class="edittext">
            </td>
        </tr>
        </table>

    </td>
    </tr>
</table>

[{include file="bottomnaviitem.tpl"}]
[{include file="bottomitem.tpl"}]