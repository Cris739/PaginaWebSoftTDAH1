<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecuperarContraseña.aspx.cs" Inherits="Proy2_SoftTDAH.Procesos.RecuperarContraseña" %>

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
        <section class="w-100 p-3">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card bg-dark text-white" style="border-radius: 1rem;">
                            <div class="card-body p-5 text-center">
                                <asp:Image ID="Image1" runat="server" Height="148px" ImageAlign="Middle" ImageUrl="../Src/images/SOFTDTADH.png" />
                                <br /><br />
                                <div align="center;">
                                    <h1>
                                        <asp:Label ID="Label2" runat="server" ForeColor="green"></asp:Label></h1>
                                </div>
                                <asp:Panel ID="Panel1" runat="server">
                                     <asp:Label ID="lblMessage" runat="server" Visible="false" />
                                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Correo electrónico" TextMode="Email" CssClass="form-control" />
                                        <br />
                                     <asp:Label ID="lblMensaje2" runat="server" Text="Label" Visible="false" CssClass="text-success"></asp:Label>
                                     <br />
                                    <asp:Button ID="btnRecover" runat="server" Text="Recuperar contraseña" class="btn btn-outline-success btn-lg px-4" OnClick="btnRecover_Click"/>
                                </asp:Panel>
                                <br /><br />
                                <asp:Button ID="btnVolver" CausesValidation="false" class="btn btn-outline-danger btn-lg px-4" runat="server" Text="Volver" OnClick="btnVolver_Click" />
                                <asp:Button ID="btnVolver2" CausesValidation="false" class="btn btn-outline-danger btn-lg px-4" runat="server" Text="Volver" Visible="false" OnClick="btnVolver2_Click"  />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
