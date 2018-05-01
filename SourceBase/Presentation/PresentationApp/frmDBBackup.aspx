<%@ Page Language="C#" MasterPageFile="~/MasterPage/IQCare.master" AutoEventWireup="true"
    Inherits="frmDBBackup" CodeBehind="frmDBBackup.aspx.cs" %>

<%@ MasterType VirtualPath="~/MasterPage/IQCare.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IQCareContentPlaceHolder" runat="Server">
    <div class="container-fluid">
        <h5 class="h5">
            System Back-Up/Restore</h5>
        <div class="center">
            <div class="border formbg">
                <table class="table-condensed formbg" width="100%">
                    <tr>
                        <td class="whitebg center border" valign="top" width="100%">
                            <asp:Label ID="Label1" runat="server" Text="Backup Directory :"></asp:Label>
                            <asp:TextBox ID="txtbakuppath" runat="server" Width="406px" Text="c:\IQCareDBBackup"></asp:TextBox>
                            <div>
                                <input id="chkDeidentified" type="checkbox" runat="server" />
                                <label>
                                    Make Backup of the Database with Identifiers Removed</label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="center">
                            <asp:Button ID="btnBackup" runat="server" Text="Backup" OnClick="btnBackup_Click"
                                CssClass="btn btn-primary" Height="30px" Width="9%" Style="text-align: left;" />
                            <label class="glyphicon glyphicon-cloud-download" style="margin-left: -2.5%; margin-right: 2%;
                                vertical-align: sub; color: #fff; margin-top: 1%;">
                            </label>
                        </td>
                    </tr>
                </table>
            </div>
            <br />
            <div class="border formbg center">
                <table class="table-condensed formbg" width="100%">
                    <tr>
                        <td class="whitebg center border" valign="top" width="100%">
                            <asp:Label ID="Label2" runat="server" Text="Restore File :"></asp:Label>
                            <asp:TextBox ID="txtRestore" runat="server" Width="406px"></asp:TextBox>
                            <asp:Button ID="btnBrowse" runat="server" Text="Browse" OnClick="btnBrowse_Click"
                                CssClass="btn btn-primary" Height="30px" Width="9%" Style="text-align: left;" />
                            <label class="glyphicon glyphicon-tags" style="margin-left: -2.5%; margin-right: 2%;
                                vertical-align: sub; color: #fff; margin-top: 1%;">
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="center">
                            <asp:Button ID="btnRestore" runat="server" Text="Restore" OnClick="btnRestore_Click"
                                CssClass="btn btn-primary" Height="30px" Width="9%" Style="text-align: left;" />
                            <label class="glyphicon glyphicon-download-alt" style="margin-left: -2.5%; margin-right: 2%;
                                vertical-align: sub; color: #fff; margin-top: 1%;">
                            </label>
                        </td>
                    </tr>
                </table>
            </div>
            <div>
                <table width="100%" class="table-condensed">
                    <tr>
                        <td align="center">
                            <asp:Button ID="btnClose" runat="server" Text="Close" OnClick="btnClose_Click" CssClass="btn btn-primary"
                                Height="30px" Width="9%" Style="text-align: left;" />
                            <label class="glyphicon glyphicon-remove-circle" style="margin-left: -2.5%; margin-right: 2%;
                                vertical-align: sub; color: #fff; margin-top: 1%;">
                            </label>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <script language="javascript" type="text/javascript">
        function GetControl() {
            document.forms[0].submit();
        }
    </script>
</asp:Content>
