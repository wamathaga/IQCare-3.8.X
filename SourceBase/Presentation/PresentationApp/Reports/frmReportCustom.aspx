<%@ Page Language="C#" MasterPageFile="~/MasterPage/IQCare.master" AutoEventWireup="true"
    Inherits="Reports_frmReportCustom" Title="Untitled Page" CodeBehind="frmReportCustom.aspx.cs" %>

<%@ MasterType VirtualPath="~/MasterPage/IQCare.master" %>
<%@ Register Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IQCareContentPlaceHolder" runat="Server">
    <div class="container-fluid">
        <h5 id="hBar" runat="server">
            Custom Reports</h5>
        <script language="javascript" type="text/javascript">

            function hide(divId) {
                if (document.layers) document.layers[divId].visibility = 'hide';
                else if (document.all) document.all[divId].style.display = 'none';
                else if (document.getElementById) document.getElementById(divId).style.display = 'none';
            }

            //shows div
            function show(divId) {
                if (document.layers) document.layers[divId].visibility = 'show';
                else if (document.all) document.all[divId].style.display = 'inline';
                else if (document.getElementById) document.getElementById(divId).style.display = 'inline';
            }

            function CheckReport(ddlReportName) {
                if (document.getElementById(ddlReportName).value == "") {
                    alert('No Report Selected.');
                    return false;
                }
                return true;
            }
            function fnRedirect(id) {
                //alert(id);
                window.location.href = "frmReportCustomNew.aspx?ReportId=" + id + "&ReportImpMode=RIEdit";
            }
            function redirectNew() {
                window.location.href = "frmReportCustomNew.aspx";
            }
        
        </script>
        <%-- <form id="CustomReports" method="post" runat="server"--%>
        <div class="border center formbg">
            <asp:UpdatePanel ID="up_report" runat="server">
                <ContentTemplate>
                    <table width="100%" class="table-condensed">
                        <tbody>
                            <tr>
                                <td style="width: 65%" align="right">
                                </td>
                                <td style="width: 35%; padding-right: 40px;" align="right">
                                    <div>
                                        <asp:Button ID="btnNew" runat="server" Text="Create New Report" OnClick="btnNew_Click"
                                            CssClass="btn btn-success" Height="30px" Width="54%" Style="text-align: left;" />
                                        <label class="glyphicon glyphicon-plus" style="vertical-align: middle; margin-left: -8%;
                                            color: #fff; margin-top: 2.5%;">
                                        </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="border pad5 whitebg" valign="top" colspan="2">
                                    <table width="100%" class="table-condensed">
                                        <tbody>
                                            <tr>
                                                <td style="width: 30%" align="left">
                                                    <label>
                                                        Saved Reports:</label>;
                                                    <asp:DropDownList ID="ddCategory" runat="server" Width="120px" OnSelectedIndexChanged="ddCategory_SelectedIndexChanged"
                                                        AutoPostBack="true">
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="width: 40%" align="left">
                                                    <asp:DropDownList ID="ddTitle" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="width: 30%" align="left">
                                                    <asp:Button ID="btnRun" OnClick="btnRun_Click" runat="server" Text="Run" CssClass="btn btn-primary"
                                                        Height="30px" Width="22%" Style="text-align: left;" />
                                                    <label class="glyphicon glyphicon-check" style="vertical-align: middle; margin-left: -8%;
                                                        color: #fff; margin-top: 2.5%;">
                                                    </label>
                                                    <asp:Button ID="btnEdit" OnClick="btnEdit_Click" runat="server" Text="Edit" CssClass="btn btn-primary"
                                                        Height="30px" Width="23%" Style="text-align: left;" />
                                                    <label class="glyphicon glyphicon-log-out" style="vertical-align: middle; margin-left: -8%;
                                                        color: #fff; margin-top: 2.5%;">
                                                    </label>
                                                    <asp:Button ID="btnExportReport" OnClick="btnExportReport_Click" runat="server" Text="Export Report"
                                                        CssClass="btn btn-primary" Height="30px" Width="44%" Style="text-align: left;" />
                                                    <label class="glyphicon glyphicon-export" style="vertical-align: middle; margin-left: -8%;
                                                        color: #fff; margin-top: 2.5%;">
                                                    </label>
                                                    <asp:HiddenField ID="hidMessage" runat="server"></asp:HiddenField>
                                                    <asp:HiddenField ID="hidorgmsg" runat="server"></asp:HiddenField>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left">
                                                    <label>
                                                        Import Reports:</label>
                                                </td>
                                                <td align="left">
                                                    <asp:FileUpload ID="inptReport" runat="server" Height="30px" Width="50%" CssClass="text-danger" />
                                                </td>
                                                <td align="left">
                                                    <asp:Button ID="btnEditImport" OnClick="btnEditImport_Click" runat="server" Text="Edit"
                                                        CssClass="btn btn-primary" Height="30px" Width="24%" Style="text-align: left;" />
                                                    <label class="glyphicon glyphicon-log-out" style="vertical-align: middle; margin-left: -8%;
                                                        color: #fff; margin-top: 2.5%;">
                                                    </label>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:Button ID="btnClose" OnClick="btnClose_Click" runat="server" Text="Close" CssClass="btn btn-primary"
                                        Height="30px" Width="8%" Style="text-align: left;" />
                                    <label class="glyphicon glyphicon-remove-circle" style="margin-left: -2.5%; margin-right: 2%;
                                        vertical-align: sub; color: #fff; margin-top:1%;">
                                    </label>
                                    <asp:Button ID="btnRefresh" runat="server" Text="Refresh" OnClick="btnRefresh_Click"
                                        CssClass="btn btn-primary" Height="30px" Width="9%" Style="text-align: left;" />
                                    <label class="glyphicon glyphicon-refresh" style="margin-left: -2.5%; margin-right: 2%;
                                        vertical-align: sub; color: #fff; margin-top:1%;">
                                    </label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </ContentTemplate>
                <Triggers>
                    <asp:PostBackTrigger ControlID="btnEditImport" />
                    <asp:PostBackTrigger ControlID="btnExportReport" />
                    <asp:PostBackTrigger ControlID="btnEdit" />
                    <asp:PostBackTrigger ControlID="btnRefresh" />
                    <asp:PostBackTrigger ControlID="btnNew" />
                    <asp:AsyncPostBackTrigger ControlID="btnRun" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
