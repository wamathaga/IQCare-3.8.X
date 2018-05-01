<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PatientFinder.ascx.cs"
    Inherits="IQCare.Web.PatientFinder" %>
<%@ Register Assembly="AjaxControlToolkit" TagPrefix="ajaxToolkit" Namespace="AjaxControlToolkit" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<div class="container-fluid">
    <table width="100%" class="table-condensed">
        <tr>
            <td>
                <h5 class="nomargin" id="tHeading">
                    Find Patient</h5>
            </td>
            <td style="float: right">
                <h5 class="nomargin" id="lblServiceArea" runat="server">
                </h5>
            </td>
        </tr>
    </table>
    <div id="divshow" class="border formbg center">
        <asp:UpdatePanel ID="panelSearch" runat="server">
            <ContentTemplate>
                <!-- Begin Stacey's code -->
                <asp:Panel ID="pnlSearch" runat="server" DefaultButton="btnView" Width="100%">
                    <table align="center" width="100%" border="1" class="table-condensed">
                        <tr>
                            <td class="border pad5 whitebg" valign="top" align="left">
                                <table width="100%" border="0" class="table-condensed">
                                    <tr>
                                        <td>
                                            <label>
                                                Identifier:</label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlIdentifier" runat="server">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="white-space: nowrap">
                                            <label id="lblidentificationno" class="center" runat="server">
                                                Identification Number:</label>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtidentificationno" runat="server" MaxLength="20"></asp:TextBox>
                                            <%--                                                <ajaxToolkit:FilteredTextBoxExtender ID="FTEID" runat="server" FilterType="Numbers, UppercaseLetters, LowercaseLetters,Custom"
                                                    TargetControlID="txtidentificationno" ValidChars="-@* ">
                                                </ajaxToolkit:FilteredTextBoxExtender>--%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>
                                                Facility/Satellite:</label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddFacility" runat="server" Width="200px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr style="display: <% = showService %>">
                                        <td>
                                            <label>
                                                Service:</label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlServices" runat="server" Style="width: 170px;">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="Careendedstatus" id="lblCareendedstatus" runat="server">
                                                Patient Status:</label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddCareEndedStatus" runat="server">
                                                <asp:ListItem Value="" Selected="True">Any</asp:ListItem>
                                                <asp:ListItem Value="0">Active</asp:ListItem>
                                                <asp:ListItem Value="1">Care Ended</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td class="border pad5 whitebg" valign="top" align="left">
                                <table width="100%" border="0" class="table-condensed">
                                    <tr>
                                        <td style="white-space: nowrap; width: 50%">
                                            <label for="lastname">
                                                Last Name:</label>
                                        </td>
                                        <td style="white-space: nowrap; width: 50%">
                                            <asp:TextBox ID="txtlastname" runat="server" MaxLength="20"></asp:TextBox>
                                            <ajaxToolkit:FilteredTextBoxExtender ID="FTELName" runat="server" FilterType="UppercaseLetters, LowercaseLetters"
                                                TargetControlID="txtlastname" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td nowrap="nowrap">
                                            <label runat="server" id="lblmiddlename" for="middlename">
                                                Middle Name:</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtmiddlename" runat="server" MaxLength="20"></asp:TextBox>
                                            <ajaxToolkit:FilteredTextBoxExtender ID="FTEMName" runat="server" FilterType="UppercaseLetters, LowercaseLetters"
                                                TargetControlID="txtmiddlename" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td nowrap="nowrap">
                                            <label for="firstname">
                                                First Name:</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtfirstname" runat="server" MaxLength="20"></asp:TextBox>
                                            <ajaxToolkit:FilteredTextBoxExtender ID="FTEFName" runat="server" FilterType="UppercaseLetters, LowercaseLetters"
                                                TargetControlID="txtfirstname" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td id="tdPatientOtherDetails" class="border pad5 whitebg" align="left" valign="top">
                                <table width="100%" border="0" class="table-condensed">
                                    <tr>
                                        <td>
                                            <label>
                                                Date of Birth:</label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtDOB" runat="server" Width="80px"></asp:TextBox>
                                            <asp:ImageButton runat="Server" ID="Image1" Height="22" Style="width: 22; height: 22;
                                                vertical-align: bottom;" ImageUrl="./images/cal_icon.gif" AlternateText="Click to show calendar" />
                                            <ajaxToolkit:CalendarExtender ID="calendarButtonExtender" runat="server" TargetControlID="txtDOB"
                                                PopupButtonID="Image1" Format="dd-MMM-yyyy" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td nowrap="nowrap">
                                            <label for="textRegistrationDate">
                                                Registration Date:</label>
                                        </td>
                                        <td style="white-space: nowrap">
                                            <asp:TextBox ID="textRegistrationDate" runat="server" AutoComplete="false" Width="80px"></asp:TextBox>
                                            <asp:ImageButton runat="Server" ID="ImageButton1" Height="22" Style="width: 22; height: 22;
                                                vertical-align: bottom;" ImageUrl="./images/cal_icon.gif" AlternateText="Click to show calendar" />
                                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="textRegistrationDate"
                                                PopupButtonID="ImageButton1" Format="dd-MMM-yyyy" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="Sex">
                                                Sex:</label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddSex" runat="server">
                                                <asp:ListItem Selected="True" Value="">Select</asp:ListItem>
                                                <asp:ListItem Value="16">Male</asp:ListItem>
                                                <asp:ListItem Value="17">Female</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <asp:Panel ID="divError" runat="server" Style="padding: 5px" CssClass="background-color: #FFFFC0; border: solid 1px #C00000"
                            HorizontalAlign="Left" Visible="false">
                            <tr>
                                <td colspan="3">
                                    <asp:Label ID="lblError" runat="server" Style="font-weight: bold; color: #800000"
                                        Text=""></asp:Label>
                                    <br />
                                </td>
                            </tr>
                        </asp:Panel>
                    </table>
                    <!-- End Stacey's code -->
                    <asp:Panel ID="panelSearchAction" DefaultButton="btnView" runat="server">
                        <table class="center table-condensed" width="100%" border="0">
                            <tbody>
                                <tr>
                                    <td>
                                        <table align="center" class="table-condensed">
                                            <tr>
                                                <td>
                                                    <asp:Button ID="btnView" runat="server" OnClick="btnView_Click" Text="Find" CssClass="btn btn-primary"
                                                        Height="30px" Width="99%" Style="text-align: left;" /><span class="glyphicon glyphicon-search"
                                                            style="margin-left: -35%; vertical-align: middle; color: #fff; margin-top:3%;"></span>
                                                    <asp:HiddenField ID="HIncludeEnrollment" runat="server" />
                                                    <asp:HiddenField ID="HFilterByServiceLine" runat="server" />
                                                    <asp:HiddenField ID="HSelectedServiceLine" runat="server" />
                                                    <asp:HiddenField ID="HFilterByStatus" runat="server" />
                                                    <asp:HiddenField ID="HMaxRecord" runat="server" />
                                                    <asp:HiddenField ID="HAutoLoad" runat="server" />
                                                    <asp:HiddenField ID="HCanAdd" runat="server" />
                                                </td>
                                                <td style="display: <% = showAdd %>">
                                                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Patient"
                                                        CssClass="btn btn-primary" Height="30px" Width="94%" Style="text-align: left;" />
                                                    <span class="glyphicon glyphicon-plus" style="margin-left: -20%; vertical-align: middle;
                                                        color: #fff; margin-top: 1%;"></span>
                                                </td>
                                                <td>
                                                    <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel"
                                                        CssClass="btn btn-primary" Height="30px" Width="88%" Style="text-align: left;" />
                                                    <span class="glyphicon glyphicon-remove" style="margin-left: -24%; vertical-align: middle;
                                                        color: #fff; margin-top:2.5%;"></span>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </asp:Panel>
                </asp:Panel>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="panelResults" runat="server">
            <ContentTemplate>
                <div class="grid">
                    <div class="rounded">
                        <div class="top-outer">
                            <div class="top-inner">
                                <div class="top">
                                    <h2>
                                        <asp:Label runat="server" ID="labelNote"></asp:Label></h2>
                                </div>
                            </div>
                        </div>
                        <div class="mid-outer">
                            <div class="mid-inner">
                                <div class="mid" style="cursor: pointer; height: 420px; overflow: auto; border: 1px solid #666699;">
                                    <div id="div-gridview" class="whitebg">
                                        <asp:HiddenField ID="resultOpenITem" runat="server" />
                                        <asp:GridView ID="grdSearchResult" runat="server" Width="100%" OnRowDataBound="grdSearchResult_RowDataBound"
                                            PageSize="1" CssClass="datatable" AutoGenerateColumns="False" CellPadding="0"
                                            BorderWidth="0px" GridLines="None" AllowSorting="True" DataKeyNames="patientid,locationid"
                                            OnRowCommand="grdSearchResult_RowCommand" OnRowCreated="grdSearchResult_RowCreated">
                                            <HeaderStyle CssClass="searchresultfixedheader" Height="20px" VerticalAlign="Middle"
                                                HorizontalAlign="Left"></HeaderStyle>
                                            <RowStyle CssClass="row" Height="30" />
                                            <Columns>
                                                <asp:TemplateField Visible="false">
                                                    <ItemTemplate>
                                                        <asp:ImageButton ID="ExpandGridButton" runat="server" CommandName="Expand" ImageUrl="~/Images/plus.png"
                                                            CommandArgument="<%# Container.DataItemIndex %>" /></ItemTemplate>
                                                    <%--                                                    <ItemStyle Width="20px" />--%>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="IQNumber" HeaderText="IQ Number" />
                                                <asp:BoundField DataField="firstname" HeaderText="First Name" />
                                                <asp:BoundField DataField="middlename" HeaderText="Middle Name" />
                                                <asp:BoundField DataField="lastname" HeaderText="Last Name" />
                                                <asp:BoundField DataField="dob" HeaderText="DOB" DataFormatString="{0:dd-MMM-yyyy}" />
                                                <asp:BoundField DataField="sex" HeaderText="Sex" />
                                                <asp:BoundField DataField="RegistrationDate" DataFormatString="{0:dd-MMM-yyyy}" HeaderText="Reg Date" />
                                                <asp:BoundField DataField="FacilityName" HeaderText="Facility" />
                                                <asp:BoundField DataField="Status" HeaderText="Status" />
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:Panel ID="ContainerDiv" runat="server" Style="display: none; position: relative;
                                                            left: 5px;" CssClass="panel panel-info">
                                                            <asp:GridView ID="gridPatientServiceList" runat="server" AllowSorting="False" AutoGenerateColumns="False"
                                                                BorderColor="White" BorderWidth="1px" CellPadding="0" CssClass="datatable" DataKeyNames="moduleid,patientid,locationid"
                                                                Enabled="true" EnableModelValidation="True" GridLines="None" HorizontalAlign="Left"
                                                                ShowFooter="True" ShowHeaderWhenEmpty="True" Width="100%">
                                                                <Columns>
                                                                    <asp:BoundField DataField="ModuleName" ItemStyle-Width="22%" HeaderText="Service Area" />
                                                                    <asp:BoundField DataField="EnrollmentDate" DataFormatString="{0:dd-MMM-yyyy}" ItemStyle-Width="12%"
                                                                        HeaderText="Enrollment Date" />
                                                                    <asp:BoundField DataField="CareStatus" HeaderText="Status" ItemStyle-Width="8%" />
                                                                    <asp:TemplateField HeaderText="Identifiers" ItemStyle-Width="58%">
                                                                        <ItemTemplate>
                                                                            <asp:Repeater ID="repeaterIdentifiers" runat="server">
                                                                                <HeaderTemplate>
                                                                                </HeaderTemplate>
                                                                                <ItemTemplate>
                                                                                    <div class="row">
                                                                                        <div class="col-md-8">
                                                                                            <asp:Label ID="labelIdentifier" Style="color: blue; font-size: 9pt; font-weight: bold;
                                                                                                display: inline-block;" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "[IdentifierName]")%>' />
                                                                                        </div>
                                                                                        <div class="col-md-4">
                                                                                            <asp:Label ID="identifierName" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "[IdentifierValue]")%>'
                                                                                                Font-Bold="true" />
                                                                                        </div>
                                                                                    </div>
                                                                                </ItemTemplate>
                                                                                <AlternatingItemTemplate>
                                                                                    <div class="row" style="background-color: #EFEFEF">
                                                                                        <div class="col-md-8">
                                                                                            <asp:Label ID="labelIdentifier" Style="color: blue; font-size: 9pt; font-weight: bold;
                                                                                                display: inline-block;" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "[IdentifierName]")%>' />
                                                                                        </div>
                                                                                        <div class="col-md-4">
                                                                                            <asp:Label ID="identifierName" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "[IdentifierValue]")%>'
                                                                                                Font-Bold="true" />
                                                                                        </div>
                                                                                    </div>
                                                                                </AlternatingItemTemplate>
                                                                                <FooterTemplate>
                                                                                </FooterTemplate>
                                                                            </asp:Repeater>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                </Columns>
                                                                <HeaderStyle ForeColor="#3399FF" HorizontalAlign="Left" />
                                                                <RowStyle CssClass="row" />
                                                            </asp:GridView>
                                                        </asp:Panel>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
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
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnView" EventName="Click"></asp:AsyncPostBackTrigger>
                <asp:AsyncPostBackTrigger ControlID="btnCancel" EventName="Click"></asp:AsyncPostBackTrigger>
            </Triggers>
        </asp:UpdatePanel>
    </div>
</div>
