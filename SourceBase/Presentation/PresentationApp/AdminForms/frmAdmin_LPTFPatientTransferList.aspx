<%@ Page Language="C#" MasterPageFile="~/MasterPage/IQCare.master" AutoEventWireup="True"
    Inherits="AdminForms_frmAdmin_LPFTPatientTransferList" Title="Untitled Page"
    CodeBehind="frmAdmin_LPTFPatientTransferList.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="IQCareContentPlaceHolder" runat="Server">
    <%--<link type="text/css" href="../Style/_assets/css/grid.css" rel="stylesheet" />
<link type="text/css" href="../Style/_assets/css/round.css" rel="stylesheet" />
<form id ="EmpMasterList" method="post" runat="server"> --%>
    <div class="container-fluid">
        <h5 class="margin" style="padding-left: 10px;">
            LPTF Patient Transfer</h5>
        <div class="center">
            <table width="100%" cellpadding="0" cellspacing="5">
                <tbody>
                    <tr>
                        <td class="border pad5 formbg">
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
                                            <div class="mid" style="height: 300px; overflow: auto">
                                                <div id="grd_custom" class="gridview whitebg" style="cursor: pointer; height: 280px;
                                                    overflow: auto">
                                                    <asp:GridView ID="grdMasterLPTFPatientTransfer" runat="server" AllowSorting="True"
                                                        AutoGenerateColumns="False" Width="100%" BackColor="White" PageIndex="1" BorderWidth="0"
                                                        GridLines="None" CssClass="datatable" CellPadding="0" CellSpacing="0" OnRowDataBound="grdMasterLPTFPatientTransfer_RowDataBound"
                                                        OnSelectedIndexChanging="grdMasterLPTFPatientTransfer_SelectedIndexChanging"
                                                        OnSorting="grdMasterLPTFPatientTransfer_Sorting">
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
</asp:Content>
