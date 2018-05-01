<%@ Page AutoEventWireup="true" MasterPageFile="~/MasterPage/IQCare.master" Inherits="frmReport_PatientARVPickup"
    Language="C#" CodeBehind="frmReport_PatientARVPickup.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="IQCareContentPlaceHolder" runat="Server">
    <%--   <form runat="server" id="frmPatientARVPickup">--%>
    <div class="container-fluid">
        <%-- <h1 class="margin">Patient ARV Pick-up</h1>--%>
        <div class="border center formbg">
            <table class="table-condensed" width="100%">
                <tr>
                    <td class="border center whitebg" style="padding-left: 20" align="left" valign="top">
                        <%--<label id="lblSelect"> All Facility/Satellite:</label>--%>
                        <input id="chkAll" enableviewstate="true" type="checkbox" value="None" name="All"
                            runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="border center whitebg" style="padding-bottom: 1%;">
                        <label>
                            Date Ordered From :</label>
                        <asp:TextBox ID="txtStartDate" MaxLength="11" Width="75px" runat="server"></asp:TextBox>
                        <img src="../Images/cal_icon.gif" height="22" alt="Date Helper" hspace="3" border="0"
                            onclick="w_displayDatePicker('<%= txtStartDate.ClientID%>');" style="vertical-align: bottom;
                            margin-bottom: 2px;" />
                        <span class="smallerlabel">(DD-MMM-YYYY)</span>
                        <label style="margin-left: 5%;">
                            To</label>
                        <asp:TextBox ID="txtEndDate" MaxLength="11" Width="75px" runat="server"></asp:TextBox>
                        <img src="../Images/cal_icon.gif" height="22" alt="Date Helper" hspace="3" border="0"
                            onclick="w_displayDatePicker('<%= txtEndDate.ClientID%>');" style="vertical-align: bottom;
                            margin-bottom: 2px;" />
                        <span class="smallerlabel">(DD-MMM-YYYY)</span>
                    </td>
                </tr>
                <tr>
                    <td colspan="6" class="pad5 center">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmitClick"
                            CssClass="btn btn-primary" Height="30px" Width="9%" Style="text-align: left;" />
                        <label class="glyphicon glyphicon-log-in" style="margin-left: -3%; margin-right: 2%;
                            vertical-align: sub; color: #fff;">
                        </label>
                        <asp:Button ID="btnCancel" runat="server" Text="Back" OnClick="btnCancel_Click" CssClass="btn btn-primary"
                            Height="30px" Width="8%" Style="text-align: left;" />
                        <label class="glyphicon glyphicon-remove-circle" style="margin-left: -3%; margin-right: 2%;
                            vertical-align: sub; color: #fff;">
                        </label>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
