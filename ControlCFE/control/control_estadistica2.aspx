<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/template.Master" AutoEventWireup="true" CodeBehind="control_estadistica2.aspx.cs" Inherits="ControlCFE.control.control_estadistica2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
    <link href="../static/DataTables/datatables.min.css" rel="stylesheet" />
	<link href="../static/Pikaday-master/css/pikaday.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="contenido" runat="server">
        <form id="form1" runat="server">
		
		<br />
            <asp:Label Text="Tabla de estadísticas" runat="server" />
            <asp:Repeater ID="e_tabla_datos" runat="server">
            <HeaderTemplate>
                <table id="tabla_datos" style="border-collapse:collapse;" role="grid" border="1">
                    <thead>
                        <tr>
                            <th>Clave del dispositivo</th>
                            <th>Descripción</th>
                            <th>Protocolo</th>
                            <th>Transmisión</th>
                            <th>Recepción</th>
                            <th>Puerto</th>
                            <th>Fecha</th>
                            <th>Eficiencia</th>
                            <th>CRC</th>
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
                            <asp:Label ID="lblequipo" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.tx") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lblmensaje" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.rx") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lbltiempoucm" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.puerto") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lblfecha" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.fecha") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lbleficiencia" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.eficiencia") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lblcrc" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.crc") %>' />
                        </td>
                    </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
            <br />
            <div class="row">
                <div class="form-group">
                    <div class="form-control">
                        <label>Promedio de Eficiencia.</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="avgEfici" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>Suma de las transmisiones.</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="sumTxTxt" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>Suma de las recepciones.</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="sumRxTxt" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>Suma del CRC</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="sumCrcTxt" Enabled="false" />
                    </div>
                </div>
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
