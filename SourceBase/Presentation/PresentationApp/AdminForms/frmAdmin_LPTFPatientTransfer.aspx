<%@ Page Language="C#" MasterPageFile="~/MasterPage/IQCare.master" AutoEventWireup="True"
    Inherits="AdminForms_frmAdmin_LPFTPatientTransfer" Title="Untitled Page" CodeBehind="frmAdmin_LPTFPatientTransfer.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="IQCareContentPlaceHolder" runat="Server">
    <script language="javascript" type="text/javascript">
        function fnvalidate() {
            if (document.getElementById('<%=ddAnswer.ClientID %>').value == '') {
                alert('Please select AIDSRelief Site status');
                return false;
            }
        }
    </script>
    <%-- <form id="addLPTFPatientTransfer" method="post" runat="server">--%>
    <div class="container-fluid">
        <h3 class="margin" align="left">
            <asp:Label ID="lblH2" runat="server"></asp:Label></h3>
        <div class="center" style="padding: 5px;">
            <div class="border center formbg">
                <table class="table-condensed" width="100%">
                    <tbody>
                        <tr>
                            <td class="border pad5 whitebg" width="50%" align="center">
                                <label class="right" for="LPTFName">
                                    LPTF Patient Transfer :</label>
                                <asp:TextBox ID="txtLPTFName" runat="server" Width="30%"></asp:TextBox>
                            </td>
                            <td class="border pad5 whitebg" width="50%" align="center">
                                <label class="right" for="LPTFName">
                                    AIDSRelief Site :</label>
                                <asp:DropDownList ID="ddAnswer" runat="server">
                                    <asp:ListItem Value="">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table cellspacing="6" cellpadding="0" width="100%" border="0">
                    <tbody>
                        <tr>
                            <asp:Label ID="lblactive" runat="server">
                                <td class="border center pad5 whitebg" width="100%">
                                    <label class="right15" for="Status">
                                        Status :</label>
                                    <asp:DropDownList ID="ddStatus" runat="server">
                                        <asp:ListItem Value="9">Select</asp:ListItem>
                                        <asp:ListItem Value="0">Active</asp:ListItem>
                                        <asp:ListItem Value="1">Inactive</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </asp:Label></tr>
                    </tbody>
                </table>
                <table width="100%">
                    <tbody>
                        <tr>
                            <td align="center">
                                <asp:Button ID="btnsave" runat="server" Text="Save" OnClientClick="return fnvalidate()"
                                    OnClick="btnsave_Click" CssClass="btn btn-primary" Height="30px" Width="9%" Style="text-align: left;" />
                                <label class="glyphicon glyphicon-floppy-disk" style="margin-left: -3%; margin-right: 2%;
                                    vertical-align: sub; color: #fff;">
                                </label>
                                <asp:Button ID="btnreset" runat="server" Text="Reset" OnClick="btnreset_Click" CssClass="btn btn-primary"
                                    Height="30px" Width="8%" Style="text-align: left;" />
                                <label class="glyphicon glyphicon-erase" style="margin-left: -3%; margin-right: 2%;
                                    vertical-align: sub; color: #fff;">
                                </label>
                                <asp:Button ID="btncancel" runat="server" Text="Close" OnClick="btncancel_Click"
                                    CssClass="btn btn-primary" Height="30px" Width="8%" Style="text-align: left;" />
                                <label class="glyphicon glyphicon-remove-circle" style="margin-left: -3%; margin-right: 2%;
                                    vertical-align: sub; color: #fff;">
                                </label>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br />
            </div>
        </div>
    </div>
</asp:Content>
