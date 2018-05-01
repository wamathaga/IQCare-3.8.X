<%@ Page Language="C#" MasterPageFile="~/MasterPage/IQCare.master" AutoEventWireup="true"
    Inherits="Reports_frmReportViewer" Title="Untitled Page" CodeBehind="frmReportViewer.aspx.cs" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IQCareContentPlaceHolder" runat="Server">
    <script language="javascript" type="text/javascript">

        function btn_Back() {
            //history.back(); 

        }
        function fnPrient() {
            window.open("..\\ExcelFiles\\PView.pdf", "mywindow", "status=1,toolbar=0");
            //window.print(); 
        }
    </script>
    <div class="container-fluid">
        <h4 class="h4 margin" id="hBar" runat="server">
            Report</h4>
        <div class="container-fluid">
            <%--<form id ="PatientReports" method="post" runat="server">--%>
            <div class="border center formbg" style="overflow: auto;">
                <table class="table-condensed" width="900px">
                    <tr>
                        <td align="right" width="50%">
                            <asp:Button ID="btnPrint" runat="server" Text="Print" OnClick="btnPrint_Click" CssClass="btn btn-primary"
                                Height="30px" Width="15%" Style="text-align: left;" />
                            <label class="glyphicon glyphicon-print" style="margin-left: -5%; margin-right: 2%;
                                vertical-align: sub; color: #fff;">
                            </label>
                            <br />
                        </td>
                        <td align="left" width="50%">
                            <asp:Button ID="btnExcel" runat="server" Text="Export to Excel" Visible="false" OnClick="btnExcel_Click"
                                CssClass="btn btn-primary" Height="30px" Width="9%" Style="text-align: left;" />
                            <label id="lblBtnExcel" runat = "server" class="glyphicon glyphicon-list" style="margin-left: -3%; margin-right: 2%;
                                vertical-align: sub; color: #fff; visibility:hidden;">
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="border pad5 whitebg" valign="top" colspan="2" align="center">
                            <div class="crystalreportviewer" style="width: 100px;">
                                <CR:CrystalReportViewer ID="crViewer" runat="server" AutoDataBind="true" HasCrystalLogo="False"
                                    GroupTreeStyle-ShowLines="false" EnableToolTips="true" HasDrillUpButton="False"
                                    HasSearchButton="False" HasToggleGroupTreeButton="False" HasZoomFactorList="False"
                                    EnableDatabaseLogonPrompt="true" HasExportButton="False" HasPrintButton="False"
                                    Height="50px" Width="350px" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="pad5 center" colspan="2">
                            <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" CssClass="btn btn-primary"
                                Height="30px" Width="8%" Style="text-align: left;" />
                            <label class="glyphicon glyphicon-backward" style="margin-left: -3%; margin-right: 2%;
                                vertical-align: sub; color: #fff;">
                            </label>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
