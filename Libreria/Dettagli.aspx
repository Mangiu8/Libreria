<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dettagli.aspx.cs" Inherits="Libreria.Dettagli" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
       <form id="form1" runat="server">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" >
    <Columns>
        <asp:BoundField DataField="Descrizione" HeaderText="Descrizione" />
        <asp:BoundField DataField="Prezzo" HeaderText="Prezzo" />
        <asp:BoundField DataField="Prenotato" HeaderText="Prenotato" />
    </Columns>
</asp:GridView>

    </form>
</body>
</html>
