﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControlKNH_NextAppointment.ascx.cs" Inherits="PresentationApp.ClinicalForms.UserControl.UserControlKNH_NextAppointment" %>
<link href="../../Style/bootstrap-3.3.6-dist/css/bootstrap.css" rel="stylesheet"
    type="text/css" />
<link href="../../Style/bootstrap-3.3.6-dist/css/bootstrap-theme.css" rel="stylesheet"
    type="text/css" />
<script src="../../Style/bootstrap-3.3.6-dist/html5Shiv/html5shiv.js" type="text/javascript"></script>
<script type="text/javascript">
    function ShowHide(theDiv, YN) {

        $(document).ready(function () {

            if (YN == "show") {
                $("#" + theDiv).show();

            }
            if (YN == "hide") {
                $("#" + theDiv).hide();

            }

        });

    }
    

//    function getSelectedtableValue(DivId, DDText, str, tableId) {
//        var e = document.getElementById(DDText);
//        var text = e.options[e.selectedIndex].innerHTML;
//        var YN = "";
//        
//        if (text == str) {
//            YN = "show";
//        }
//        else {
//            YN = "hide";
//        }
//        //ShowHide(tableId, "show");
//        ShowHide(DivId, YN);
//    }

//    function CheckBoxHideUnhide(strcblcontrolId, strdivId, strfieldname) {
//        //alert(strcblcontrolId);
//        var checkList = document.getElementById(strcblcontrolId);
//        var checkBoxList = checkList.getElementsByTagName("input");
//        var arrayOfCheckBoxLabels = checkList.getElementsByTagName("label");
//        var checkBoxSelectedItems = new Array();

//        for (var i = 0; i < checkBoxList.length; i++) {

//            if (checkBoxList[i].checked) {
//                if (arrayOfCheckBoxLabels[i].innerHTML == strfieldname) {
//                    ShowHide(strdivId, "show");
//                }
//                else {
//                    ShowHide(strdivId, "hide");
//                }
//            }
//            else {
//                ShowHide(strdivId, "hide");
//            }
//        }



//    }

</script>
<div class="center formbg">
<table cellspacing="6" cellpadding="0" width="100%" border="0">
<tr>
    <td class="form" align="center">
        <asp:Label ID="lblTCA" runat="server" Text="To Come Again" CssClass="required" 
            Font-Bold="True"></asp:Label>
        <asp:RadioButton ID="rdoTCAYes" runat="server" 
            GroupName="rdoTCA" Text="Yes" />
        <asp:RadioButton ID="rdoTCANo" runat="server" GroupName="rdoTCA" Text="No" />
    </td>
</tr>
<tr align="left" id="trNextAppointment" style="display: none">
    <td class="form" 
        align="left">
        <asp:Button ID="btnNextAppointment" runat="server" Text="Next Appointment"  CssClass="btn btn-primary" Height="30px" Width="15%" Style="text-align: left;"
            onclick="btnPrescribeDrugs_Click" />
    </td>
</tr>
 <tr id="trCareEnd" style="display: none">
    <td class="border pad5 whitebg" align="left">
        <asp:Button ID="btnCareEnd" runat="server" Text="Care End" onclick="btnCareEnd_Click"   CssClass="btn btn-primary" Height="30px" Width="9%" Style="text-align: left;"
             />
     </td>
</tr>
</table>
</div>
