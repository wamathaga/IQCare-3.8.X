<%@ Page Language="C#" MasterPageFile="~/MasterPage/IQCare.master" AutoEventWireup="true"
    Inherits="Reports_frmQueryBuilderReports" Title="Untitled Page" CodeBehind="frmQueryBuilderReports.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="IQCareContentPlaceHolder" runat="Server">
    <div class="container-fluid">
        <%--<form id="QueryBuilderReports" method="post" runat="server">--%>
        <h5 class="h5">
            QueryBuilder Reports
        </h5>
        <div class="border center formbg">
            <table class="table-condensed" width="100%">
                <tbody>
                    <tr>
                        <td class="border pad5 whitebg" valign="top" colspan="2">
                            <table width="100%" class="table-condensed">
                                <col width="20%" />
                                <col width="80%" />
                                <tbody>
                                    <tr>
                                        <td align="left">
                                            <label>
                                                ReportsCategory:</label>
                                        </td>
                                        <td align="left">
                                            <asp:DropDownList ID="ddlCategory" Width="30%" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"
                                                AutoPostBack="True">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:Label ID="Label1" runat="server" Text="Reports Name:" Font-Bold="True"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Panel ID="dyanamicRadiobutton" CssClass="left whitebg" align="left" runat="server">
                                                <asp:RadioButtonList RepeatLayout="Flow" Width="80%" ID="rdButtonList" runat="server">
                                                </asp:RadioButtonList>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table width="100%" class="table-condensed">
                <tr>
                    <td align="center">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"
                            CssClass="btn btn-primary" Height="30px" Width="9%" Style="text-align: left;" />
                        <label class="glyphicon glyphicon-download" style="margin-left: -2.5%; margin-right: 2%;
                            vertical-align: sub; color: #fff; margin-top: 1%;">
                        </label>
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click"
                            CssClass="btn btn-primary" Height="30px" Width="9%" Style="text-align: left;" />
                        <label class="glyphicon glyphicon-remove-circle" style="margin-left: -2.5%; margin-right: 2%;
                            vertical-align: sub; color: #fff; margin-top: 1%;">
                        </label>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
