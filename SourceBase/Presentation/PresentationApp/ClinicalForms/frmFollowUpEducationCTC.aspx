<%@ Page Language="C#" MasterPageFile="~/MasterPage/IQCare.master" AutoEventWireup="true"
    Inherits="ClinicalForms_frmFollowUpEducationCTC" EnableEventValidation="false"
    CodeBehind="frmFollowUpEducationCTC.aspx.cs" %>

<%@ MasterType VirtualPath="~/MasterPage/IQCare.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IQCareContentPlaceHolder" runat="Server">
    <script language="javascript" type="text/javascript">
        function ShowHide(id) {
            var ShowOtherConType = 'tdotherctopic';
            if (id.value == 2) {
                document.getElementById(ShowOtherConType).style.display = 'inline';
            }
            else {
                document.getElementById(ShowOtherConType).style.display = 'none';
            }
        }
        function WindowPrint() {
            window.print();
        }
        function Redirect(id) {
            window.location.href = "../ClinicalForms/frmPatient_Home.aspx";
        }
    </script>
    <div class="container-fluid">
        <%-- <form id="frmfollowupeducation" method="post" runat="server">    --%>
        <div class="border center formbg">
            <table class="table-condensed" width="100%">
                <tbody>
                    <tr>
                        <td class="border pad5 whitebg" style="width: 50%">
                            <label id="lblcouncellingtype" class="required" for="counsellingtype">
                                Counselling Type:</label>
                            <asp:DropDownList ID="ddlcouncellingtype" runat="server" Width="255px" AutoPostBack="true"
                                OnSelectedIndexChanged="ddlcouncellingtype_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td class="border pad5 whitebg">
                            <label id="lblcouncellingtopic" class="required" for="counsellingtopic">
                                Counselling Topic:</label>
                            <asp:DropDownList ID="ddlcouncellingtopic" runat="server" AutoPostBack="true" Width="255px"
                                OnSelectedIndexChanged="ddlcouncellingtopic_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td id="tdotherctopic" runat="server" visible="false" class="border center whitebg"
                            colspan="2">
                            <label class="left">
                                Other Counselling Topic:</label>
                            <asp:TextBox ID="txtotherctopic" runat="server" Width="500px"></asp:TextBox><a></a>
                        </td>
                    </tr>
                    <tr>
                        <td class="border pad5 whitebg">
                            <label id="lblvisitdate" class="required" for="visitdate">
                                Visit Date:</label>
                            <asp:TextBox ID="txtvisitdate" MaxLength="11" runat="server" Width="70px"></asp:TextBox>
                            <img onclick="w_displayDatePicker('<%= txtvisitdate.ClientID %>');" height="22" alt="Date Helper"
                                hspace="3" src="../images/cal_icon.gif" width="20" border="0" style="vertical-align: sub;" />
                            <span class="smallerlabel">DD-MMM-YYYY </span>
                        </td>
                        <td class="border pad5 whitebg">
                            <label id="lblcomments" for="comments">
                                Comments:</label>
                            <asp:TextBox ID="txtcomments" runat="server" Width="255px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="border pad5 whitebg" colspan="2">
                            <asp:Button ID="btnaddtopic" runat="server" Text="Add Topic" OnClick="btnadd_Click"
                                CssClass="btn btn-primary" Width="11%" Height="30px" Style="text-align: left;" />
                            <label class="glyphicon glyphicon-plus" style="margin-left: -2.8%; vertical-align: sub;
                                color: #fff;">
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="pad5 formbg border " colspan="2">
                            <div class="gridview whitebg">
                                <div class="whitebg" style="height: 300px; overflow: auto">
                                    <asp:GridView ID="grdFollowupEducation" GridLines="Both" CellSpacing="1" runat="server" 
                                        OnRowDataBound="grdFollowupEducation_RowDataBound" AutoGenerateColumns="False"
                                        Width="100%" AllowSorting="True" BorderColor="#666699" OnSelectedIndexChanging="grdFollowupEducation_SelectedIndexChanging"
                                        OnSorting="grdFollowupEducation_Sorting" OnRowDeleting="grdFollowupEducation_RowDeleting">
                                        <HeaderStyle CssClass="tableheaderstyle" HorizontalAlign="Left"></HeaderStyle>
                                    </asp:GridView>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="pad5 center" colspan="2" style="height: 53px">
                            <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" CssClass="btn btn-primary"
                                Height="30px" Width="8%" Style="text-align: left;" />
                            <label class="glyphicon glyphicon-floppy-disk" style="vertical-align: middle; margin-left: -3%;
                                color: #fff; margin-top: .75%; margin-right: 2%;">
                            </label>
                            <asp:Button ID="btnClose" runat="server" Text="Close" OnClick="btnClose_Click" CssClass="btn btn-primary"
                                Width="8%" Height="30px" Style="text-align: left;" />
                            <label class="glyphicon glyphicon-remove-circle" style="margin-left: -3%; margin-right: 2%;
                                vertical-align: sub; color: #fff;">
                            </label>
                            <asp:Button ID="btnPrint" Text="Print" runat="server" OnClientClick="WindowPrint()"
                                CssClass="btn btn-primary" Width="8%" Height="30px" Style="text-align: left;" />
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
