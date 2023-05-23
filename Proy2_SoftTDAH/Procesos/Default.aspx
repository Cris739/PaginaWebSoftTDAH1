<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Proy2_SoftTDAH.Procesos.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" />
    <link rel="shortcut icon" href="Src/images/SOFTDTADH.png" />
    <title></title>

    <style type="text/css">
        body {
            font-family: Arial;
            font-size: 10pt;
           background: #6482F4;
        }

        .gradient-custom {
          
           
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section class="w-100 p-3" style="background-color: #6482F4;">

            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card bg-dark text-white" style="border-radius: 1rem;">
                        <div class="card-body p-5 text-center">
                            <asp:Image ID="Image1" runat="server" Height="148px" ImageAlign="Middle" ImageUrl="~/Src/images/SOFTDTADH.png" />


                            <div class="mb-md-5 mt-md-4 pb-5">

                                <h2 class="fw-bold mb-2 text-uppercase">Acceso</h2>
                                <p class="text-white-50 mb-5">Ingresa tu Usuario y Contraseña</p>

                                <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>

                                <div class="form-outline form-white mb-4">
                                    <asp:TextBox ID="txtUsuario" runat="server" class="form-control form-control-lg" CharacterCasing="Upper" Style="text-align: center"></asp:TextBox>
                                    <label id="lbl1" class="form-label">Usuario</label>
                                </div>

                                <div class="form-outline form-white mb-4">
                                    <asp:TextBox ID="txtContraseña" runat="server" class="form-control form-control-lg" TextMode="password" Style="text-align: center"></asp:TextBox> 
                                    <i id="togglePassword" class="fa fa-eye"></i>
                                    <label class="form-label">Contraseña</label>

                                    <script type="text/javascript">
                                    var togglePassword = document.querySelector('#togglePassword');
                                    var password = document.querySelector('#txtContraseña');
                                    togglePassword.addEventListener('click', function (e) {
                                        const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
                                        password.setAttribute('type', type);
                                        this.classList.toggle('fa-eye-slash');
                                    });
                                    </script>
                                </div>
                               
                                <div>
                                       <asp:Label ID="Label2" runat="server" Text="¿Olvidaste tu contraseña?"></asp:Label>
                                </div>
                                <asp:Button ID="Button1" class="btn btn-outline-danger btn-lg px-3" runat="server" Text="Haz click aquí" OnClick="Button1_Click" />
                                 <br /><br />
                                <asp:Button ID="btnAcceder" class="btn btn-outline-light btn-lg px-5" runat="server" Text="Acceder" OnClick="btnAcceder_Click"  />
                                  <br /><br />
                                <asp:Button ID="btnRegistrar" class="btn btn-outline-light btn-lg px-4" runat="server" Text="Crear Cuenta" OnClick="btnRegistrar_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>