<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Proyecto1_Calculadora.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Proyecto 1</title>
    <meta name="author" content="Team 1">
    <style>
        body{
            width: 275px;
            margin: auto;
            min-height: 308px;
            box-shadow: 0px 2px 10px -1px black;
            background: #3A4655;
        }
        #forms{
            margin: 150px 450px;
        }
        #txtResultado {
            width: 330px;
            height: 50px;
            text-align: right;
            padding-right: 10px;
            outline: none;
            border: none;
        }
        #btnCero, #btnUno, #btnDos, #btnTres, #btnCuatro, #btnCinco, #btnSeis, #btnSiete, #btnOcho, #btnNueve {
            display: table-cell;
            width: 65px;
            background: #425062;
            color: #fff;
            height: 40px;
            font-size: 1.3rem;
            border: none;
            border-color:#3C4857;
            border-width: 1px 1px 0px 0;
            border-style: solid;
        }
        #btnDeleteAll, #btn2x, #btnN, #btnDividir, #btnXy, #btnMultiplicar{
            display: table-cell;
            width: 65px;
            background: #425062;
            color: #fff;
            height: 40px;
            font-size: 1.3rem;
            border: none;
            border-color:#3C4857;
            border-width: 1px 1px 0px 0;
            border-style: solid;
        }
        #btn10x, #btnResta, #btnLog, #btnSuma, #btnX2, #btnMasoMenos, #btnPunto, #btnIgual{
            display: table-cell;
            width: 65px;
            background: #425062;
            color: #fff;
            height: 40px;
            font-size: 1.3rem;
            border: none;
            border-color:#3C4857;
            border-width: 1px 1px 0px 0;
            border-style: solid;
        }
        #btnDeleteEachNumber{
            display: table-cell;
            width: 65px;
            background: #425062;
            color: #fff;
            height: 38px;
            font-size: 1.3rem;
            border: none;
            border-color:#3C4857;
            border-width: 1px 1px 0px 0;
            border-style: solid;
        }
        #btnDeleteAll:active, #btn2x:active, #btnN:active, #btnDividir:active, #btnXy:active, #ButtonXy:active, #btnMultiplicar:active, #btnCero:active, #btnUno:active, #btnDos:active, #btnTres:active, #btnCuatro:active, #btnCinco:active, #btnSeis:active, #btnSiete:active, #btnOcho:active, #btnNueve:active, #btn10x:active, #btnResta:active, #btnLog:active, #btnSuma:active, #btnX2:active, #btnMasoMenos:active, #btnPunto:active, #btnIgual:active, #btnDeleteEachNumber:active{
            position: relative;
            top: 1px;
        }
        #btnDeleteAll:hover, #btn2x:hover, #btnN:hover, #btnDividir:hover, #btnXy:hover, #ButtonXy:hover, #btnMultiplicar:hover, #btnCero:hover, #btnUno:hover, #btnDos:hover, #btnTres:hover, #btnCuatro:hover, #btnCinco:hover, #btnSeis:hover, #btnSiete:hover, #btnOcho:hover, #btnNueve:hover, #btn10x:hover, #btnResta:hover, #btnLog:hover, #btnSuma:hover, #btnX2:hover, #btnMasoMenos:hover, #btnPunto:hover, #btnIgual:hover, #btnDeleteEachNumber:hover{
            background: #333e4c;
        }
        #Label1{
            height: 10px;
            font-family: 'Segoe UI Symbol';
            font-size: 1.5rem;
            text-align: right;
            color: white;
        }

        .auto-style1 {
            text-align: center;

        }
        .auto-style2 {
            border-radius: 5px;
            background-color: #3A4655;
            border: solid 1px #272f39;
            box-shadow: 0 8px 50px -7px black;


        }

    </style>
</head>

<body style="height: 229px; width: 359px">
    <form id="form1" runat="server">
            <div class="auto-style1">
                <div class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="CALCULADORA"></asp:Label>
                </div>
            <br />
             <asp:TextBox ID="txtResultado" runat="server" ReadOnly="True" Font-Names="Segoe UI" Font-Size="20pt" MaxLength="18">0</asp:TextBox>
            <asp:Button ID="btn2x" runat="server" Text="²√x" OnClick="btn2x_Click" />
            <asp:Button ID="btnDeleteAll" runat="server" Text="C" OnClick="borrarTodo" />
            <asp:Button ID="btnDeleteEachNumber" runat="server" Text="&#9003;" OnClick="borrarUno" />
            <asp:Button ID="btnN" runat="server" Text="n!" OnClick="btnN_Click" />
            <asp:Button ID="btnDividir" runat="server" Text="÷" OnClick="operador_Click" /><br />
            <asp:Button ID="btnXy" runat="server" Text="xʸ" OnClick="operador_Click" />
            <asp:Button ID="btnSiete" runat="server" Text="7" BorderStyle="None" OnClick="agregarNum" />
            <asp:Button ID="btnOcho" runat="server" Text="8" OnClick="agregarNum" />
            <asp:Button ID="btnNueve" runat="server" Text="9" OnClick="agregarNum" />
            <asp:Button ID="btnMultiplicar" runat="server" Text="x" OnClick="operador_Click" /><br />
            <asp:Button ID="btn10x" runat="server" Text="10 ͯ" OnClick="btn10x_Click" />
            <asp:Button ID="btnCuatro" runat="server" Text="4" OnClick="agregarNum" />
            <asp:Button ID="btnCinco" runat="server" Text="5" OnClick="agregarNum" />
            <asp:Button ID="btnSeis" runat="server" Text="6" OnClick="agregarNum" />
            <asp:Button ID="btnResta" runat="server" Text="-" OnClick="operador_Click" /><br />
            <asp:Button ID="btnLog" runat="server" Text="log" OnClick="btnLog_Click" />
            <asp:Button ID="btnUno" runat="server" OnClick="agregarNum" Text="1" />
            <asp:Button ID="btnDos" runat="server" Text="2" OnClick="agregarNum" />
            <asp:Button ID="btnTres" runat="server" Text="3" OnClick="agregarNum" />
            <asp:Button ID="btnSuma" runat="server" Text="+" OnClick="operador_Click" /><br />
            <asp:Button ID="btnX2" runat="server" Text="x²" OnClick="btnX2_Click" />
            <asp:Button ID="btnMasoMenos" runat="server" OnClick="btnMasoMenos_Click" Text="&#43;&#47;&#8722;" />
            <asp:Button ID="btnCero" runat="server" OnClick="agregarNum" Text="0" />
            <asp:Button ID="btnPunto" runat="server" Text="." OnClick="agregarPunto" />
            <asp:Button ID="btnIgual" runat="server" Text="=" OnClick="resultado_Click" />
            </div>
    </form>
</body>
</html>
