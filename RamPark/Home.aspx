<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RamPark.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="CSS/LoginStyle.css" rel="stylesheet"/>
    <link href="CSS/DataGrid.css" rel="stylesheet"/>
    </head>
<body>
    <form id="form1" runat="server">

        <div class="login-style">
            <div style="text-align:center">
                <asp:Label ID="Label5" CssClass="label-devtools-style" runat="server" Text="Developer Tools"></asp:Label>
            </div>
            
            <div style="text-align:center">
               <asp:Button ID="enqueueBtn" runat="server" Text="Enqueue (+)" CssClass="BUTTON_XWX" OnClick="enqueueBtn_Click" />
               <asp:Button ID="dequeueBtn" runat="server" Text="Dequeue (-)" CssClass="BUTTON_XWX" OnClick="dequeueBtn_Click" />
            </div>
            <div style="text-align:center; padding-top:10px; padding-bottom:10px">
                <asp:Label ID="Label1" CssClass="label-style" runat="server" Text="RAM Points:"></asp:Label>
               <asp:TextBox ID="customPointsTextbox" runat="server" CssClass="devtool-input-style" Enabled="False"></asp:TextBox>
               <asp:CheckBox ID="randomizePointsCheckbox" runat="server" Text="Random" OnCheckedChanged="randomizePointsCheckbox_CheckedChanged" AutoPostBack="True" Checked="True" ForeColor="White"/>
            </div>

        </div> 
        <div class="login-style">
            <img src="Images/logo-login.png" class="image-style" />
            <div style="padding-top:15px">
                <asp:Label ID="Label2" runat="server" Text="Current Queue Count: " CssClass="label-style"></asp:Label>
                <asp:Label ID="queueCountLbl" runat="server" Text="" CssClass="label-style"></asp:Label>
            </div>
            <div>
                <asp:Label ID="Label13" runat="server" Text="Most recent Enqueue: " CssClass="label-style"></asp:Label>
                <asp:Label ID="enqueueUpdateLbl" runat="server" Text="" CssClass="label-style"></asp:Label>
            </div>
            <div style="padding-bottom:15px">
                <asp:Label ID="Label4" runat="server" Text="Most recent Dequeue: " CssClass="label-style"></asp:Label>
                <asp:Label ID="dequeueUpdateLbl" runat="server" Text="" CssClass="label-style"></asp:Label>
            </div>
            <div  style ="height:500px; width:auto; overflow:auto;">
                <asp:DataGrid ID="MyDataGrid" runat="server" HorizontalAlign="Center" CssClass="Grid">
				<HeaderStyle CssClass="GridHeader"></HeaderStyle>
				<ItemStyle CssClass="GridItem"></ItemStyle>
				<AlternatingItemStyle CssClass="GridAltItem"></AlternatingItemStyle></asp:DataGrid>
            </div>
        </div>
   
    </form>
</body>
</html>