<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControlKNH_DrugAllergies.ascx.cs"
    Inherits="PresentationApp.ClinicalForms.UserControl.UserControlKNH_DrugAllergies" %>
<div class="center formbg">
    <table cellspacing="6" cellpadding="0" width="100%" border="0">
        <tr>
            <td class="form">
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
                                    <div class="mid" style="height: 60px; overflow: auto; padding-bottom: 10px;">
                                        <div id="div-gridview" class="GridView whitebg">
                                            <asp:GridView ID="grdDrugAllergy" runat="server" AutoGenerateColumns="False" Width="100%"
                                                BorderWidth="0" GridLines="None" CssClass="datatable" CellPadding="0" CellSpacing="0">
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
            <td class="form">
                <asp:Button ID="btnAllergies" runat="server" OnClick="btnAllergies_Click" Text="Add Allergies"
                    CssClass="btn btn-primary" Height="30px" Width="10%" Style="text-align: left;" />
                <label class="glyphicon glyphicon-plus-sign" style="margin-left: -3%; margin-right: 2%;
                    vertical-align: sub; color: #fff; margin-top: 1%;">
                </label>
            </td>
        </tr>
    </table>
</div>
