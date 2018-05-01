<%@ Page Language="C#" MasterPageFile="~/MasterPage/IQCare.master" AutoEventWireup="True"
    Inherits="FacilityMaster_List" Title="Untitled Page" CodeBehind="frmAdmin_FacilityList.aspx.cs" %>

<%@ MasterType VirtualPath="~/MasterPage/IQCare.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IQCareContentPlaceHolder" runat="Server">
    <div class="container-fluid">
        <h4 class="h4">
            Facility/Satellite</h4>
        <div class="center">
            <table id="tblSystem" runat="server" width="100%" class="table-condensed">
                <tbody>
                    <tr>
                        <td class="formbg center">
                            <div class="whitebg">
                                <label>
                                    System Type:</label>
                                <asp:DropDownList ID="cmbSystem" runat="server" Width="20%">
                                </asp:DropDownList>
                            </div>
                        </td>
                    </tr>
                    <tr class="formbg center">
                        <td>
                            <div class="whitebg pad20">
                                <asp:Button ID="btnSystemSave" runat="server" Text="Set System" OnClick="btnSystemSave_Click" />
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table width="100%" class="table-condensed">
                <tbody>
                    <tr>
                        <td class="border pad5 formbg">
                            <div class="GridView whitebg" style="cursor: pointer;">
                                <div class="grid">
                                    <div class="rounded">
                                        <div class="top-outer">
                                            <div class="top-inner">
                                                <div class="top">
                                                    <h2>
                                                        Facility List</h2>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mid-outer">
                                            <div class="mid-inner">
                                                <div class="mid" style="height: 300px; overflow: auto">
                                                    <div id="div-gridview" class="GridView whitebg">
                                                        <asp:GridView ID="grdMasterFacility" runat="server" OnRowDataBound="grdMasterFacility_RowDataBound"
                                                            AutoGenerateColumns="False" Width="100%" PageSize="1" AllowSorting="True" CssClass="datatable"
                                                            CellPadding="0" CellSpacing="0" BorderWidth="0" GridLines="None" OnSelectedIndexChanging="grdMasterFacility_SelectedIndexChanging"
                                                            OnSorting="grdMasterFacility_Sorting">
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
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="pad5 center">
                            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" CssClass="btn btn-primary"
                                Height="30px" Width="8%" Style="text-align: left;" /><span class="glyphicon glyphicon-plus"
                                    style="vertical-align: middle; color: #fff; margin-top: .25%; margin-left:-3%;"></span>
                            <asp:Button ID="btnCancel" runat="server" Text="Close" OnClick="btnCancel_Click"
                                CssClass="btn btn-primary" Height="30px" Width="8%" Style="text-align: left; margin-left:2%;" /><span
                                    class="glyphicon glyphicon-remove" style="margin-left:-2%; vertical-align: middle;
                                    color: #fff; margin-top:.25%;"></span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
