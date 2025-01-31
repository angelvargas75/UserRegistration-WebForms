<%-------------------VERSION ANTIGUA------------------------------%>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Crud.aspx.cs" Inherits="CRUDBootstrap.Pages.Crud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    CRUD
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <br />
    <div class="mx-auto" style="width: 250px">
        <asp:Label ID="lblTitulo" runat="server" CssClass="h2"></asp:Label>
    </div>
    <form runat="server" class="h-100 d-flex align-items-center justify-content-center">
        <div style="padding: 30px 30px">
            <div class="mb-3">
                <label class="form-label">Nombre</label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTextNombre" runat="server" 
                    ControlToValidate="txtNombre" 
                    ErrorMessage="Debe ingresar un nombre"
                    ForeColor="Red" 
                    Font-Size="Small" />
            </div>
            <div class="mb-3">
                <label class="form-label">Edad</label>
                <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTextEdad" runat="server" 
                    ControlToValidate="txtEdad" 
                    ErrorMessage="Debe ingresar una edad"
                    ForeColor="Red" 
                    Font-Size="Small" />
            </div>
            <div class="mb-3">
                <label class="form-label">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTextEmail" runat="server" 
                    ControlToValidate="txtEmail" 
                    ErrorMessage="Debe ingresar una direccion Email"
                    ForeColor="Red"
                    Font-Size="Small" />
            </div>
            <div class="mb-3">
                <label class="form-label">Fecha de nacimiento</label>
                <input type="date" id="txtDate" runat="server" class="form-control" />
                    <asp:RequiredFieldValidator ID="rfvTextDate" runat="server" 
                    ControlToValidate="txtDate" 
                    ErrorMessage="Debe ingresar una fecha de nacimiento"
                    ForeColor="Red" 
                    Font-Size="Small" />
            </div>
            <asp:Button ID="btnNuevo" runat="server" CssClass="btn btn-primary" Text="Nuevo" Visible="false" OnClick="btnNuevo_Click" />
            <asp:Button ID="btnActualizar" runat="server" CssClass="btn btn-primary" Text="Actualizar" Visible="false" OnClick="btnActualizar_Click" />
            <asp:Button ID="btnEliminar" runat="server" CssClass="btn btn-primary" Text="Eliminar" Visible="false" OnClick="btnEliminar_Click" />
            <asp:Button ID="btnVolver" runat="server" CssClass="btn btn-primary btn-dark" Text="Volver" Visible="true" OnClick="btnVolver_Click" 
                OnClientClick="postback false;" />
        </div>
    </form>
</asp:Content>
--%>



<%-------------------NUEVA VERSION 2025------------------------------%>
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Crud.aspx.cs" Inherits="CRUDBootstrap.Pages.Crud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    CRUD - Editar Registro
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="container min-vh-100 d-flex justify-content-center align-items-center"  style="margin-bottom: 60px;">
        <div class="card shadow-lg p-4 bg-white rounded" style="width: 90%; max-width: 500px;">
            <div class="text-center">
                <h2 class="fw-bold text-dark mb-4">
                    <asp:Label ID="lblTitulo" runat="server"></asp:Label>
                </h2>
            </div>

            <form runat="server">
                <!-- Campo Nombre -->
                <div class="mb-3">
                    <label class="form-label fw-bold">Nombre</label>
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTextNombre" runat="server"
                        ControlToValidate="txtNombre"
                        ErrorMessage="Debe ingresar un nombre"
                        ForeColor="Red"
                        CssClass="small text-danger" />
                </div>

                <!-- Campo Edad -->
                <div class="mb-3">
                    <label class="form-label fw-bold">Edad</label>
                    <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTextEdad" runat="server"
                        ControlToValidate="txtEdad"
                        ErrorMessage="Debe ingresar una edad"
                        ForeColor="Red"
                        CssClass="small text-danger" />
                </div>

                <!-- Campo Correo -->
                <div class="mb-3">
                    <label class="form-label fw-bold">Correo</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTextEmail" runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Debe ingresar una dirección de Email"
                        ForeColor="Red"
                        CssClass="small text-danger" />
                </div>

                <!-- Fecha de Nacimiento -->
                <div class="mb-3">
                    <label class="form-label fw-bold">Fecha de nacimiento</label>
                    <input type="date" id="txtDate" runat="server" class="form-control form-control-lg" />
                    <asp:RequiredFieldValidator ID="rfvTextDate" runat="server"
                        ControlToValidate="txtDate"
                        ErrorMessage="Debe ingresar una fecha de nacimiento correcta"
                        ForeColor="Red"
                        CssClass="small text-danger" />
                </div>

                <!-- Botones de acción -->
                <div class="d-grid gap-2">
                    <asp:Button ID="btnNuevo" runat="server" CssClass="btn btn-success btn-lg custom-btn" Text="Nuevo" Visible="false" OnClick="btnNuevo_Click" />
                    <asp:Button ID="btnActualizar" runat="server" CssClass="btn btn-primary btn-lg custom-btn" Text="Actualizar" Visible="false" OnClick="btnActualizar_Click" />
                    <asp:Button ID="btnEliminar" runat="server" CssClass="btn btn-danger btn-lg custom-btn" Text="Eliminar" Visible="false" OnClick="btnEliminar_Click" />
                    <asp:Button ID="btnVolver" runat="server" CssClass="btn btn-secondary btn-lg custom-btn" Text="Volver" Visible="true" OnClick="btnVolver_Click" OnClientClick="postback false;" />
                </div>
            </form>
        </div>
    </div>

    <style>
        body {
            background: linear-gradient(to right, #f8f9fa, #e9ecef);
            font-family: 'Arial', sans-serif;
        }

        .custom-btn {
            border-radius: 30px;
            font-weight: bold;
            transition: all 0.3s ease-in-out;
        }

        .custom-btn:hover {
            transform: scale(1.05);
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }

        .form-control-lg {
            border-radius: 10px;
        }

        .text-danger {
            font-size: 0.875rem;
            margin-top: 5px;
        }

        @media (max-width: 768px) {
            .form-control-lg {
                font-size: 1rem;
            }
        }
    </style>
</asp:Content>

