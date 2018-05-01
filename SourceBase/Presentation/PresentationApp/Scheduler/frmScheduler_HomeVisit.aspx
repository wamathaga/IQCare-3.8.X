<%@ Page Language="C#" MasterPageFile="~/MasterPage/IQCare.master" AutoEventWireup="true"
    Inherits="frmScheduler_HomeVisit" Title="Untitled Page" CodeBehind="frmScheduler_HomeVisit.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="IQCareContentPlaceHolder" runat="Server">
    <div class="container-fluid">
        <div class="border center formbg">
            <asp:Label ID="lblH2" runat="server"></asp:Label>
            <!-- DAL: using tables for form layout. Note that there are classes on labels and td. For custom fields, 
            just use the 2 column layout, if there is an uneven number of cells, set last cell colspan="2" and align="center". Probably should talk through this -->
            <table cellspacing="6" cellpadding="0" width="100%" border="0">
                <tbody>
                    <tr>
                        <td class="form" width="50%">
                            <label>
                                CHW/CHV/Nurse Team:</label>
                            <asp:DropDownList ID="ddlCHW" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td class="form" valign="middle">
                            <label id="Vdate" class="required">
                                *Home Visit Start Date:</label>
                            <input id="StartDate" maxlength="11" size="10" name="StartDate" runat="server" />
                            <img onclick="w_displayDatePicker('<%=StartDate.ClientID%>');" height="22" alt="Date Helper"
                                hspace="3" src="../images/cal_icon.gif" width="22" border="0" style="vertical-align: sub;">
                            <span class="smallerlabel">(DD/MM/YYYY)</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="form" width="50%" style="white-space: nowrap">
                            <label>
                                Alternative CHW/CHV/Nurse Team:</label>
                            <asp:DropDownList ID="ddlAlternateCHW" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td class="form">
                            <label>
                                Number of Weeks:</label>
                            <asp:TextBox ID="txtNumofWeeks" MaxLength="2" Width="10%" runat="server" OnTextChanged="txtNumofWeeks_change"
                                AutoPostBack="true"></asp:TextBox>
                            <label>
                                Number of Visits per Week:</label>
                            <asp:TextBox ID="txtVisitPerWeek" MaxLength="2" Width="10%" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="form" colspan="2" width="100%">
                            <div id="VisitPerWeekShow" style="display: none">
                                <label>
                                    Visits by Week: &nbsp;</label>
                                <div id="VisitPerWeekShow1" style="display: none">
                                    <label id="lblVisitsPerWeek1" runat="server">
                                        Week 1:</label>
                                    <select name="VisitsPerWeek" id="VisitsPerWeek1" runat="server">
                                        <option value="0">-Select-</option>
                                        <option value="1">1 day</option>
                                        <option value="2">2 days</option>
                                        <option value="3">3 days</option>
                                        <option value="4">4 days</option>
                                        <option value="5">5 days</option>
                                        <option value="6">6 days</option>
                                        <option value="7">7 days</option>
                                    </select>
                                </div>
                                <div id="VisitPerWeekShow2" style="display: none">
                                    <label id="lblVisitsPerWeek2" runat="server">
                                        Week 2:</label>
                                    <select name="VisitsPerWeek" id="VisitsPerWeek2" runat="server">
                                        <option value="0">-Select-</option>
                                        <option value="1">1 day</option>
                                        <option value="2">2 days</option>
                                        <option value="3">3 days</option>
                                        <option value="4">4 days</option>
                                        <option value="5">5 days</option>
                                        <option value="6">6 days</option>
                                        <option value="7">7 days</option>
                                    </select>
                                </div>
                                <div id="VisitPerWeekShow3" style="display: none">
                                    <label id="lblVisitsPerWeek3" runat="server">
                                        Week 3:</label>
                                    <select name="VisitsPerWeek" id="VisitsPerWeek3" runat="server">
                                        <option value="0">-Select-</option>
                                        <option value="1">1 day</option>
                                        <option value="2">2 days</option>
                                        <option value="3">3 days</option>
                                        <option value="4">4 days</option>
                                        <option value="5">5 days</option>
                                        <option value="6">6 days</option>
                                        <option value="7">7 days</option>
                                    </select>
                                </div>
                                <div id="VisitPerWeekShow4" style="display: none">
                                    <label id="lblVisitsPerWeek4" runat="server">
                                        Week 4:</label>
                                    <select name="VisitsPerWeek" id="VisitsPerWeek4" runat="server">
                                        <option value="0">-Select-</option>
                                        <option value="1">1 day</option>
                                        <option value="2">2 days</option>
                                        <option value="3">3 days</option>
                                        <option value="4">4 days</option>
                                        <option value="5">5 days</option>
                                        <option value="6">6 days</option>
                                        <option value="7">7 days</option>
                                    </select>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="form" colspan="2">
                            <asp:Panel ID="pnlCustomList" Visible="false" runat="server" Height="100%" Width="100%"
                                Wrap="true">
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td class="pad5 center" colspan="2">
                            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click1" CssClass="btn btn-primary"
                                Width="8%" Height="30px" Style="text-align: left;" />
                            <label class="glyphicon glyphicon-floppy-disk" style="margin-left: -3%; margin-right: 2%;
                                vertical-align: sub; color: #fff;">
                            </label>
                            <asp:Button ID="btnComplete" runat="server" Text="Data Quality Check" OnClick="btnComplete_Click"
                                CssClass="btn btn-primary" Width="17%" Height="30px" Style="text-align: left;" />
                            <label class="glyphicon glyphicon-floppy-saved" style="margin-left: -3%; margin-right: 2%;
                                vertical-align: sub; color: #fff;">
                            </label>
                            <asp:Button ID="btnCancel" runat="server" Text="Close" OnClick="btnCancel_Click"
                                CssClass="btn btn-primary" Width="8%" Height="30px" Style="text-align: left;" />
                            <label class="glyphicon glyphicon-remove-circle" style="margin-left: -3%; margin-right: 2%;
                                vertical-align: sub; color: #fff;">
                            </label>
                            <asp:Button ID="theBtn" runat="server" CssClass="textstylehidden" OnClick="theBtn_Click"
                                Width="8%" Height="30px" Style="text-align: left;" />
                            <label id="lblOKClick" class="glyphicon glyphicon-ok-sign" runat="server" style="margin-left: -4%;
                                margin-right: 3%; vertical-align: middle; color: #fff; margin-top: .6%; visibility: hidden;">
                            </label>
                            <asp:Button ID="theBtn1" runat="server" CssClass="textstylehidden" OnClick="theBtn1_Click"
                                Width="8%" Height="30px" Style="text-align: left;" />
                            <label id="lblDQClick" class="glyphicon glyphicon-random" runat="server" style="margin-left: -4%;
                                margin-right: 3%; vertical-align: middle; color: #fff; margin-top: .6%; visibility: hidden;">
                            </label>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
