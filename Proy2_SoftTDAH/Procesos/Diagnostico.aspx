<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Diagnostico.aspx.cs" Inherits="Proy2_SoftTDAH.Procesos.Diagnostico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <script src="ScriptsJS/jquery-3.6.0.min.js"></script>
    <script src="ScriptsJS/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <title></title>
    </head>
    <body>
    <form id="form1" runat="server">
        <div class="container text-center" style="float: none; margin: auto;">  
         <div align="center">
                <br />
                <h1 style="text-align: center; font: bold 17px Verdana, Arial, sans-serif; padding: 3px 10px; border: #6482F4 5px solid; border-top-left-radius: 20px; border-bottom-right-radius: 20px;">DIAGNÓSTICO</h1>
            </div>
                 <div align="center">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageAlign="NotSet" ImageUrl="~/Src/images/SEGUIMINETODENOTAS.png" Width="300" OnClick="ImageButton2_Click"  />
            <asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="NotSet" ImageUrl="~/Src/images/reconocimiento.png" Width="300" OnClick="ImageButton1_Click"  />
            </div>
        </div>
    </form>
</body>
</html>
