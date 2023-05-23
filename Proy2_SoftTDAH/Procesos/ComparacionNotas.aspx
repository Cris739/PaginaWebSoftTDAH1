<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComparacionNotas.aspx.cs" Inherits="Proy2_SoftTDAH.Procesos.ComparacionNotas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />

    <title></title>
    <style>
        div.ob_tree {
            background-color: #6482F4;
            font-weight: bold;
            vertical-align: middle;
        }

        .mydropdownlist {
            color: black;
            font-size: 22px;
            padding: 5px 10px;
            border-radius: 5px;
            background-color: beige;
            font-weight: bold;
        }
        body{
            background-color:white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <asp:Image ID="Image1" runat="server" Height="148px" ImageAlign="Middle" ImageUrl="~/Src/images/SOFTDTADH.png"/>
            <br />
            <br />
        </div>
        <div align="center">
            <h1>
                <asp:Label ID="Label2" runat="server" Text="Comparación y Seguimiento de Notas" Font-Overline="False" Font-Underline="True"></asp:Label>
            </h1>
        </div>
        <br />

        <div align="center">
           <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="18pt" Text="Alumno: "></asp:Label>
                    <asp:DropDownList ID="DropDownList1" CssClass="auto-style1" runat="server" style="text-align:center">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList> 
        </div>
        <br />
        <br />
        <div align="center">
            <asp:Button ID="Button2" runat="server" class="btn btn-primary btn-lg px-5" Text="Visualizar" OnClick="Button2_Click"  />
            <br />
            <br />
        </div>
        <div align="center">
            <asp:GridView ID="gvAccesosUsuarios" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Visible="False" Height="250px" Width="400px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="Alu_Id" HeaderText="Código" Visible="False" />
                    <asp:BoundField DataField="Alu_Nom" HeaderText="Nombre" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField=" Alu_ApePat" HeaderText="Apellido" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                   
                    <asp:BoundField DataField="Promedio_Notas" HeaderText="Promedio de Notas" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>

                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
              <br />
        <br />
        </div>
        <br />
    
        <div align="center">
            <h1>
                <asp:Button ID="btnVolver" class="btn btn-secondary btn-lg px-4" runat="server" Text="Volver" Width="118px" BorderStyle="Double" Visible="true" OnClick="btnVolver_Click"  />
            </h1>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>
