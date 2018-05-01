<%@ Page Language="C#" MasterPageFile="~/MasterPage/IQCare.master" AutoEventWireup="True"
    Inherits="frmAdmin_CustomList" Title="Untitled Page" CodeBehind="frmAdmin_CustomList.aspx.cs" %>

<%@ MasterType VirtualPath="~/MasterPage/IQCare.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IQCareContentPlaceHolder" runat="Server">
    <%--<link type="text/css" href="../Style/_assets/css/grid.css" rel="stylesheet" />
<link type="text/css" href="../Style/_assets/css/round.css" rel="stylesheet" />--%>
    <%--<form id ="listDieaseMaster" method="post" runat="server"> --%>
    <div class="container-fluid">
        <h5 class="margin" style="padding-left: 10px;">
            <asp:Label ID="lblHeader" runat="server" Text=""></asp:Label></h5>
        <div class="center" style="padding: 5px;">
            <div class="border center">
                <table class="table-condensed" width="100%">
                    <tbody>
                        <tr>
                            <td class="pad5 formbg border">
                                <div class="grid">
                                    <div class="rounded">
                                        <div class="top-outer">
                                            <div class="top-inner">
                                                <div class="top">
                                                    <h2>
                                                    </h2>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mid-outer">
                                            <div class="mid-inner">
                                                <div class="mid">
                                                    <div id="grd_custom" class="GridView whitebg" style="cursor: pointer; height: 280px;
                                                        overflow: auto">
                                                        <asp:GridView ID="grdCustom" runat="server" AutoGenerateColumns="False" AllowSorting="true"
                                                            Width="100%" PageIndex="1" BorderWidth="0" GridLines="None" CssClass="datatable"
                                                            CellPadding="0" CellSpacing="0" OnRowDataBound="grdCustom_RowDataBound" OnSelectedIndexChanging="grdCustom_SelectedIndexChanging"
                                                            OnSorting="grdCustom_Sorting">
                                                            <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
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
                                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" CssClass="btn btn-primary"
                                    Height="30px" Width="8%" Style="text-align: left;" />
                                <label class="glyphicon glyphicon-plus" style="margin-left: -3%; margin-right: 2%;
                                    vertical-align: sub; color: #fff;">
                                </label>
                                <asp:Button ID="btnCancel" runat="server" Text="Close" OnClick="btnCancel_Click"
                                    CssClass="btn btn-primary" Height="30px" Width="8%" Style="text-align: left;" />
                                <label class="glyphicon glyphicon-remove-circle" style="margin-left: -3%; margin-right: 2%;
                                    vertical-align: sub; color: #fff;">
                                </label>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>