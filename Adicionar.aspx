<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Adicionar.aspx.cs" Inherits="Exercicio_02_prova.Adicionar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <div class="text-center text-primary">
            <h2>Cadastro de Funcionario</h2>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-md-6">
                <label>Nome:</label>
                <asp:RequiredFieldValidator ID="rfvNome" ControlToValidate="txtNome"
                    ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtNome" runat="server" MaxLength="100" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-6">
                <label>E-Mail:</label>
                <asp:RequiredFieldValidator ID="rfvEmail" ControlToValidate="txtNome"
                    ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtEmail" runat="server" MaxLength="120" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-md-2">
                <label>ddd :</label>
                <asp:RequiredFieldValidator ID="rfvDdd" ControlToValidate="txtDdd"
                    ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtDdd" runat="server" MaxLength="3" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="col-md-5">
                <label>Telefone:</label>
                <asp:RequiredFieldValidator ID="rfvTelefone" ControlToValidate="txtTelefone"
                    ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtTelefone" runat="server" MaxLength="8" CssClass="form-control"></asp:TextBox>
            </div>


            <div class="col-md-5">
                <label>Celular</label>
                <asp:RequiredFieldValidator ID="rfvCelular" ControlToValidate="txtCelular"
                    ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtCelular" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

        </div>

        <div class="row">

            <div class="col-md-4">
                <label>Sexo:</label>
                <asp:RequiredFieldValidator ID="rfvSexo" ControlToValidate="txtSexo"
                    ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                <asp:DropDownList ID="txtSexo" runat="server" CssClass="form-control">
                    <asp:ListItem Selected="True" Value=""></asp:ListItem>
                    <asp:ListItem Value="M">mulher</asp:ListItem>
                    <asp:ListItem Value="H">homem</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="col-md-4">
                <label>Data De Nascimento</label>
                <asp:RequiredFieldValidator ID="rfvNascimento" ControlToValidate="txtNascimento"
                    ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtNascimento" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="col-md-4">
                <label>Numero Da Carteira </label>
                <asp:RequiredFieldValidator ID="rfvCarteira" ControlToValidate="txtCarteira"
                    ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtCarteira" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

        </div>


        <div class="row">

            <div class="col-md-6">
                <label>Cep:</label>
                <asp:RequiredFieldValidator ID="rfvCep" ControlToValidate="txtCep"
                    ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtCep" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="col-md-6">
                <label>Numero :</label>
                <asp:RequiredFieldValidator ID="rfvNumero" ControlToValidate="txtNumero"
                    ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtNumero" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-md-12 text-right">
                <asp:Button ID="btnSalvar" CssClass="btn btn-outline-success" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
            </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-md-12 text-right">
                <asp:Label ID="lblResultado" CssClass="text text-danger" runat="server"></asp:Label>
            </div>
        </div>

    </div>

</asp:Content>
