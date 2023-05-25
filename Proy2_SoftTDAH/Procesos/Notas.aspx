<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Notas.aspx.cs" Inherits="Proy2_SoftTDAH.Procesos.Notas" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <%--<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>--%>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />

    <title></title>

    <style type="text/css">
        body {
            background-image: linear-gradient( at 50 50 175deg, #f1fdff 0, #e8eaeb 50%, #ded7d3 100%);
        }


        .modalPopup {
            min-height: 75px;
            position: fixed;
            z-index: 2000;
            padding: 0;
            background-color: #fff;
            border-radius: 6px;
            background-clip: padding-box;
            border: 1px solid rgba(0, 0, 0, 0.2);
            min-width: 290px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0);
        }

        .modalBackground {
            position: fixed;
            top: 0;
            background-color: #000;
            opacity: 0.5;
            z-index: 1800;
            min-height: 100%;
            width: 100%;
            overflow: hidden;
            filter: alpha(opacity=50);
            display: inline-block;
            z-index: 1000;
        }

        .auto-style1 {
        }

        .auto-style2 {
            position: center;
            min-height: 1px;
            width: 100%;
            top: 0px;
            padding-right: 15px;
        }

        table.table_class tbody tr th {
             text-align: center; 
            font-size: 10px;
            font: Arial, Narrow;
        }

        .auto-style4 {
            margin-left: 120px;
        }
        .auto-style5 {
            width: 98px;
        }
        .auto-style6 {
            width: 15px;
        }
    </style>

    <link media="screen" rel="stylesheet" href='http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css' />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/css/footable.min.css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/js/footable.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('[id*=GridView1]').footable();
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">

            <asp:Panel ID="PanelBuscar" runat="server">
                <div class="container text-center" style="float: none; margin: auto;">
                    <div align="center">
                        <br />
                        <h1 style="text-align: center; font: bold 17px Verdana, Arial, sans-serif; padding: 3px 10px; border: #6482F4 5px solid; border-top-left-radius: 20px; border-bottom-right-radius: 20px;">CONSULTA DE NOTAS</h1>
                    </div>
                </div>
                <br />
                <br />
                <br />
                <div align="center">
                    <asp:Button ID="btnAdd" runat="server" Text="Agregar Nuevo Registro" CssClass="btn-outline-primary" Visible="False" />
                </div>
                <br />
                <br />
                <div align="center">
                    <asp:Label ID="Label2" runat="server" Text="Por Apellido:" Font-Bold="True" Font-Size="18pt" Visible="True"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtBuscar" CssClass="form-control" runat="server" Height="29px" Visible="True" Width="200px"></asp:TextBox>
                </div>

                <br />
                <br />
                <br />
                <div align="center">

                    <asp:Button ID="Button1" class="btn btn-success btn-lg px-5" runat="server" Text="Buscar" Visible="True" OnClick="Button1_Click" />
                    &nbsp &nbsp &nbsp &nbsp 
                    <asp:Button ID="btnVolver" runat="server" class="btn btn-danger btn-lg px-5" Text="Volver" OnClick="btnVolver_Click" />
                </div>
            </asp:Panel>


        <asp:Panel ID="PanelGridView" runat="server" Visible="false">
            <uc:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </uc:ToolkitScriptManager>
            <div align="center" style="padding-top: 20px;">
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <div class="row">
                                <div class="auto-style2">
                                    <asp:GridView ID="GridView1" runat="server" CssClass="table_class" AutoGenerateColumns="False"
                                        Style="max-width: 1500px" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                    <asp:Button ID="btnAgregar" runat="server" Text="Agregar" CommandArgument='<%# Eval("Alu_Id") %>'
                                                        class="btn btn-success" OnClick="btnAgregar_Click" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                    <asp:Button ID="btnEdit" runat="server" Text="Editar" CommandArgument='<%# Eval("Alu_Id") %>'
                                                        class="btn btn-primary" OnClick="btnEdit_Click" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                    <asp:Button ID="btnDelete" runat="server" Text="Borrar" CommandArgument='<%# Eval("Alu_Id") %>'
                                                        class="btn btn-danger" Visible="false" />
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:BoundField DataField="Alu_Id" HeaderText="Id" Visible="False">
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Alu_Nom" HeaderText="NOMBRES" HeaderStyle-HorizontalAlign="Center" ItemStyle-Font-Bold="true">
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Alu_ApePat" HeaderText="APELLIDO PATERNO" ItemStyle-Font-Bold="true">
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Alu_ApeMat" HeaderText="APELLIDO MATERNO" ItemStyle-Font-Bold="true">
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="CComunicacion" HeaderText="COMUNICACIÓN" ItemStyle-Font-Bold="true">
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="CMatematicas" HeaderText="MATEMÁTICA" ItemStyle-Font-Bold="true">
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Cingles" HeaderText="INGLÉS" ItemStyle-Font-Bold="true">
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="CFisica" HeaderText="FÍSICA" ItemStyle-Font-Bold="true">
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="CQuimica" HeaderText="QUÍMICA" ItemStyle-Font-Bold="true">
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="CComputacion" HeaderText="COMPUTACIÓN" ItemStyle-Font-Bold="true">
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="CReligion" HeaderText="RELIGIÓN" ItemStyle-Font-Bold="true">
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="CEFisica" HeaderText="EDUCACIÓN FÍSICA" ItemStyle-Font-Bold="true">
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="CCienciasSociales" HeaderText="CIENCIAS SOCIALES" ItemStyle-Font-Bold="true">
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="CArte" HeaderText="ARTE" ItemStyle-Font-Bold="true">
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="PromNotasSalon" HeaderText="Promedio" ItemStyle-ForeColor="White" ItemStyle-Font-Bold="true">
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                        </Columns>
                                        <EditRowStyle BackColor="#2461BF" />
                                        <EmptyDataTemplate>
                                            <table cellpadding="0" cellspacing="0" class="footable" width="100%">
                                                <tr style="background-color: #DCE9F9;">
                                                    <th class="auto-style1"><b>Registros</b> </th>
                                                    <%--         <th class="hidden-lg"><b>Nombres</b> </th>
                                                    <th class="hidden-lg"><b>Apellido Paterno</b> </th>
                                                    <th class="hidden-lg"><b>Apellido Materno</b> </th>--%>
                                                    <th class="hidden-lg"><b>Comunicación</b> </th>
                                                    <th class="hidden-lg"><b>Matemáticas</b> </th>
                                                    <th class="hidden-lg"><b>Inglés</b> </th>
                                                    <th class="hidden-lg"><b>Física</b> </th>
                                                    <th class="hidden-lg"><b>Química</b> </th>
                                                    <th class="hidden-lg"><b>Computación</b> </th>
                                                    <th class="hidden-lg"><b>Religión</b> </th>
                                                    <th class="hidden-lg"><b>Edu. Física</b> </th>
                                                    <th class="hidden-lg"><b>C. Sociales</b> </th>
                                                    <th class="hidden-lg"><b>Arte</b> </th>
                                                    <th>&nbsp; </th>
                                                    <th>&nbsp; </th>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="9" style="text-align: center;"><b>No se encontraron Registros</b> </td>
                                                </tr>
                                            </table>
                                        </EmptyDataTemplate>
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" VerticalAlign="Middle" HorizontalAlign="Center" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>

            <asp:LinkButton ID="lnkFake" runat="server"></asp:LinkButton>

            <asp:Panel ID="pnlAddUpdateEmployeeDetails" runat="server" CssClass="modalPopup"
                Style="display: none;">
                <div style="overflow-y: auto; overflow-x: hidden; max-height: 450px;">
                    <div class="modal-header">
                        <asp:Label ID="lblHeading" runat="server" CssClass="modal-title"></asp:Label>
                    </div>
                    <div class="modal-body">

                        <%--  <div class="form-group">
                            <div class="row">
                                <div class="col-md-7">
                                    <label for="txtNombres">
                                        Nombres</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtNombres" runat="server" CssClass="form-control" placeholder="Nombres"
                                        Width="150px" ></asp:TextBox>
                                </div>
                                <div class="col-md-7">
                                    <asp:RequiredFieldValidator ID="rfvNombres" Display="Dynamic" ValidationGroup="Alumno"
                                        ErrorMessage="Completar" ControlToValidate="txtNombres" runat="server" ForeColor="Red" />
                                </div>
                            </div>
                        </div>
                       
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-7">
                                    <label for="txtApePaterno">
                                        Apellido Paterno</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtApePaterno" runat="server" CssClass="form-control" placeholder="Apellido Paterno"
                                        Width="150px" ></asp:TextBox>
                                </div>
                                <div class="col-md-7">
                                    <asp:RequiredFieldValidator ID="rfvApePaterno" Display="Dynamic" ValidationGroup="Alumno"
                                        ErrorMessage="Completar" ControlToValidate="txtApePaterno" runat="server" ForeColor="Red" />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-7">
                                    <label for="txtApeMaterno">
                                        Apellido Materno</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtApeMaterno" runat="server" CssClass="form-control" placeholder="Apellido Materno"
                                        Width="150px" ></asp:TextBox>
                                </div>
                                <div class="col-md-7">
                                    <asp:RequiredFieldValidator ID="rfvApeMaterno" ErrorMessage="Completar" Display="Dynamic"
                                        ValidationGroup="Alumno" ControlToValidate="txtApeMaterno" runat="server" ForeColor="Red" />
                                </div>
                            </div>
                        </div>--%>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-7">
                                    <label for="txtComunicacion">
                                        Comunicación</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtComunicacion" runat="server" CssClass="form-control" placeholder="Comunicación"
                                        Width="150px"></asp:TextBox>
                                </div>
                                <div class="col-md-7">
                                    <asp:RequiredFieldValidator ID="rfvComunicacion" ErrorMessage="Completar" Display="Dynamic"
                                        ValidationGroup="Alumno" ControlToValidate="txtComunicacion" runat="server" ForeColor="Red" />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-7">
                                    <label for="txtMatematicas">
                                        Matemáticas</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtMatematicas" runat="server" CssClass="form-control" placeholder="Matemáticas"
                                        Width="150px"></asp:TextBox>
                                </div>
                                <div class="auto-style4">
                                    <asp:RequiredFieldValidator ID="rfvMatematicas" ErrorMessage="Completar" Display="Dynamic"
                                        ValidationGroup="Alumno" ControlToValidate="txtMatematicas" runat="server" ForeColor="Red" />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-7">
                                    <label for="txtIngles">
                                        Inglés</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtIngles" runat="server" CssClass="form-control" placeholder="Inglés"
                                        Width="150px"></asp:TextBox>
                                </div>
                                <div class="col-md-7">
                                    <asp:RequiredFieldValidator ID="rfvIngles" ErrorMessage="Completar" Display="Dynamic"
                                        ValidationGroup="Alumno" ControlToValidate="txtIngles" runat="server" ForeColor="Red" />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-7">
                                    <label for="txtfisica">
                                        Física</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtfisica" runat="server" CssClass="form-control" placeholder="Física"
                                        Width="150px"></asp:TextBox>
                                </div>
                                <div class="col-md-7">
                                    <asp:RequiredFieldValidator ID="rfvfisica" ErrorMessage="Completar" Display="Dynamic"
                                        ValidationGroup="Alumno" ControlToValidate="txtfisica" runat="server" ForeColor="Red" />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-7">
                                    <label for="txtQuimica">
                                        Química</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtQuimica" runat="server" CssClass="form-control" placeholder="Química"
                                        Width="150px"></asp:TextBox>
                                </div>
                                <div class="col-md-7">
                                    <asp:RequiredFieldValidator ID="rfvQuimica" ErrorMessage="Completar" Display="Dynamic"
                                        ValidationGroup="Alumno" ControlToValidate="txtQuimica" runat="server" ForeColor="Red" />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-7">
                                    <label for="txtComputacion">
                                        Computación</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtComputacion" runat="server" CssClass="form-control" placeholder="Computación"
                                        Width="150px"></asp:TextBox>
                                </div>
                                <div class="col-md-7">
                                    <asp:RequiredFieldValidator ID="rfvComputacion" ErrorMessage="Completar" Display="Dynamic"
                                        ValidationGroup="Alumno" ControlToValidate="txtComputacion" runat="server" ForeColor="Red" />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-7">
                                    <label for="txtReligion">
                                        Religión</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtReligion" runat="server" CssClass="form-control" placeholder="Religión"
                                        Width="150px"></asp:TextBox>
                                </div>
                                <div class="col-md-7">
                                    <asp:RequiredFieldValidator ID="trfvReligion" ErrorMessage="Completar" Display="Dynamic"
                                        ValidationGroup="Alumno" ControlToValidate="txtReligion" runat="server" ForeColor="Red" />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-7">
                                    <label for="txtEduFisica">
                                        Edu. Física</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtEduFisica" runat="server" CssClass="form-control" placeholder="Edu. Física"
                                        Width="150px"></asp:TextBox>
                                </div>
                                <div class="col-md-7">
                                    <asp:RequiredFieldValidator ID="rfvEduFisica" ErrorMessage="Completar" Display="Dynamic"
                                        ValidationGroup="Alumno" ControlToValidate="txtEduFisica" runat="server" ForeColor="Red" />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-7">
                                    <label for="txtCSociales">
                                        C. Sociales</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtCSociales" runat="server" CssClass="form-control" placeholder="C. Sociales"
                                        Width="150px"></asp:TextBox>
                                </div>
                                <div class="col-md-7">
                                    <asp:RequiredFieldValidator ID="rfvCSociales" ErrorMessage="Completar" Display="Dynamic"
                                        ValidationGroup="Alumno" ControlToValidate="txtCSociales" runat="server" ForeColor="Red" />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-7">
                                    <label for="txtArte">
                                        Arte</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtArte" runat="server" CssClass="form-control" placeholder="Arte"
                                        Width="150px"></asp:TextBox>
                                </div>
                                <div class="col-md-7">
                                    <asp:RequiredFieldValidator ID="rfvArte" ErrorMessage="Completar" Display="Dynamic"
                                        ValidationGroup="Alumno" ControlToValidate="txtArte" runat="server" ForeColor="Red" />
                                </div>
                            </div>
                        </div>

                    </div>
                    <div align="center" class="modal-footer">
                        <div class="row">
                            <div class="col-md-12">
                                <asp:HiddenField ID="hfAddEditEmployeeId" runat="server" Value="0" />
                                <asp:HiddenField ID="hfAddEdit" runat="server" Value="ADD" />
                                <asp:Button ID="btnSave" runat="server" Text="Actualizar" class="btn btn-success" OnClick="Save"></asp:Button>
                                <button id="btnCancel" runat="server" class="btn btn-primary">
                                    Cancelar
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>


            <uc:ModalPopupExtender ID="mpeAddUpdateEmployee" runat="server" PopupControlID="pnlAddUpdateEmployeeDetails"
                TargetControlID="lnkFake" BehaviorID="mpeAddUpdateEmployee" CancelControlID="btnCancel"
                BackgroundCssClass="modalBackground">
            </uc:ModalPopupExtender>


            <asp:LinkButton ID="lnkFake1" runat="server"></asp:LinkButton>


            <asp:Panel ID="pnlDeleteEmployee" runat="server" CssClass="modalPopup" Style="display: none;">
                <div id="Div1" runat="server" class="header">
                </div>
                <div style="overflow-y: auto; overflow-x: hidden; max-height: 450px;">
                    <div class="form-group modal-body">
                        <div class="row">
                            <div class="col-md-12">
                                ¿Desea eliminar este registro?
                            </div>
                        </div>
                    </div>
                </div>
                <div align="right" class="modal-footer">
                    <div class="row">
                        <div class="col-md-12">
                            <asp:HiddenField ID="hfDeleteEmployeeId" runat="server" Value="0" />
                            <asp:Button ID="btnYes" runat="server" Text="Si" class="btn btn-danger"></asp:Button>
                            <button id="btnNo" runat="server" class="btn btn-default">
                                Cancelar
                            </button>
                        </div>
                    </div>
                </div>
            </asp:Panel>


            <uc:ModalPopupExtender ID="mpeDeleteEmployee" runat="server" PopupControlID="pnlDeleteEmployee"
                TargetControlID="lnkFake1" BehaviorID="mpeDeleteEmployee" CancelControlID="btnNo"
                BackgroundCssClass="modalBackground">
            </uc:ModalPopupExtender>
        </asp:Panel>
         <asp:Panel ID="panelpromedioscurso" runat="server" Visible="false">
        <div align="center">
                                <table class="table_class" style="max-width: 1600px; margin-left: 121px;" cellpadding="4" gridlines="None">
                                    <tr style="background-color: #507CD1; color: white;">
                                        <th rowspan="2"style="background-color: red;" class="auto-style5">Promedio por Cada Curso</th>
                                        <th>Comunicación</th>
                                        <th>Matemáticas</th>
                                        <th>Inglés</th>
                                        <th>Física</th>
                                        <th>Química</th>
                                        <th>Computación</th>
                                        <th>Religión</th>
                                        <th>Edu. Física</th>
                                        <th>C. Sociales</th>
                                        <th>Arte</th>
                                        <th style="background-color: red;" rowspan="2" class="auto-style6">Promedio del Salón</th>
                                    </tr>
                                    <tr>
                                        
                                        <td>
                                            <asp:TextBox ID="txtCursoComu" runat="server" Width="100px" style="text-align:center" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="txtCursoMate" runat="server" Width="100px" style="text-align:center" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="txtCursoIng" runat="server" Width="100px" style="text-align:center" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="txtCursoFisi" runat="server" Width="100px" style="text-align:center" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="txtCursoQuimi" runat="server" Width="100px" style="text-align:center " CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="txtCursoCompu" runat="server" Width="100px" style="text-align:center" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="txtCursoReli" runat="server" Width="100px" style="text-align:center" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="txtCursoEduFisi" runat="server" Width="100px" style="text-align:center" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="txtCursoCSoci" runat="server" Width="100px" style="text-align:center" CssClass="form-control"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="txtCursoArte" runat="server" Width="100px" style="text-align:center" CssClass="form-control"></asp:TextBox></td>
                                     
                                        <td align="center" rowspan="2">

                                            <asp:TextBox ID="txtPromSalon" runat="server" Width="100px" style="text-align:center" CssClass="form-control"></asp:TextBox></td>
                                         
                                         <td>

                                          
                                          </td>
                                            <td >

                                        
                                          </td>
                                    </tr>
                                </table>

                            </div>
             </asp:Panel>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
