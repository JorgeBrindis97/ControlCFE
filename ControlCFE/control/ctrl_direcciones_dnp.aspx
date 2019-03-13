<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/template.Master" AutoEventWireup="true" CodeBehind="ctrl_direcciones_dnp.aspx.cs" Inherits="ControlCFE.control.ctrl_direcciones_dns" %>

<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
    <link href="../static/DataTables/datatables.min.css" rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="contenido" runat="server">

    <form id="form1" runat="server">
         <asp:Repeater ID="dnp_tabla_datos" runat="server">
            <HeaderTemplate>
                <table id="tabla_datos" style="border-collapse:collapse;" role="grid" border="1">
                    <thead>
                        <tr>
                            <th>Clave del dispositivo</th>
                            <th>Descripción</th>
                            <th>Dirección remota</th>
                            <th>Puerto</th>
                        </tr>
                    </thead>
            </HeaderTemplate>
            <ItemTemplate>
                    <tr>    
                        <td>
                            <asp:Label ID="lblclave_disp" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.clave_disp") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lbldescripcion" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.descr_dis") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lbldir_remota" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.dir_remota") %>' />
                        </td>  
                        <td>
                            <asp:Label ID="lblpuerto" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.puerto") %>' />
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
            $("#tabla_datos").DataTable();
        });
    </script>

</asp:Content>
