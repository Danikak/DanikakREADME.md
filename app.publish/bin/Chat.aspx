<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="WebApplication5.Chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="../Scripts/jquery-3.7.1.min.js"></script>
    <%-- refresh() --%>
    <script type="text/javascript">
        function refresh() {
            $.ajax(
                {
                    url: "Ajax.aspx",
                    cache: false,
                    success: function (text) { document.getElementById("divmsg").innerHTML = text; },
                    error: function (jqXHR, textStatus, errorThrown) { alert("少年网络不行"); }

                });
            setTimeout("refresh()", 500);
        }
    </script>
</head>
<body onload="refresh()">
    <form id="form1" runat="server">
              <div id="divmsg">
            <br />
            <br />
        </div>
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="188px" TextMode="MultiLine" Width="449px"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="发送" OnClick="Button1_Click" />
            <br />
        </div>
    </form>
</body>
</html>
