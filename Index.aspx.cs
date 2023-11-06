using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto1_Calculadora
{

    public partial class Index : System.Web.UI.Page
    {
        float num1 = 0;
        float num2 = 0;
        string operador;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (ViewState["num1"] != null)
            {
                num1 = (float)ViewState["num1"]; // Es una estrategia para recuperar el valor de num1 y que no se inicialice en 0
            }
            if (ViewState["operador"] != null)
            {
                operador = ViewState["operador"].ToString(); // Es una estrategia para recuperar el valor de operador y que no se inicialice en 0

            }
        }

        protected void agregarNum(object sender, EventArgs e)
        {
            var boton = ((Button)sender);
            if (txtResultado.Text == "0" || operador == "=")
            {
                txtResultado.Text = "";
            }

            txtResultado.Text += boton.Text;
        }

        protected void operador_Click(object sender, EventArgs e)
        {
            var boton = ((Button)sender);

            num1 = float.Parse(txtResultado.Text);
            operador = boton.Text;

            txtResultado.Text = "0";
            ViewState["num1"] = num1; // Guarda num1 en ViewState
            ViewState["operador"] = operador; // Guarda operador en ViewState
        }

        protected void resultado_Click(object sender, EventArgs e)
        {
            num2 = float.Parse(txtResultado.Text);

            if (operador == "+")
            {
                txtResultado.Text = (num1 + num2).ToString();
            }
            if (operador == "-")
            {
                txtResultado.Text = (num1 - num2).ToString();
            }
            if (operador == "x")
            {
                txtResultado.Text = (num1 * num2).ToString();
            }
            else if (operador == "÷")
            {
                if (num2 != 0)
                {
                    txtResultado.Text = (num1 / num2).ToString();
                }
                else
                {
                    txtResultado.Text = "Error!";
                }
            }
            else if (operador == "xʸ")
            {
                txtResultado.Text = Math.Pow(num1, num2).ToString();
            }

        }
        protected void borrarTodo(object sender, EventArgs e)
        {
            txtResultado.Text = "0";
        }

        protected void borrarUno(object sender, EventArgs e)
        {
            if (txtResultado.Text.Length > 0)// Si lo que esta en pantalla es mayor a cero que aplique la condicion
            {
                txtResultado.Text = txtResultado.Text.Remove(txtResultado.Text.Length - 1, 1);
            }// elimina el último carácter de la cadena

            if (txtResultado.Text == "") // regresa a cero
            {
                txtResultado.Text = "0";
            }
        }

        protected void agregarPunto(object sender, EventArgs e)
        {
            if (!txtResultado.Text.Contains("."))
            {
                txtResultado.Text += ".";
            }
        }
        protected void btnMasoMenos_Click(object sender, EventArgs e)
        {
            double masmenos = Convert.ToDouble(txtResultado.Text);
            txtResultado.Text = Convert.ToString(-1 * masmenos);
        }

        protected void btn2x_Click(object sender, EventArgs e)
        {
            double num = Convert.ToDouble(txtResultado.Text);
            double resultado = Math.Sqrt(num);
            txtResultado.Text = resultado.ToString();
        }

        protected void btn10x_Click(object sender, EventArgs e)
        {
            num1 = float.Parse(txtResultado.Text);
            double resultado = Math.Pow(10, num1);
            txtResultado.Text = resultado.ToString();
        }

        protected void btnLog_Click(object sender, EventArgs e)
        {
            num1 = float.Parse(txtResultado.Text);
            double resultado = Math.Log10(num1);
            txtResultado.Text = resultado.ToString();
        }

        protected void btnX2_Click(object sender, EventArgs e)
        {
            num1 = float.Parse(txtResultado.Text);
            double resultado = Math.Pow(num1, 2);
            txtResultado.Text = resultado.ToString();
        }

        protected void btnN_Click(object sender, EventArgs e)
        {
            int num = int.Parse(txtResultado.Text);

            if (num >= 0)
            {
                int factorial = 1;
                for (int i = 1; i <= num; i++)
                {
                    factorial *= i;
                }

                txtResultado.Text = factorial.ToString();
            }
            else
            {
                txtResultado.Text = "Error";
            }
        }
    }
}
// fin public class Index
//fin namespace
