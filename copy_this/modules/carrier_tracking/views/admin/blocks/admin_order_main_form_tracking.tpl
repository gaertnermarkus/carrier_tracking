<tr>
    <td class="edittext">
        [{oxmultilang ident="ORDER_MAIN_TRACKCODE"}]&nbsp;&nbsp;
    </td>
    <td class="edittext">
        <input type="text" class="editinput" size="25" maxlength="[{$edit->oxorder__oxtrackcode->fldmax_length}]" name="editval[oxorder__oxtrackcode]" value="[{$edit->oxorder__oxtrackcode->value}]" [{$readonly}]>
    </td>
    <td>
        [{if $edit->getShipmentTrackingUrl()}]
            <a href="[{$edit->getShipmentTrackingUrl()}]" target="_blank">[{oxmultilang ident="TRACKING_FOLLOW"}]</a>
        [{else}]
            <span style="text-decoration: line-through;">[{oxmultilang ident="TRACKING_FOLLOW"}]</span>
        [{/if}]
    </td>
</tr>
[{*if $edit->oxorder__oxtrackcode->value*}]
    [{assign var="carrierlist" value=$oView->getCarrierList()}]
    <tr>
        <td class="edittext">
            [{oxmultilang ident="GENERAL_CARRIER"}]
        </td>
        <td class="edittext">
            <select class="editinput" name="editval[oxorder__oxcarrierid]" [{$readonly}]>
                <option value="">----</option>
                [{foreach from=$carrierlist item=oCarrier}]
                    <option value="[{$oCarrier->oxcarriers__oxid->value}]" [{if $oCarrier->oxcarriers__oxid->value == $edit->oxorder__oxcarrierid->value}]selected[{/if}]>[{$oCarrier->oxcarriers__oxtitle->value}]</option>
                [{/foreach}]
            </select>
        </td>
    </tr>

    <tr>
        <td class="edittext">
            [{oxmultilang ident="GENERAL_CARRIER_ALTERNATIVE"}]
        </td>
        <td class="edittext">
            <input type="text" class="editinput" size="35" maxlength="[{$edit->oxorder__oxcarrierurl->fldmax_length}]" name="editval[oxorder__oxcarrierurl]" value="[{$edit->oxorder__oxcarrierurl->value}]" [{$readonly}]>
        </td>
    </tr>
[{*/if*}]
[{*$smarty.block.parent*}]