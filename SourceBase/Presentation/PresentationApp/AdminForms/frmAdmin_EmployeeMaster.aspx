<%@ Page Language="C#" MasterPageFile="~/MasterPage/IQCare.master" AutoEventWireup="True"
    Inherits="AdminForms_frmAdmin_EmployeeMaster" Title="Untitled Page" CodeBehind="frmAdmin_EmployeeMaster.aspx.cs" %>

<%@ MasterType VirtualPath="~/MasterPage/IQCare.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IQCareContentPlaceHolder" runat="Server">
    <%-- <form id="addEmployeeMaster" method="post" runat="server">--%>
    <div class="container-fluid">
        <h5 class="margin" align="left">
            <asp:Label ID="lblH2" runat="server"></asp:Label></h5>
        <div class="center" style="padding: 5px;">
            <div class="border center formbg">
                <br />
                <table class="table-condensed" width="100%">
                    <tbody>
                        <tr>
                            <td class="border pad5 whitebg" width="50%" align="center">
                                <label class="right" for="EmpName">
                                    First Name :</label>
                                <asp:TextBox ID="txtFirstName" runat="server" Width="30%"></asp:TextBox>
                            </td>
                            <td class="border pad5 whitebg" width="50%" align="center">
                                <label class="right" for="EmpName">
                                    Last Name :</label>
                                <asp:TextBox ID="txtLastName" runat="server" Width="30%"></asp:TextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table cellspacing="6" cellpadding="0" width="100%" border="0">
                    <tbody>
                        <tr>
                            <td class="border pad5 whitebg" width="50%" align="center">
                                <label class="right" for="Desig">
                                    Designation :</label>
                                <asp:DropDownList ID="ddDesignation" runat="server">
                                </asp:DropDownList>
                            </td>
                            <asp:Label ID="lblactive" runat="server">
                                <td class="border pad5 whitebg" width="50%" align="center">
                                    <label class="right15" for="Status">
                                        Status :</label>
                                    <asp:DropDownList ID="ddStatus" runat="server">
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
                                <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnSave_Click" CssClass="btn btn-primary"
                                    Height="30px" Width="9%" Style="text-align: left;" />
                                <label class="glyphicon glyphicon-floppy-disk" style="margin-left: -3%; margin-right: 2%;
                                    vertical-align: sub; color: #fff;">
                                </label>
                                <asp:Button ID="btnreset" runat="server" Text="Reset" OnClick="btnreset_Click" CssClass="btn btn-primary"
                                    Height="30px" Width="8%" Style="text-align: left;" />
                                <label class="glyphicon glyphicon-erase" style="margin-left: -3%; margin-right: 2%;
                                    vertical-align: sub; color: #fff;">
                                </label>
                                <asp:Button ID="btncancel" runat="server" Text="Close" OnClick="btnCancel_Click"
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
        <%-- </form>--%>
    </div>
</asp:Content>
