<%@ Page Language="C#" AutoEventWireup="true" Inherits="frmLogin" EnableViewState="true"
    CodeBehind="frmLogin.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html lang="en-US" xml:lang="en-US" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>International Quality Care Patient Management and Monitoring System</title>
    <link rel="stylesheet" type="text/css" href="Style/styles.css" />
    <link href="Style/bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="Style/bootstrap-3.3.6-dist/css/bootstrap-theme.min.css" rel="stylesheet"
        type="text/css" />
    <style>
        .white, .white a
        {
            color: #fff;
        }
    </style>
</head>
<script language="javascript" type="text/javascript">

    function fnHelp() {
        var path = frmLogin.CallHelp().value;
        window.location.href = path;
        //window.showHelp("./IQCareHelp/IQCareARUserManualSep2010.chm")
    }
    function CloseWindow() {
        window.focus();
    }
    function openHelp() {
        var path = '/IQCareHelp/index.html';
        if (window.location.href.toLowerCase().indexOf("iqcare") > -1) {
            path = '/IQCare' + path;
        }
        window.open(path);
    }

    function getScreenSize() {
        document.getElementById('ScreenWidth').value = screen.width;
        document.getElementById('ScreenHeight').value = screen.height;
        //alert("Width :" + screen.width + " - " + "Height :" + screen.height);


    }
</script>
<body>
    <div class="container-fluid">
        <form id="signIn" style="width: 100%" enableviewstate="true" runat="server">
        <asp:HiddenField ID="ScreenWidth" runat="server" />
        <asp:HiddenField ID="ScreenHeight" runat="server" />
        <div class="loginpageheight">
            <div class="utility" align="right">
                <a class="utility" href="frmLogin.aspx" onclick="openHelp(); return false;">Help</a>
            </div>
            <div id="main">
                <div id="bluetop">
                </div>
                <img id="logo" height="94" alt="International Quality Care " src="./images/iq_logo.gif"
                    width="236" border="0" />
                <img id="pmms" height="53" alt="Patient Management and Monitoring System" src="./images/pmms.gif"
                    width="264" border="0" />
                <img id="collage" height="117" alt="" src="./images/collage.jpg" width="424" border="0" />
                <div id="username">
                    <asp:Label ID="lblUserName" runat="server" Text="Administrator"></asp:Label></div>
                <div id="date" align="right">
                    <asp:Label ID="lblDate" runat="server" Text="30 December 2014"></asp:Label></div>
                <div id="border">
                </div>
                <img id="tabfacility" height="23" alt="Facility Name" src="./images/tab_facility.gif"
                    width="377" border="0" />
                <div id="facility">
                    <asp:Label ID="lblLocation" runat="server" Text="Nsambya Hospital and Medical Center"></asp:Label></div>
                <div style="padding-top: 140px;">
                    <!-- begin content area -->
                    <asp:Panel ID="divError" runat="server" Style="padding: 5px" CssClass="background-color: #FFFFC0; border: solid 1px #C00000"
                        HorizontalAlign="Left" Visible="false">
                        <tr>
                            <td>
                                <asp:Label ID="lblError" runat="server" Style="font-weight: bold; color: #800000"
                                    Text=""></asp:Label>
                                <br />
                            </td>
                        </tr>
                    </asp:Panel>
                    <table class="border table-condensed" cellspacing="0" cellpadding="0" width="850"
                        align="center" border="0">
                        <tbody>
                            <tr>
                                <td style="border-right: #666699 1px solid;" width="500" align="center">
                                    <asp:Image ID="imgLogin" runat="server" ImageUrl="~/Images/signin.jpg" Width="500px"
                                        Height="300px" />
                                </td>
                                <td class="login" style="width: 250px; vertical-align: top;">
                                    <h2 class="nomargin h4 info">
                                        Login</h2>
                                    <asp:ScriptManager ID="mst" runat="server">
                                    </asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdateMasterLink" runat="server">
                                        <ContentTemplate>
                                            <!-- note: method set to get for demo -->
                                            <table width="100%" border="0" class="table-condensed">
                                                <tr>
                                                    <td class="pad18">
                                                        <label>
                                                            Username</label>
                                                        <asp:TextBox ID="txtuname" runat="server" Width="210px" Height="25px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="pad18">
                                                        <label for="password">
                                                            Password</label>
                                                        <asp:TextBox ID="txtpassword" TextMode="Password" runat="server" Width="210px" Height="25px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="pad18">
                                                        <br />
                                                        <asp:CheckBox ID="chkPref" runat="server" Text="Preferred Location" AutoPostBack="true"
                                                            OnCheckedChanged="chkPref_CheckedChanged" />
                                                        <br />
                                                        </br/>
                                                        <label>
                                                            Facility/Satellite</label>
                                                        <asp:DropDownList ID="ddLocation" runat="server" Width="210px" Height="25px" class="dropdown">
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="button">
                                                        <br></br>
                                                        <asp:Button ID="btnLogin" runat="server" Text="Login" Height="30px" Width="30%" Style="text-align: left"
                                                            class="btn btn-primary" OnClick="btnLogin_Click" /><span class="glyphicon glyphicon-lock"
                                                                style="margin-left: -10%; vertical-align: middle; color: #fff;"></span>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:PostBackTrigger ControlID="chkPref" />
                                            <asp:PostBackTrigger ControlID="btnLogin" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="900">
                        <tr style="width: 100%">
                            <td align="left" style="width: 50%">
                                <p>
                                    <a href="http://thepalladiumgroup.com/ " onclick="window.open('http://thepalladiumgroup.com/ '); return false">
                                        <img src="./Images/FGI.jpg" width="99" style="margin-left: 10.5%" alt="" /></a>
                                    <a href="http://creativecommons.org/licenses/by-nc-sa/3.0/" onclick="window.open('http://creativecommons.org/licenses/by-nc-sa/3.0/'); return false">
                                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/CreativeCommon.jpg" /></a>
                                </p>
                            </td>
                            <td align="right" style="width: 50%">
                                <label class="right" style="width: 300">
                                    Version :
                                    <asp:Label CssClass="blue11 nomargin" ID="lblversion" Text="Version B1.0" runat="server"></asp:Label></label>
                                <br />
                                <label class="right" style="width: 300">
                                    Release Date :
                                    <asp:Label CssClass="blue11 nomargin" ID="lblrelDate" Text="Date" runat="server"></asp:Label></label>
                                <label class="right" style="width: 50%">
                                    </br><asp:Label CssClass="blue11 nomargin" ID="lblTestRelDate" Text="" runat="server"></asp:Label></label>
                            </td>
                        </tr>
                    </table>
                    <!-- end content area -->
                </div>
            </div>
        </div>
        </form>
    </div>
    <script src="Style/bootstrap-3.3.6-dist/respond/respond.min.js" type="text/javascript"></script>
    <script src="Style/bootstrap-3.3.6-dist/html5Shiv/html5shiv.min.js" type="text/javascript"></script>
</body>
</html>
