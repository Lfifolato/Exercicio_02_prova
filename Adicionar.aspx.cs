using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exercicio_02_prova
{
    public partial class Adicionar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand();



            try
            {
                string Carteira = txtCarteira.Text;

                cmd.Connection = Conexao.Connection;

                cmd.CommandText = @"select num_carteira
                                    from funcionario
                                    where num_carteira=@carteira";

                cmd.Parameters.AddWithValue("carteira", Carteira);

                Conexao.Conectar();

                string Cnpj_Forn = Convert.ToString(cmd.ExecuteScalar());

                if (Carteira == Cnpj_Forn)
                {

                    lblResultado.Text = "N° De Carteira de Trabalho Ja Cadastrado ";
                }
                else
                {
                    cmd.CommandText = @"insert into funcionario(
                                  nome, sexo, email, nascimento, num_carteira, ddd, telefone, celular, cep, numero_casa)
                                  values
                                  (@nome, @sexo, @email, @nascimento, @num_carteira, @ddd, @telefone, @celular, @cep, @numero_casa)";

                    cmd.Parameters.AddWithValue("nome", txtNome.Text);
                    cmd.Parameters.AddWithValue("sexo", txtSexo.Text); 
                    cmd.Parameters.AddWithValue("email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("num_carteira", txtCarteira.Text);
                    cmd.Parameters.AddWithValue("nascimento", txtNascimento.Text);
                    cmd.Parameters.AddWithValue("ddd", txtDdd.Text);
                    cmd.Parameters.AddWithValue("celular", txtCelular.Text);
                    cmd.Parameters.AddWithValue("telefone", txtTelefone.Text);                    
                    cmd.Parameters.AddWithValue("cep", txtCep.Text);
                    cmd.Parameters.AddWithValue("numero_casa", txtNumero.Text);


                    cmd.ExecuteNonQuery();
                    Response.Redirect("lista.aspx");
                }


            }
            catch (Exception ex)
            {
                lblResultado.Text = "Falha:" + ex.Message;
            }
            finally
            {

                Conexao.Desconectar();

            }
        }
    }
}