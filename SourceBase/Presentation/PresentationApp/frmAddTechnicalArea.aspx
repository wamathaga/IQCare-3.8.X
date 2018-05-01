<%@ Page Language="C#" MasterPageFile="~/MasterPage/IQCare.master" AutoEventWireup="true"
    Inherits="frmAddTechnicalArea" CodeBehind="frmAddTechnicalArea.aspx.cs" %>

<%@ Register Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ MasterType VirtualPath="~/MasterPage/IQCare.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IQCareContentPlaceHolder" runat="Server">
    <script language="javascript" type="text/javascript">
        function fnChange() {

        }
        function fncheck() {
            //var id = document.getElementById('ctl00_facilityheaderfooter_ddlTecharea').value;
            var id = document.getElementById('ctl00_IQCareContentPlaceHolder_ddlTecharea').value;
            if (id == "0") {
                alert("Select Service");
                return false;
            }
        }
    </script>
    <div class="container-fluid">
        <h5 class="nomargin" id="tHeading" runat="server">
            Select Service</h5>
        <div class="container-fluid">
            <table class="table-condensed" width="100%">
                <tr>
                    <td>
                        <label>
                            Patient Name:
                            <asp:Label ID="lblname" runat="server"></asp:Label>
                        </label>
                        <label>
                            Sex:
                            <asp:Label ID="lblsex" runat="server"></asp:Label>
                        </label>
                        <label>
                            DOB:
                            <asp:Label ID="lbldob" runat="server"></asp:Label>
                        </label>
                        <label>
                            IQCare Reference Number:
                            <asp:Label ID="lblIQno" runat="server"></asp:Label>
                        </label>
                    </td>
                </tr>
            </table>
            <div class="border center formbg">
                <%--<div>--%>
                <table width="100%" class="table-condensed">
                    <tr>
                        <%--<td align="center" colspan="2" class="border pad5 whitebg">--%>
                        <td align="center" colspan="2" class="border center pad5 whitebg">
                            <table width="100%" class="table-condensed">
                                <tr>
                                    <td align="right" width="50%">
                                        <label class="required">
                                            Service:</label>
                                    </td>
                                    <td align="left" width="50%">
                                        <asp:DropDownList ID="ddlTecharea" onchange="fnChange();" runat="server" Style="z-index: 2"
                                            AutoPostBack="True" OnSelectedIndexChanged="ddlTecharea_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <%--<td align="center" colspan="2" class="border pad5 whitebg">--%>
                        <td align="center" colspan="2" class="border center pad5 whitebg">
                            <table width="100%" class="table-condensed">
                                <tr>
                                    <td align="right" valign="bottom" width="50%">
                                        <label for="pharmReportedbyDate" class="required" id="lblEnrollment" runat="server">
                                            Enrollment Date:</label>
                                    </td>
                                    <td align="left" width="50%">
                                        <input id="txtenrollmentDate" onblur="DateFormat(this,this.value,event,false,'3')"
                                            onkeyup="DateFormat(this,this.value,event,false,'3')" onfocus="javascript:vDateType='3'"
                                            maxlength="11" size="11" name="pharmReportedbyDate" runat="server" />
                                        <img id="appDateimg2" height="22" runat="server" alt="Date Helper" hspace="5" src="images/cal_icon.gif"
                                            width="22" border="0" name="appDateimg" visible="true" /><span class="smallerlabel"
                                                id="appDatespan2">(DD-MMM-YYYY)</span> &nbsp;
                                        <asp:Button ID="btnReEnollPatient" runat="server" Text="Re-Enroll Patient" OnClick="btnReEnollPatient_Click"
                                            CssClass="btn btn-success" Width="32.5%" Height="30px" Style="text-align: left;" />
                                        <span class="glyphicon glyphicon-check" style="vertical-align: sub; margin-left: -1%;
                                            color: #fff"></span>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="trReEnroll" runat="server">
                        <%--<td align="center" colspan="2" class="border pad5 whitebg">--%>
                        <td align="center" colspan="2" class="border center pad5 whitebg">
                            <table width="100%" class="table-condensed">
                                <tr>
                                    <td align="right" valign="bottom" width="50%">
                                        <label for="ReEnrollDate" class="required">
                                            Re-Enrollment Date:</label>
                                    </td>
                                    <td align="left" width="50%">
                                        <input id="txtReEnrollmentDate" onblur="DateFormat(this,this.value,event,false,'3')"
                                            onkeyup="DateFormat(this,this.value,event,false,'3')" onfocus="javascript:vDateType='3'"
                                            maxlength="11" size="11" name="ReEnrollDate" runat="server" />
                                        <img id="imgDtReEnroll" height="22" runat="server" alt="Date Helper" hspace="5" src="images/cal_icon.gif"
                                            width="22" border="0" name="appDateimg" visible="true" /><span class="smallerlabel"
                                                id="Span1">(DD-MMM-YYYY)</span>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table width="100%" class="table-condensed">
                    <tr>
                        <td colspan="2">
                            <asp:Panel ID="pnlIdentFields" runat="server" EnableViewState="true">
                            </asp:Panel>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Button ID="btnSaveContinue" runat="server" Text="Save and Continue" OnClientClick="return fncheck();"
                                OnClick="btnSaveContinue_Click" CssClass="btn btn-primary" Height="30px" Width="18%"
                                Style="text-align: left;" />
                            <label class="glyphicon glyphicon-floppy-disk" style="vertical-align: middle; margin-left: -3%;
                                color: #fff; margin-top: .75%; margin-right: 2%;">
                            </label>
                            <asp:Button ID="btnContinue" runat="server" Text="Continue" OnClick="btnContinue_Click"
                                CssClass="btn btn-primary" Height="30px" Width="11%" Style="text-align: left;" />
                            <asp:Label ID="lblContinue" runat="server" class="glyphicon glyphicon-list" Style="margin-left: -3%;
                                vertical-align: sub; color: #fff;">
                            </asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
