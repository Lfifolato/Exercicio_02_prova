﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="Exercicio_02_prova.Lista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

    <script src="Scripts/jquery-3.5.1.min.js"></script>

    <link rel="stylesheet" type="text/css"
        href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" />

    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">

        <div class="text-center text-primary">
            <h2>Listagem de Funcionarios</h2>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-md-12 text-right">
                <asp:Button ID="btnAdicionar" CssClass="btn btn-outline-primary" runat="server"
                    Text="Adicionar" OnClick="btnAdicionar_Click" />
            </div>
        </div>
        <p>
            <asp:Repeater ID="rptUsuarios" runat="server">
                <HeaderTemplate>
                    <table class="table table-hover" id="sisDataTable">
                        <thead>
                            <tr>
                                <td><strong>ID</strong></td>
                                <td><strong>Nome</strong></td>
                                <td><strong>E-mail</strong></td>
                                <td><strong>Sexo</strong></td>                               
                            </tr>
                        </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <%# DataBinder.Eval(Container.DataItem, "id") %>
                        </td>
                        <td>
                            <%# DataBinder.Eval(Container.DataItem, "nome") %>
                        </td>
                        <td>
                            <%# DataBinder.Eval(Container.DataItem, "email") %>
                        </td>
                        <td>
                            <%# DataBinder.Eval(Container.DataItem, "sexo") %>
                        </td>                       
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </p>

        <div class="row">
            <div class="col-md-12">
                <asp:Label runat="server" Text="" ID="lblMsg"></asp:Label>
            </div>
        </div>

    </div>

    <script>
        $('#sisDataTable').dataTable({
            "language": {
                "url": "https://cdn.datatables.net/plug-ins/1.10.20/i18n/Portuguese-Brasil.json"
            }
        });
    </script>



</asp:Content>
