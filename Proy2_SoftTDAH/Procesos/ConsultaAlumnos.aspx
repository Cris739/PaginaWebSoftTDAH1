<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaAlumnos.aspx.cs" Inherits="Proy2_SoftTDAH.Procesos.ConsultaAlumnos" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" />
    <title></title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <script src="ScriptsJS/jquery-3.6.0.min.js"></script>
    <script src="ScriptsJS/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <style type="text/css">
        label, h3 {
            font: bold 13px Verdana, Arial, sans-serif;
        }

        table.table_class tbody tr th {
            text-align: center;
            font-size: 10px;
            font: Arial, Narrow;
        }

        body {
            background-image: linear-gradient( at 50 50 175deg, #f1fdff 0, #e8eaeb 50%, #ded7d3 100%);
        }

        .BigCheckBox input {
            width: 35px;
            height: 35px;
        }

        .auto-style2 {
            position: center;
            min-height: 1px;
            width: 100%;
            top: 0px;
            padding-right: 15px;
        }
        .auto-style3 {
            margin-left: 361px;
        }
    </style>
</head>
<body>
    <form runat="server">
        <div class="container text-center" style="float: none; margin: auto;">
            <%--<div class="col-md-1">
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl="~/css/imagen/LOGO1.png" Height="80px" Width="150px" />
            </div>--%>
            <div align="center">
                <br />
                <h1 style="text-align: center; font: bold 17px Verdana, Arial, sans-serif; padding: 3px 10px; border: #6482F4 5px solid; border-top-left-radius: 20px; border-bottom-right-radius: 20px;">CONSULTA DE ALUMNOS</h1>
            </div>
        </div>
        <br />
        <br />
        <div align="center">
            <h3>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                CRITERIO DE BÚSQUEDA:
            </h3>
        </div>
        <br />

        <div class="container container text-center">
            <div>
                <label class="col-md-3 control-label" style="text-align: center; color: #302C9B">Por Apellido</label>
                <div align="center">
                    <asp:TextBox ID="txtApePat" runat="server" CssClass="form-control" Height="30px" Width="200px"></asp:TextBox>
                </div>
            </div>
            <div>
                <label class="col-md-12 control-label" style="text-align: center; color: #302C9B">Por Fecha de Nacimiento</label>
            </div>
            <div align="center">
                <asp:TextBox ID="txtFechNac" runat="server" CssClass="form-control" Height="30px" Width="200px" TextMode="Date"></asp:TextBox>
            </div>
            <div>
                <label class="col-md-12 control-label" style="text-align: center; color: #302C9B">Por Resultado</label>
            </div>
            <div align="center">
                <asp:TextBox ID="txtResultado" runat="server" CssClass="form-control" Height="30px" Width="200px"></asp:TextBox>
            </div>
        </div>

        <br />
        <div align="center">
            <asp:Button ID="btnBuscar" class="btn btn-primary  btn-lg px-4" runat="server" Text="Buscar" Width="118px" BorderStyle="Double" Visible="true" OnClick="btnBuscar_Click" />
        </div>
        <br />
        <br />
        <div align="center" style="padding-top: 20px;">
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <div class="row">
                            <div class="auto-style2">
                                <asp:GridView ID="gvconsulta" runat="server" CssClass="table_class" AutoGenerateColumns="False"
                                    Style="max-width: 1500px" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="gvconsulta_RowDataBound">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Alu_Id" HeaderText="ID" ItemStyle-Width="100px" Visible="True">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Small" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="true" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Alu_Nom" HeaderText="NOMBRES" ItemStyle-Width="100px">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Small" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="true" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Alu_ApePat" HeaderText="APELLIDO PATERNO" ItemStyle-Width="100px">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Small" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="true" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Alu_ApeMat" HeaderText="APELLIDO MATERNO" ItemStyle-Width="100px">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Small" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="true" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Alu_Grado" HeaderText="GRADO" ItemStyle-Width="100px">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Small" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="true" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Alu_FechNac" HeaderText="FECHA DE NACIMIENTO" DataFormatString="{0:dd/MM/yyyy}" ItemStyle-Width="100px">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Small" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="true" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="PromNotasSalon" HeaderText="PROMEDIO DE NOTAS" ItemStyle-Width="100px">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Small" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="true" ForeColor="White" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Diag_Desc" HeaderText="DIAGNÓSTICO" ItemStyle-Width="100px">
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Small" />
                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Font-Bold="true" />
                                        </asp:BoundField>


                                    </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="form-group col-lg-12">
                <div class="col-md-12">
                </div>
            </div>
            <asp:Panel ID="panelPromedio" runat="server" visible="false">
             <div align="center" >
            <table class="auto-style3" style="max-width: 1600px; " cellpadding="4" gridlines="None">
                <tr style="background-color: #507CD1; color: white;">

                    <th style="background-color: #5D7B9D;" rowspan="2" class="auto-style6">Promedio del Salón</th>
                </tr>
                <tr>
                    <td align="center" rowspan="2">
                        <asp:TextBox ID="txtPromSalon" runat="server" Width="100px" Style="text-align: center" CssClass="form-control"></asp:TextBox></td>
                </tr>
            </table>
        </div>
                </asp:Panel>
            <br /><br />
            <div align="center">
                <asp:Button ID="btnVolver" class="btn btn-secondary btn-lg px-4" runat="server" Text="Volver" Width="118px" BorderStyle="Double" Visible="true" OnClick="btnVolver_Click" />
            </div>
            <br />
        </div>
       
    </form>
</body>
</html>
