﻿<%@ Page Language="C#" AutoEventWireup="True"
    Inherits="AdminForms_frmAdmin_LaboratorySelectList" Codebehind="frmAdmin_LaboratorySelectList.aspx.cs" %>

<link rel="stylesheet" type="text/css" href="../style/styles.css" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title id="lblHeader" runat="server">Lab select list</title>
</head>
<body>
    <script language="javascript" type="text/javascript">
        /*
        Author : Amitava Sinha
        Creation Date : 26-Mar-2007
        Purpose:atleast one item will selected 
        */

        function txtAdd(sel) {
            var txtselect = document.getElementById(sel);
            var intCount = txtselect.value.length;
            if (intCount > 0) {
                return true;
            }

            NotifyMessage("Fill the Enter Value!");
            return false;

        }
        function listBox_hasItem(sel) {
            var listBox = document.getElementById(sel);
            var intCount = listBox.options.length;

            for (i = 0; i < intCount; i++) {
                return true;

            }
            NotifyMessage("Add atleast one item !");
            return false;

        }
        function listBox_selected(sel) {
            var listBox = document.getElementById(sel);
            var intCount = listBox.options.length;

            for (i = 0; i < intCount; i++) {
                if (listBox.options(i).selected) {
                    return true;
                }

            }
            NotifyMessage("Select atleast one item !");
            return false;

        }

        function closeMe() {
            var win = window.open("", "_self");
            win.close();
        }
    </script>
    <form id="Selection" class="border" runat="server" style="height: 280px; width: 300px;">
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Enter Value"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtselect" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnAdd" runat="server" Width="50px" Text="Add" OnClick="btnAdd_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <table cellpadding="18" width="100%" border="0">
                    <tbody>
                        <tr>
                            <td class="border formbg">
                                <asp:ListBox ID="lstselectList" runat="server" Height="180px" Width="100%"></asp:ListBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Button ID="btnSubmit" runat="server" Width="50px" Text="Submit" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnRemove" runat="server" Width="50px" Text="Delete" OnClick="btnRemove_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
