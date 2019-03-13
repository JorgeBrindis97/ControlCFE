<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/template.Master" AutoEventWireup="true" CodeBehind="ctrl_configuracion.aspx.cs" Inherits="ControlCFE.control.ctrl_configuracion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
    <link href="../static/DataTables/datatables.min.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contenido" runat="server">
    <form id="form1" runat="server" method="POST">
    <div class="">
            <asp:Label Text="Tabla de estadísticas" runat="server" />
            <asp:Repeater ID="c_tabla_datos" runat="server">
            <HeaderTemplate>
                <table id="tabla_datos" style="border-collapse:collapse;" role="grid" border="1">
                    <thead>
                        <tr>
                            <th>Clave del dispositivo</th>
                            <th>Descripción</th>
                            <th>Protocolo</th>
                            <th>Ver</th>
                        </tr>
                    </thead>
            </HeaderTemplate>
            <ItemTemplate>
                    <tr>    
                        <td>
                            <asp:Label ID="lblclave_disp" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.clave_disp") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lblclave" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.descr_dis") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lblclave_sube" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.protocolo") %>' />
                        </td>  
                        <td>
                            <asp:Button Text="Ver" CssClass="btn btn-success" runat="server" ID="id" OnCommand="id_Command" CommandArgument='<%# Eval("clave_disp") %>' />
                        </td>
                    </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        </div>
        </form>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="extrajs" runat="server">
    <script>
        $(document).ready(function () {
            $("#tabla_datos").DataTable();
        });
    </script>
</asp:Content>
