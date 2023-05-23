<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaPrincipal.aspx.cs" Inherits="Proy2_SoftTDAH.Procesos.PaginaPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
     <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
    <title>SOFT TDA - Página Principal</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <script src="ScriptsJS/jquery-3.6.0.min.js"></script>
    <script src="ScriptsJS/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <script>
</script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#">SOFTDAH</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Inicio <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="RegistrarAlumno.aspx">Registrar Alumno</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="ConsultaAlumnos.aspx">Listar Alumno</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link " href="#">Diagnostico</a>
                        </li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li class="nav-item active">
                            <a class="nav-link " href="#">Bienvenido: <asp:Label ID="lblCod" runat="server" Visible="False" ></asp:Label>
                                                                      <asp:Label ID="lblNom" runat="server" Font-Size="Large" Font-Bold="true"></asp:Label> 
                                                                      <asp:Label ID="lblApePaterno" runat="server" Font-Size="Large" Font-Bold="true"></asp:Label>
                                                                    - <asp:Label ID="lblCorreo" runat="server" Font-Size="Large" Font-Bold="true"></asp:Label>   
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <div align="center">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageAlign="NotSet" ImageUrl="~/Src/images/RegistrarAlumno.png" Width="300" OnClick="ImageButton2_Click" />
            <asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="NotSet" ImageUrl="~/Src/images/diagnostico.png" Width="300" OnClick="ImageButton1_Click" />
            <asp:ImageButton ID="ImageButton3" runat="server" ImageAlign="NotSet" ImageUrl="~/Src/images/listadeAlumnos.png" Width="300" OnClick="ImageButton3_Click" />
        </div>
        <div align="rigth">
            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Src/images/MANUAL DE USUARIO.png" Width="200" OnClick="ImageButton4_Click"/>
        </div>
        <div align="center">
            <asp:Button ID="btnCerrarSesion" class="btn btn-outline-danger btn-lg px-4" runat="server" Text="Cerrar Sesión" OnClick="btnCerrarSesion_Click"  />
        </div>

    </form>
</body>
</html>
