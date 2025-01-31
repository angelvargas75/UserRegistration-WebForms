<%-------------------VERSION ANTIGUA------------------------------%>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CRUDBootstrap.Pages.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    INDEX
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form runat="server">
        <div class="d-flex" role="search" style="padding: 15px 255px 5px 255px;">
            <asp:TextBox ID="txtFilter" runat="server" CssClass="form-control me-2" />
            <asp:Button ID="btnBuscar" runat="server" class="btn btn-outline-success" OnClick="btnBuscar_Click1" Text="Buscar" />
        </div>

        <br />
        <div class="mx-auto" style="width: 300px;">
            <h2>Listado de registro</h2>
        </div>
        <br />
        <div class="container">
            <div class="row">
                <div class="col align-self-end">
                    <asp:Button ID="btnNuevo" runat="server" CssClass="btn btn-success form-control" Text="Nuevo" OnClick="btnNuevo_Click" />
                </div>
            </div>
        </div>
        <br />

        <div class="table small" style="padding: 20px;">
            <asp:GridView ID="dgvListado" runat="server" class="table table-borderless table-hover">
                <Columns>
                    <asp:TemplateField HeaderText="Opciones del administrador">
                        <ItemTemplate>
                            <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" CssClass="btn form-control-sm btn-outline-success" OnClick="btnActualizar_Click" />
                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn form-control-sm btn-outline-danger" OnClick="btnEliminar_Click" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</asp:Content>--%>



<%-------------------NUEVA VERSION 2025------------------------------%>
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CRUDBootstrap.Pages.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    INDEX
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form runat="server">
        <div class="container-fluid min-vh-100 d-flex flex-column justify-content-center align-items-center bg-light"  style="margin-bottom: 60px;">
            
            <!-- Barra de búsqueda -->
            <div class="card shadow-lg p-4 mb-4 bg-white rounded" style="width: 90%; max-width: 600px;">
                <div class="d-flex">
                    <asp:TextBox ID="txtFilter" runat="server" CssClass="form-control form-control-lg me-2 custom-input" placeholder="Buscar por nombre ..." />
                    <asp:Button ID="btnBuscar" runat="server" CssClass="btn btn-primary btn-lg" OnClick="btnBuscar_Click1" Text="🔍" />
                </div>
            </div>

            <!-- Título -->
            <div class="text-center mb-4">
                <h2 class="fw-bold text-dark">📋 Registro de Usuarios</h2>
            </div>

            <!-- Botón Nuevo -->
            <div class="mb-4">
                <asp:Button ID="btnNuevo" runat="server" CssClass="btn btn-success btn-lg shadow-sm px-5 custom-btn" Text="+ Nuevo" OnClick="btnNuevo_Click" />
            </div>

            <!-- Tabla de registros -->
            <div class="card shadow-lg p-4 bg-white rounded" style="width: 90%; max-width: 800px;">
                <div class="table-responsive">
                    <asp:GridView ID="dgvListado" runat="server" CssClass="table table-striped table-hover text-center border rounded" AutoGenerateColumns="false">
                        <Columns>
                            <asp:TemplateField HeaderText="Opciones">
                                <ItemTemplate>
                                    <asp:Button ID="btnActualizar" runat="server" Text="✏️" CssClass="btn btn-outline-primary btn-sm rounded-circle" OnClick="btnActualizar_Click" />
                                    <asp:Button ID="btnEliminar" runat="server" Text="🗑️" CssClass="btn btn-outline-danger btn-sm rounded-circle ms-2" OnClick="btnEliminar_Click" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:BoundField DataField="Id_Usuario" HeaderText="ID" HeaderStyle-CssClass="hidden-column" ItemStyle-CssClass="hidden-column" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                            <asp:BoundField DataField="Edad" HeaderText="Edad" />
                            <asp:BoundField DataField="Correo" HeaderText="Correo" />
                            <asp:BoundField DataField="Fecha_Nacimiento" HeaderText="Fecha de Nacimiento" DataFormatString="{0:MM/dd/yyyy}" HtmlEncode="false" />  
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>

    <style>
        body {
            background: linear-gradient(to right, #f8f9fa, #e9ecef);
            font-family: 'Arial', sans-serif;
        }

        .custom-input {
            border-radius: 10px;
            min-width: 250px;
            max-width: 400px;
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

        .table th, .table td {
            vertical-align: middle !important;
        }

        @media (max-width: 768px) {
            .custom-input, .custom-btn {
                width: 100%;
            }
        }

        .hidden-column {
            display: none;
        }
    </style>
</asp:Content>
