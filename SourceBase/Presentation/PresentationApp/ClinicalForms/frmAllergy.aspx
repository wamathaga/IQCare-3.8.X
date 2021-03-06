﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/IQCare.master" AutoEventWireup="true"
    EnableEventValidation="false" Inherits="ClinicalForms_frmAllergy" CodeBehind="frmAllergy.aspx.cs" %>

<%@ Register Assembly="AjaxControlToolkit" TagPrefix="act" Namespace="AjaxControlToolkit" %>
<%@ MasterType VirtualPath="~/MasterPage/IQCare.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="IQCareContentPlaceHolder" runat="Server">
    <script type="text/javascript">
        function ace1_itemSelected(source, e) {
            var results = eval('(' + e.get_value() + ')');
            var index = source._selectIndex;
            if (index != -1) {
                var hdCustID = $get('<%= hdCustID.ClientID %>');
                hdCustID.value = results.DrugId;
            }
        }
        function onClientPopulated(sender, e) {
            var propertyPeople = sender.get_completionList().childNodes;
            for (var i = 0; i < propertyPeople.length; i++) {
                var div = document.createElement("span");
                var results = eval('(' + propertyPeople[i]._value + ')');
            }
        }
        function WindowPrint() {
            window.print();
        }

    </script>
    <style type="text/css">
        .autoextender
        {
            font-family: Courier New, Arial, sans-serif;
            font-size: 11px;
            font-weight: 100;
            border: solid 1px #006699;
            line-height: 15px;
            padding: 0px;
            background-color: White;
            margin-left: 0px;
            width: 800px;
        }
        .autoextenderlist
        {
            cursor: pointer;
            color: black;
        }
        .autoextenderhighlight
        {
            color: White;
            background-color: #006699;
            cursor: pointer;
        }
        #divwidth
        {
            width: 400px !important;
        }
        #divwidth div
        {
            width: 400px !important;
        }
    </style>
    <h5>
        <asp:Label ID="lblFormName" runat="server" Text="Allergy Information"></asp:Label>
    </h5>
    <div class="container-fluid">
        <%-- <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" ScriptMode="Release">
        </asp:ScriptManager>--%>
        <asp:UpdatePanel ID="Updatepanel" runat="server">
            <ContentTemplate>
                <div id="DivPMTCT" runat="server">
                    <div id="patientInfoTop" class="border formbg" runat="server">
                        <table width="100%" class="table-condensed">
                            <tbody>
                                <tr>
                                    <td colspan="2">
                                        <div id="divART" runat="server">
                                            <table width="100%" class="table-condensed">
                                                <tr>
                                                    <td class="form" align="center">
                                                        <label class="patientInfo">
                                                            Patient Name :
                                                            <asp:Label ID="lblname" runat="server" Text=""></asp:Label></label>
                                                        <label class="bold">
                                                            IQ Number:
                                                            <asp:Label ID="lblIQnumber" runat="server"></asp:Label></label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <div id="pmtct" runat="server">
                                            <table width="100%" class="table-condensed">
                                                <tr>
                                                    <td>
                                                        <div id="pmtctname" runat="server">
                                                            <table width="100%" class="table-condensed">
                                                                <tr>
                                                                    <td class="form" align="center">
                                                                        <label class="bold">
                                                                            Patient Name :
                                                                            <asp:Label ID="lblpatientnamepmtct" runat="server" Text=""></asp:Label></label>
                                                                        <label class="bold">
                                                                            IQ Number:
                                                                            <asp:Label ID="lblIQnumberpmtct" runat="server"></asp:Label></label>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <br />
                    <div class="border formbg">
                        <table class="table-condensed" width="100%">
                            <tbody>
                                <tr>
                                    <td class="border pad5 whitebg" width="100%" align="left" nowrap="nowrap">
                                        <act:AutoCompleteExtender ServiceMethod="SearchDrugs" MinimumPrefixLength="2" CompletionInterval="30"
                                            EnableCaching="false" CompletionSetCount="10" TargetControlID="txtAllergen" BehaviorID="AutoCompleteEx"
                                            OnClientItemSelected="ace1_itemSelected" ID="AutoCompleteExtender1" runat="server"
                                            OnClientPopulated="onClientPopulated" FirstRowSelected="false" CompletionListCssClass="autoextender"
                                            CompletionListItemCssClass="autoextenderlist" CompletionListHighlightedItemCssClass="autoextenderhighlight"
                                            CompletionListElementID="divwidth">
                                            <Animations>
                                              <OnShow>
                                              <Sequence>
                                              <%-- Make the completion list transparent and then show it --%>
                                              <OpacityAction Opacity="0" />
                                              <HideAction Visible="true" />

                                              <%--Cache the original size of the completion list the first time
                                                the animation is played and then set it to zero --%>
                                              <ScriptAction Script="// Cache the size and setup the initial size
                                                                            var behavior = $find('AutoCompleteEx');
                                                                            if (!behavior._height) {
                                                                                var target = behavior.get_completionList();
                                                                                behavior._height = target.offsetHeight - 2;
                                                                                target.style.height = '0px';
                                                                            }" />
                                              <%-- Expand from 0px to the appropriate size while fading in --%>
                                              <Parallel Duration=".4">
                                              <FadeIn />
                                              <Length PropertyKey="height" StartValue="0" 
	                                            EndValueScript="$find('AutoCompleteEx')._height" />
                                              </Parallel>
                                              </Sequence>
                                              </OnShow>
                                              <OnHide>
                                              <%-- Collapse down to 0px and fade out --%>
                                              <Parallel Duration=".4">
                                              <FadeOut />
                                              <Length PropertyKey="height" StartValueScript="$find('AutoCompleteEx')._height" EndValue="0" />
                                              </Parallel>
                                              </OnHide>
                                            </Animations>
                                        </act:AutoCompleteExtender>
                                      
                                        <label class="required">
                                            Allergy Type:</label>
                                        <asp:DropDownList ID="ddlAllergyType" AutoPostBack="true" runat="server" Width="150px"
                                            OnSelectedIndexChanged="ddlAllergyType_SelectedIndexChanged">
                                        </asp:DropDownList>
                                        <label class="required" for="relativename">
                                            Allergen:</label>
                                        <asp:DropDownList ID="ddlAllergen" name="regthisclinic" Width="150px" AutoPostBack="true"
                                            Visible="false" runat="server" OnSelectedIndexChanged="ddlAllergen_SelectedIndexChanged">
                                        </asp:DropDownList>
                                        <label runat="server" id="lblOtherALlegian" visible="false">
                                            Other Allergen:</label>
                                        <asp:TextBox ID="txtOtherAllegian" MaxLength="50" Visible="false" Width="150px" runat="server"></asp:TextBox>
                                        <asp:TextBox ID="txtAllergenOther" runat="server" MaxLength="50" Width="400px"></asp:TextBox>
                                        <asp:TextBox ID="txtAllergen" MaxLength="50" Width="400px" AutoPostBack="true" Visible="false"
                                            runat="server" AutoComplete="off" Font-Names="Courier New" OnTextChanged="txtAllergen_TextChanged"></asp:TextBox>
                                        <div id="divwidth">
                                        </div>
                                        <asp:HiddenField ID="hdCustID" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="border pad5 whitebg" width="100%" align="left" valign="top" nowrap="nowrap">
                                       
                                        <label for="relativename">
                                           Severity:</label>
                                        <asp:DropDownList ID="ddlSeverity" Width="150px" runat="server">
                                        </asp:DropDownList>
                                    
                                        <label runat="server" id="Label1">
                                            Date of allergy:</label>
                                        <input id="txtAllergyDate" onblur="DateFormat(this,this.value,event,false,'3')" onkeyup="DateFormat(this,this.value,event,false,'3')"
                                            onfocus="javascript:vDateType='3'" maxlength="11" size="11" name="AllergyDate"
                                            runat="server" />
                                        <img id="Img1" onclick="w_displayDatePicker('<%=txtAllergyDate.ClientID%>');" height="22"
                                            alt="Date Helper" hspace="5" src="../images/cal_icon.gif" width="22" border="0"
                                            name="appDateimg" style="vertical-align: text-bottom;" />
                                        <span class="smallerlabel" id="Span2">(DD-MMM-YYYY)</span>
                                        <label style="margin-left: 4%">
                                            Type of Reaction:</label>
                                        <asp:TextBox ID="txtTypeOfReaction" MaxLength="50" TextMode="MultiLine" runat="server"
                                            Style="height: 25px; vertical-align: top"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="border center whitebg" colspan="2" style="height: 36px">
                                        <asp:Button ID="btnadd" runat="server" OnClientClick="return fnValidate();" Text="Add Allergy"
                                            OnClick="btnAdd" CssClass="btn btn-primary" Height="30px" Width="13.5%" style="text-align:left;" />
                                        <label class="glyphicon glyphicon-plus" style="margin-left: -2.5%; margin-right: 2%;
                                            vertical-align: sub; color: #fff;">
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="border pad5 formbg" colspan="2">
                                        <div class="GridView whitebg" style="cursor: pointer;">
                                            <div class="grid">
                                                <div class="rounded">
                                                    <div class="top-outer">
                                                        <div class="top-inner">
                                                            <div class="top">
                                                                <h2>
                                                                    Allergy Details</h2>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mid-outer">
                                                        <div class="mid-inner">
                                                            <div class="mid" style="height: 300px; overflow: auto">
                                                                <div id="div-gridview" class="GridView whitebg">
                                                                    <asp:GridView ID="grdAllergy" runat="server" OnRowDataBound="grdAllergy_RowDataBound"
                                                                        AutoGenerateColumns="False" Width="100%" BorderWidth="0" GridLines="None" CssClass="datatable"
                                                                        CellPadding="0" CellSpacing="0" OnSelectedIndexChanging="grdAllergy_SelectedIndexChanging"
                                                                        OnRowDeleting="grdAllergy_RowDeleting">
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
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="border center whitebg" colspan="2" style="height: 10px">
                                        <asp:Button ID="btnSubmit" runat="server" Font-Size="12px" Text="Save" OnClick="btnSubmit_Click"
                                            CssClass="btn btn-primary" Height="30px" Width="8%" Style="text-align: left;" />
                                        <label class="glyphicon glyphicon-floppy-disk" style="margin-left: -3%; margin-right: 2%;
                                            vertical-align: sub; color: #fff;" runat="server">
                                        </label>
                                        <asp:Button ID="btnBack" runat="server" Font-Size="12px" Text="Back" OnClick="btnBack_Click"
                                            CssClass="btn btn-primary" Height="30px" Width="8%" Style="text-align: left;" />
                                        <label id="lblBtnBack" runat ="server" class="glyphicon glyphicon-backward" style="margin-left: -3%; margin-right: 2%;
                                            vertical-align: sub; color: #fff;">
                                        </label>
                                        <asp:Button ID="btnPrint" Text="Print" Font-Size="12px" runat="server" OnClientClick="WindowPrint()"
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
            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger ControlID="txtAllergen"></asp:PostBackTrigger>
                <asp:PostBackTrigger ControlID="btnadd"></asp:PostBackTrigger>
                <asp:PostBackTrigger ControlID="btnSubmit"></asp:PostBackTrigger>
                <asp:PostBackTrigger ControlID="btnBack"></asp:PostBackTrigger>
                <asp:PostBackTrigger ControlID="btnPrint"></asp:PostBackTrigger>
            </Triggers>
        </asp:UpdatePanel>
    </div>
</asp:Content>
