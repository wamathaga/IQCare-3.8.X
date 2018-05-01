<%@ Page Language="C#" MasterPageFile="~/MasterPage/IQCare.master" AutoEventWireup="True"
    Inherits="frmAdmin_UserGroupList" Title="Untitled Page" CodeBehind="frmAdmin_UserGroupList.aspx.cs" %>

<%@ MasterType VirtualPath="~/MasterPage/IQCare.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IQCareContentPlaceHolder" runat="Server">
    <div>
        <h5 class="h4 text-center">
            List of User Groups</h5>
            <div class="container-fluid center">
                <table class="table-responsive" width="100%">
                    <tbody>
                        <tr>
                            <td class="pad5 formbg border">
                                <div class="grid">
                                    <div class="rounded">
                                        <div class="top-outer">
                                            <div class="top-inner">
                                                <div class="top">
                                                    <h2>
                                                        User Group List</h2>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mid-outer">
                                            <div class="mid-inner">
                                                <div class="mid" style="height: 300px; overflow: auto">
                                                    <div id="div-gridview" class="GridView whitebg">
                                                        <asp:GridView ID="grdUsergroup" runat="server" AutoGenerateColumns="False" Width="100%"
                                                            AllowSorting="true" PageIndex="1" CssClass="datatable" CellPadding="0" CellSpacing="0"
                                                            BorderWidth="0" GridLines="None" OnRowDataBound="grdUsergroup_RowDataBound" OnSelectedIndexChanging="grdUsergroup_SelectedIndexChanging"
                                                            BackColor="White" OnSorting="grdUsergroup_Sorting">
                                                            <HeaderStyle HorizontalAlign="Left" />
                                                            <RowStyle CssClass="row" />
                                                        </asp:GridView>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="bottom-outer">
                                            <div class="bottom-inner">
                                                <div class="bottom">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="pad5 center">
                                <asp:Button ID="btnAddgroup" Text="Add" runat="server" OnClick="btnAddgroup_Click"
                                    CssClass="btn btn-primary" Height="30px" Width="7%" Style="text-align: left;
                                    margin-left: 10%;" /><span class="glyphicon glyphicon-plus" style="margin-left: -2%;
                                        vertical-align: middle; color: #fff; "></span>
                                <asp:Button ID="btnCancelgroup" Text="Close" runat="server" OnClick="btnCancelgroup_Click"
                                    CssClass="btn btn-primary" Height="30px" Width="8%" Style="text-align: left;
                                    margin-left: 2%;" /><span class="glyphicon glyphicon-remove" style="margin-left: -2%;
                                        vertical-align: middle; color: #fff; margin-top:.25%;"></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
    </div>
</asp:Content>
