<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/template.Master" AutoEventWireup="true" CodeBehind="ctrl_historial.aspx.cs" Inherits="ControlCFE.control.ctrl_historial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
    <link href="../static/DataTables/datatables.min.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contenido" runat="server">
    <form id="form1" runat="server">
         <asp:Repeater ID="tabla_datos" runat="server">
            <HeaderTemplate>
                <table id="a_tabla_datos" style="border-collapse:collapse;" role="grid" border="1">
                    <thead>
                        <tr>
                            <th>Dispositivo</th>
                            <th>TagName</th>
                            <th>Subestación</th>
                            <th>Equipo</th>
                            <th>Mensaje</th>
                            <th>Fecha de UCM</th>
                            <th>Fecha de campo</th>
                            <th>Operador</th>
                        </tr>
                    </thead>
            </HeaderTemplate>
            <ItemTemplate>
                    <tr>    
                        <td>
                            <asp:Label ID="lblclave_disp" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.clave_disp") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lblclave" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.clave") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lblclave_sube" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.clave_sube") %>' />
                        </td>  
                        <td>
                            <asp:Label ID="lblequipo" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.equipo") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lblmensaje" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.mensaje") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lbltiempoucm" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.tiempo_ucm") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lbltiempocampo" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.tiempo_campo") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lbloperador" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.operadorrec") %>' />
                        </td>
                    </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </form>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="extrajs" runat="server">
    <script>
        $(document).ready(function () {
            $("#a_tabla_datos").DataTable();
        });
    </script>
</asp:Content>
