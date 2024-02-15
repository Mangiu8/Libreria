<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Libreria.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" >
    <Columns>
        <asp:BoundField DataField="IDLibri" HeaderText="IDLibri" />
        <asp:BoundField DataField="Titolo" HeaderText="Titolo" />
        <asp:BoundField DataField="Autore" HeaderText="Autore" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="Bottone" Text="Dettagli" runat="server" Onclick="Bottone_Click" CommandArgument='<%#Eval("IDLibri") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

    </form>
</body>
</html>
