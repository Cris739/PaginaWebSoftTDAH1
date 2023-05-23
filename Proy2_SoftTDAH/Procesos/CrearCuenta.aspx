<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearCuenta.aspx.cs" Inherits="Proy2_SoftTDAH.Procesos.CrearCuenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
     <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
    <link rel="shortcut icon" href="../src/image/SOFTDTADH.png" />
    <title></title>

    <style type="text/css">
        body {
            font-family: Arial; 
            font-size: 10pt;
            background: #6482F4;
        }

        .gradient-custom {
            background: #6482F4;
          }  
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section class="w-100 p-3" >
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card bg-dark text-white" style="border-radius: 1rem;">
                            <div class="card-body p-5 text-center">
                                <asp:Image ID="Image1" runat="server" Height="100" ImageAlign="Middle" ImageUrl="../Src/images/SOFTDTADH.png" Width="100" />
                                <div align="center;">
                                        <h1>
                                            <asp:Label ID="Label2" runat="server" ForeColor="green"></asp:Label></h1>
                                    </div>
                                <asp:Panel ID="Panel1" runat="server">


                                    <h2 class="fw-bold mb-2 text-uppercase">Crear Cuenta</h2>
                                    

                                    <div class="form-outline form-white mb-4">
                                        <asp:TextBox ID="txtNombre" runat="server" class="form-control form-control-lg" CharacterCasing="Upper" ></asp:TextBox>
                                        <label class="form-label">Nombres</label>
                                    </div>
                                    <div class="form-outline form-white mb-4">
                                        <asp:TextBox ID="txtApellidoPaterno" runat="server" class="form-control form-control-lg" CharacterCasing="Upper" ></asp:TextBox>
                                        <label class="form-label">Apellido Paterno</label>
                                    </div>
                                    <div class="form-outline form-white mb-4">
                                        <asp:TextBox ID="txtApellidoMaterno" runat="server" class="form-control form-control-lg" CharacterCasing="Upper" ></asp:TextBox>
                                        <label class="form-label">Apellido Materno</label>
                                    </div>
                                     <div class="form-outline form-white mb-4">
                                        <asp:TextBox ID="txtCargo" runat="server" class="form-control form-control-lg" CharacterCasing="Upper" ></asp:TextBox>
                                        <label class="form-label">Cargo</label>
                                    </div>

                                    <div class="form-outline form-white mb-4">
                                        <asp:TextBox ID="txtCorreo" runat="server" class="form-control form-control-lg" CharacterCasing="Upper" TextMode="Email"></asp:TextBox>
                                        <label class="form-label">Correo</label>
                                    </div>
                                     <div class="form-outline form-white mb-4">
                                        <asp:TextBox ID="txtContraseña" runat="server" class="form-control form-control-lg" type="password"></asp:TextBox>
                                        <label class="form-label">Contraseña</label>
                                    </div>
                                    
                                    <div class="form-outline form-white mb-4">
                                    <asp:Button ID="btnRegistrar" class="btn btn-outline-light btn-lg px-4" runat="server" Text="Crear Cuenta" OnClick="btnRegistrar_Click"  />
                                    
                                </div>
                                     </asp:Panel>
                                 <asp:Button ID="btnVolver" class="btn btn-outline-danger btn-lg px-4" runat="server" Text="Volver" OnClick="btnVolver_Click" />
                                 <asp:Button ID="btnVolver2" class="btn btn-outline-danger btn-lg px-4" runat="server" Text="Volver" visible="false" OnClick="btnVolver2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <br />
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
