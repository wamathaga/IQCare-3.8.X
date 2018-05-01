<%@ Page Language="C#" MasterPageFile="~/MasterPage/IQCare.master" AutoEventWireup="true"
    Inherits="ClinicalForms_frmClinical_Transfer" CodeBehind="frmClinical_Transfer.aspx.cs" %>

<%@ MasterType VirtualPath="~/MasterPage/IQCare.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IQCareContentPlaceHolder" runat="Server">
    <script language="javascript" type="text/javascript">
        function WindowPrint() {
            window.print();
        } 
    </script>
    <div class="container-fluid" style="padding: 8px;">
        <div class="border center formbg">
            <table width="100%" class="table-condensed">
                <tbody>
                    <tr id="tradd" runat="server">
                        <td class="pad5 whitebg border" style="width: 65%">
                            <table width="100%" class="table-condensed">
                                <tr>
                                    <td>
                                        <label id="lblLocation" for="Location">
                                            Location:
                                        </label>
                                    </td>
                                    <td>
                                        <span id="Current" class="patientInfo">Current</span>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtLocationName" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <span id="New" class="required">New</span>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddSatellite" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td class="pad5 whitebg border" style="width: 35%">
                            <label id="lblTransferDate" class="required" for="TransferDate">
                                Transfer Date:</label>
                            <asp:TextBox ID="txtTransferDate" MaxLength="11" runat="server" Width="25%"></asp:TextBox>
                            <img onclick="w_displayDatePicker('<%= txtTransferDate.ClientID %>');" alt="Date Helper"
                                height="22" hspace="3" src="../images/cal_icon.gif" width="22" border="0" style="vertical-align: sub;" />
                            <span class="smallerlabel">(DD-MMM-YYYY)</span>
                        </td>
                    </tr>
                    <tr id="tredit" runat="server">
                        <td class="pad5 whitebg border">
                            <label id="lblLocationEdit" for="Location">
                                Location: <span id="CurrentEdit" class="smallerlabel" style="font-weight: bold">Current
                                </span>
                                <asp:TextBox ID="txtLocationNameEdit" runat="server"></asp:TextBox>
                            </label>
                            <span id="From" class="" style="font-weight: bold">From </span>
                            <asp:TextBox ID="txtFromSatellite" runat="server"></asp:TextBox>
                            <span id="To" class="required" style="font-weight: bold">To </span>
                            <asp:DropDownList ID="ddSatelliteEdit" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td class="pad5 whitebg border">
                            <label id="LblTransDate" class="required" for="TransferDate">
                                Transfer Date:</label>
                            <asp:TextBox ID="TxtTransDateEdit" MaxLength="11" runat="server" Width="25%"></asp:TextBox>
                            <img onclick="w_displayDatePicker('<%= TxtTransDateEdit.ClientID %>');" alt="Date Helper"
                                height="22" hspace="3" src="../images/cal_icon.gif" width="22" border="0" />
                            <span class="smallerlabel">(DD-MMM-YYYY)</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="center" colspan="2">
                            <div class="grid">
                                <div class="rounded">
                                    <div class="top-outer">
                                        <div class="top-inner">
                                            <div class="top">
                                                <h2>
                                                    Transfers</h2>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mid-outer">
                                        <div class="mid-inner">
                                            <div class="mid" style="cursor: pointer; height: 280px; border: 1px solid #666699;">
                                                <div id="div-gridview" class="gridview whitebg">
                                                    <asp:GridView ID="GrdTransfer" runat="server" AutoGenerateColumns="False" AllowSorting="true"
                                                        Width="100%" PageIndex="1" HorizontalAlign="Left" BorderWidth="0" GridLines="None"
                                                        CssClass="datatable" CellPadding="0" CellSpacing="0" BackColor="White" OnRowDataBound="GrdTransfer_RowDataBound"
                                                        OnSelectedIndexChanging="GrdTransfer_SelectedIndexChanging" OnSorting="GrdTransfer_Sorting">
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
                        <td class="pad5 center" colspan="2">
                            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" CssClass="btn btn-primary"
                                Height="30px" Width="8%" Style="text-align: left;" />
                            <label class="glyphicon glyphicon-floppy-disk" style="vertical-align: middle; margin-left: -3%;
                                color: #fff; margin-top: .75%; margin-right: 2%;">
                            </label>
                            <asp:Button ID="btnClose" runat="server" Text="Close" OnClick="btnClose_Click" CssClass="btn btn-primary"
                                Height="30px" Width="8%" Style="text-align: left;" />
                            <label class="glyphicon glyphicon-remove-circle" style="margin-left: -3%; margin-right: 2%;
                                vertical-align: sub; color: #fff;">
                            </label>
                            <asp:Button ID="theBtn" Text="OK" CssClass="textstylehidden" runat="server" OnClick="theBtn_Click" />
                            <asp:Button ID="btnPrint" Text="Print" runat="server" OnClientClick="WindowPrint()"
                                CssClass="btn btn-primary" Height="30px" Width="8%" Style="text-align: left;" />
                            <label class="glyphicon glyphicon-print" style="margin-left: -3%; vertical-align: sub;
                                color: #fff;">
                            </label>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
