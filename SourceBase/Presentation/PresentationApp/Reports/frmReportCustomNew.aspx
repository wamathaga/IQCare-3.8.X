<%@ Page Language="C#" MasterPageFile="~/MasterPage/IQCare.master" Inherits="frmReportCustomNew"
    MaintainScrollPositionOnPostback="true" EnableViewState="true" AutoEventWireup="true"
    EnableEventValidation="true" Title="Untitled Page" CodeBehind="frmReportCustomNew.aspx.cs" %>

<%@ MasterType VirtualPath="~/MasterPage/IQCare.master" %>
<%@ Register Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IQCareContentPlaceHolder" runat="Server">
    <script language="javascript" type="text/javascript">
        function GetRefresh() {
            document.forms[0].submit();
        }
        function fnChangeValue(id, vid) {
            var CtrlID = 'ctl00_IQCareContentPlaceHolder_' + id;
            var CtrlvID = 'ctl00_IQCareContentPlaceHolder_' + vid;
            if (document.getElementById(CtrlID).value == 'IS NULL' || document.getElementById(CtrlID).value == 'IS NOT NULL') {
                alert("Please change where conditon");
                document.getElementById(CtrlvID).value = 'Select';
                return false;
            }
            return true;
        }
        function fnChangeCondition(id, vid) {
            var CtrlID = 'ctl00_IQCareContentPlaceHolder_' + id;
            var CtrlvID = 'ctl00_IQCareContentPlaceHolder_' + vid;
            if (document.getElementById(CtrlID).value == 'IS NULL' || document.getElementById(CtrlID).value == 'IS NOT NULL') {

                document.getElementById(CtrlvID).value = '';
                return false;
            }
            return true;
        }
        function fnChangeText(id, vid) {
            var CtrlID = 'ctl00_IQCareContentPlaceHolder_' + id;
            var CtrlvID = 'ctl00_IQCareContentPlaceHolder_' + vid;
            if (document.getElementById(CtrlID).value == 'IS NULL' || document.getElementById(CtrlID).value == 'IS NOT NULL') {
                alert("Please change where conditon");
                document.getElementById(CtrlvID).value = '';
                return false;
            }
            return true;
        }
        function fnChangeDateValue(id, vid) {

            var CtrlID = 'ctl00_IQCareContentPlaceHolder_' + id;
            var CtrlvID = 'ctl00_IQCareContentPlaceHolder_' + vid;
            if (document.getElementById(CtrlID).value == 'IS NULL' || document.getElementById(CtrlID).value == 'IS NOT NULL') {
                alert("Please change where conditon");
                document.getElementById(CtrlvID).value = '';
                return false;
            }
            return true;
        }
        function fnValidate() {


            for (j = 1; j < 10; j++) {
                var controlCount = document.forms[0].elements.length;
                var cntrl = "";
                var ctrlValue = "";


                for (k = 2; k < 6; k++) {
                    cntrl = trim('ctl00_IQCareContentPlaceHolder_pnlSub' + j + 'Con' + k + 'Optr');
                    ctrlValue = trim('ctl00_IQCareContentPlaceHolder_pnlSub' + j + 'Con' + k + 'txtValue');
                    ctrlDate = trim('ctl00_IQCareContentPlaceHolder_pnlSub' + j + 'Con' + k + 'DateValue')
                    ctrldd = trim('ctl00_IQCareContentPlaceHolder_pnlSub' + j + 'Con' + k + 'ddlValue')
                    for (i = 0; i < controlCount; i++) {


                        var elm = document.forms[0].elements[i];
                        var ctrlID = elm.id;

                        if (ctrlID == cntrl) {
                            if (document.getElementById(cntrl).value != 'Select' && document.getElementById(cntrl).value != 'IS NULL' && document.getElementById(cntrl).value != 'IS NOT NULL') {
                                if (document.getElementById(ctrlValue) != null) {
                                    if (document.getElementById(ctrlValue).value == "") {
                                        alert('Pleas enter value in where condition');
                                        return false;
                                    }
                                }
                                if (document.getElementById(ctrlDate) != null) {
                                    if (document.getElementById(ctrlDate).value == "") {
                                        alert('Pleas enter Date in where condition');
                                        return false;
                                    }
                                }
                                if (document.getElementById(ctrldd) != null) {

                                    if (document.getElementById(ctrldd).value == "") {
                                        alert('Pleas  select a value in where condition');
                                        return false;
                                    }
                                }


                            }
                        }

                    }
                }
            }

            return true;
        }
        function trim(str) {
            while (str.substring(0, 1) == ' ') {
                str = str.substring(1, str.length);
            }
            while (str.substring(str.length - 1, str.length) == ' ') {
                str = str.substring(0, str.length - 1);
            }
            return str;
        } 
    </script>
    <div class="container-fluid">
        <h5 class="h5">
            New Custom Report</h5>
        <%--<asp:ScriptManager ID="scm_customreport" runat="server" OnAsyncPostBackError="scm_customreport_AsyncPostBackError">
    </asp:ScriptManager>--%>
        <div id="divshow" class="border center formbg">
            <asp:UpdatePanel ID="up_customreport" runat="server">
                <ContentTemplate>
                    <table width="100%" class="table-condensed">
                        <tbody>
                            <tr>
                                <td align="left" width="100%">
                                    <asp:RadioButton ID="rdoDynamicQuery" runat="server" Text="Dynamic Query" OnCheckedChanged="rdoDynamicQuery_CheckedChanged"
                                        GroupName="QueryType" ToolTip="Select option" AutoPostBack="true"></asp:RadioButton>
                                    <asp:RadioButton ID="rdoTSQL" runat="server" Text="Type SQL" OnCheckedChanged="rdoTSQL_CheckedChanged"
                                        GroupName="QueryType" ToolTip="Make your own query" AutoPostBack="true"></asp:RadioButton>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" nowrap="nowrap">
                                    <label>
                                        Step 1: Give your report an identity</label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <table width="97%" class="table-condensed whitebg">
                                        <tbody>
                                            <tr>
                                                <td align="left">
                                                    <label class="required">
                                                        *Report Title :
                                                    </label>
                                                </td>
                                                <td align="left">
                                                    <asp:TextBox ID="txtTitle" runat="server" Width="400px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left">
                                                    <label>
                                                        Description :
                                                    </label>
                                                </td>
                                                <td align="left">
                                                    <asp:TextBox ID="txtDescription" CssClass="textarea" runat="server" Width="400px"
                                                        TextMode="MultiLine"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left">
                                                    <label class="required">
                                                        *Category :</label>
                                                </td>
                                                <td align="left">
                                                    <asp:DropDownList ID="ddCategory" runat="server" Width="200px">
                                                    </asp:DropDownList>
                                                    <input id="btnNewCategory" type="button" value="New Category" runat="server" class="btn btn-primary"
                                                        style="text-align: left; height: 30px; width: 14%" />
                                                    <input id="txtNewCategory" type="text" runat="server" style="visibility: hidden;" />
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" nowrap="nowrap">
                                    <label>
                                        Step 2: Select your columns and column action</label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:Panel ID="pnlCustomRpt" runat="server" Width="97%" CssClass="whitebg">
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Button ID="btnAddField" OnClick="btnAddField_Click" runat="server" Text="Add Field"
                                        CssClass="btn btn-primary" Height="30px" Width="11%" Style="text-align: left;" />
                                    <label class="glyphicon glyphicon-plus" style="margin-left: -3%; margin-right: 2%;
                                        vertical-align: sub; color: #fff; margin-top: 1%;">
                                    </label>
                                    <asp:Button ID="btnRemoveField" OnClick="btnRemoveField_Click" runat="server" Text="Remove Field"
                                        CssClass="btn btn-primary" Height="30px" Width="14%" Style="text-align: left;
                                        visibility: hidden" />
                                    <label id="lblbtnRemove" runat="server" class="glyphicon glyphicon-remove" style="margin-left: -3%;
                                        margin-right: 2%; vertical-align: sub; color: #fff; visibility: hidden; margin-top: 1%;">
                                    </label>
                                    <input style="visibility: hidden; width: 12px" id="hdnFld" type="text" name="hdnFld"
                                        runat="server" />
                                    <asp:HiddenField ID="hidMessage" runat="server"></asp:HiddenField>
                                    <asp:HiddenField ID="hidOrgMsg" runat="server"></asp:HiddenField>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="border pad5 whitebg">
                                    <table width="100%" class="table-condensed">
                                        <tbody>
                                            <tr>
                                                <td colspan="2">
                                                    <label style="font-weight: bold; font-size: small">
                                                        Advanced Query Options:
                                                    </label>
                                                    <hr />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top">
                                                    <label>
                                                        Enter SQL Statement :
                                                    </label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtSQLStatement" runat="server" Width="700px" TextMode="MultiLine"
                                                        Height="150px" CssClass="textjustify textarea"></asp:TextBox>
                                                    <asp:HiddenField ID="hidReportid" runat="server"></asp:HiddenField>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 905px" class="border pad5 whitebg">
                                    <asp:Button ID="btnSaveReport" OnClientClick="return fnValidate();" OnClick="btnSaveReport_Click"
                                        runat="server" Text="Save and Run Report" CssClass="btn btn-primary" Height="30px"
                                        Width="18%" Style="text-align: left;" />
                                    <label class="glyphicon glyphicon-saved" style="margin-left: -2.5%; margin-right: 2%;
                                        vertical-align: sub; color: #fff; margin-top: 1%;">
                                    </label>
                                    <asp:Button ID="Button2" runat="server" Text="Export Report Parameters" OnClick="Button2_Click"
                                        CssClass="btn btn-primary" Height="30px" Width="21%" Style="text-align: left;" />
                                    <label class="glyphicon glyphicon-new-window" style="margin-left: -2.5%; margin-right: 2%;
                                        vertical-align: sub; color: #fff; margin-top: 1%;">
                                    </label>
                                    <asp:Button ID="btnClose" OnClick="btnClose_Click" runat="server" Text="Close" CssClass="btn btn-primary"
                                        Height="30px" Width="8%" Style="text-align: left;" />
                                    <label class="glyphicon glyphicon-remove-circle" style="margin-left: -2.5%; margin-right: 2%;
                                        vertical-align: sub; color: #fff; margin-top: 1%;">
                                    </label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </ContentTemplate>
                <Triggers>
                    <asp:PostBackTrigger ControlID="btnSaveReport" />
                    <asp:PostBackTrigger ControlID="btnRemoveField" />
                    <asp:PostBackTrigger ControlID="btnClose" />
                    <asp:PostBackTrigger ControlID="Button2" />
                </Triggers>
            </asp:UpdatePanel>
            <script language="javascript" type="text/javascript">
                if (typeof (Sys) !== 'undefined')
                    Sys.Application.notifyScriptLoaded();
                var pageManager = Sys.WebForms.PageRequestManager.getInstance();
                var uiId = '';
                pageManager.add_beginRequest(myBeginRequestCallback);
                function myBeginRequestCallback(sender, args) {
                    var postbackElem = args.get_postBackElement();
                    uiId = postbackElem.id;
                    postbackElem.disabled = true;
                    //document.getElementById('divshow').disabled="disabled";



                }

                pageManager.add_endRequest(myEndRequestCallback);
                function myEndRequestCallback(sender, args) {
                    var hidbox = $get('<%=hidMessage.ClientID %>');
                    $get(uiId).disabled = false;
                    //document.getElementById('divshow').disabled="";
                    if (hidbox.value == "No") {
                        alert("No Record Found");
                    }
                    if (hidbox.value == "Title") {
                        var msg = document.getElementById('<%=hidOrgMsg.ClientID %>').value
                        alert(msg);
                        document.getElementById('<%=hidOrgMsg.ClientID %>').value = "";
                        hidbox.value = "";
                    }
                }
            </script>
        </div>
    </div>
</asp:Content>
