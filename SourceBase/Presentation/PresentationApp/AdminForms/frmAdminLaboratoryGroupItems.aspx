<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/IQCare.master" AutoEventWireup="true" CodeBehind="frmAdminLaboratoryGroupItems.aspx.cs" Inherits="PresentationApp.AdminForms.frmAdminLaboratoryGroupItems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IQCareContentPlaceHolder" runat="server">
<div class="center" style="padding: 5px;">
        <h3 class="margin" align="left">
            <asp:Label ID="lblH2" runat="server" Text="Lab Group Name"></asp:Label></h3>
        <div class="border center formbg">
            <br>
           
            <table class="table-condensed" width="100%" border="0">
                <tbody>
                    <tr>
                        <td class="border center pad5 whitebg" width="50%">
                            <label >
                                Laboratory Test :</label>
                            <asp:TextBox ID="txtLabName" runat="server" MaxLength="50" Width="180"></asp:TextBox>
                        </td>
                        <td class="border center pad5 whitebg" width="25%">
                            <label>
                                Department :</label>
                            <asp:DropDownList ID="ddDepartment" runat="server">
                            </asp:DropDownList>
                        </td>                        
                            <td class="border center pad5 whitebg" width="25%">
                                <label >
                                    Status :</label>
                                <asp:DropDownList ID="ddStatus" runat="server">
                                    <asp:ListItem Text="Active" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="InActive" Value="1"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        
                    </tr>
                </tbody>
            </table>
            <br />
            <div id="div-gridview" class="div-gridview whitebg" style="overflow: auto; height: 400px">
                <asp:GridView ID="grdLabs" runat="server" AutoGenerateColumns="False" Width="100%"
                    AllowSorting="True" BorderColor="#666699" Font-Bold="True" 
                    ShowHeaderWhenEmpty="True" CssClass="datatable" >
                   
                    <Columns>
                     <asp:TemplateField Visible="False">
                         
                            <ItemTemplate>
                                <div>
                                    <asp:Label ID="lblLabTestID" runat="server" AutoPostBack="false" Text='<%#Bind("LabTestID")%>'>
                                    </asp:Label></div>
                            </ItemTemplate>
                            <ItemStyle CssClass="TextStyle" HorizontalAlign="Left" Wrap="False" Width="5%" Font-Bold="True">
                            </ItemStyle>
                           
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Lab Test Name">
                            
                            <ItemTemplate>
                                <div id="grdchk">
                                    <asp:CheckBox ID="chkLabTest" runat="server" AutoPostBack="false" Checked='<%#Convert.ToBoolean(Eval("member")) %>' Text='<%#Bind("LabName")%>'>
                                    </asp:CheckBox></div>
                            </ItemTemplate>
                            <ItemStyle CssClass="TextStyle" HorizontalAlign="Left" Wrap="False" Width="60%" Font-Bold="True">
                            </ItemStyle>
                          
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Department">
                           
                            <ItemStyle CssClass="TextStyle" HorizontalAlign="Left" Wrap="False"></ItemStyle>
                           
                            <ItemTemplate>
                                <asp:Label ID="lblDepartment" runat="server" Text='<%#Bind("LabDepartmentName")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                           <asp:TemplateField HeaderText="Status">
                           
                            <ItemStyle CssClass="TextStyle" HorizontalAlign="Left" Wrap="False"></ItemStyle>
                           
                            <ItemTemplate>
                                <asp:Label ID="lblStatus" runat="server" Text='<%#Bind("Status")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                      
                    </Columns>
                </asp:GridView>
            </div>
            <table width="100%">
                <tbody>
                    <tr>
                        <td class="pad5 center" align="center">
                            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click"
                            CssClass="btn btn-primary" Height="30px" Width="8%" 
                                Style="text-align: left;"  />
                            <label class="glyphicon glyphicon-open" style="margin-left: -3%; vertical-align: sub;
                                color: #fff;">
                            </label>
                            <asp:Button ID="btnExit" runat="server" Text="Close" OnClick="btnExit_Click"
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
</asp:Content>
