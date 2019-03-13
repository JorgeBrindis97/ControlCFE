<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/template.Master" AutoEventWireup="true" CodeBehind="control_estadistica.aspx.cs" Inherits="ControlCFE.control.control_estadistica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
    <link href="../static/DataTables/datatables.min.css" rel="stylesheet" />
	<link href="../static/Pikaday-master/css/pikaday.css" rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="contenido" runat="server">
    <form runat="server" id="form" method="post" class="form-group">
        <div class="row">
            <div class="form-inline form-group">
                <div class="form-control">
                    <label>Fecha de inicio</label>
			        <asp:TextBox runat="server" ID="fecha_inicio" CssClass="form-control"></asp:TextBox>
		        </div>
		        <div class="form-control">
                    <label>Fecha final</label>
			        <asp:TextBox runat="server" ID="fecha_final" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-control">
                    <label>Seleccione el tipo de dispositivo</label>
                    <asp:DropDownList runat="server" ID="tipo_disp" CssClass="form-control">
                        <asp:ListItem Text="Todos" value="todos" Selected="True" />
                        <asp:ListItem Text="Subestaciones" value="S.E." />
                        <asp:ListItem Text="Red Aérea" value="R.A." />
                    </asp:DropDownList>
                </div>
                <div class="form-control">
                    <label>Seleccione un dispositivo</label>
                    <asp:DropDownList runat="server" ID="disp" CssClass="form-control">
                    </asp:DropDownList>
                </div>
                  
            </div>
            <br />
                <div class="container">
			        <asp:Button CssClass="btn btn-primary" Text="Buscar" runat="server" ID="btnBuscar" OnCommand="btnBuscar_Command" />
		        </div>
        </div>
    </form>
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="extrajs" runat="server"> 
	
    <script src="../static/Pikaday-master/pikaday.js"></script>
	<script>
		var picker1 = new Pikaday(
		{
			field: document.getElementById('contenido_fecha_inicio'),
                firstDay: 1,
                format: 'YYYY/MM/DD',
                toString(date, format) {
                    const day = date.getDate();
                    const month = date.getMonth() + 1;
                    const year = date.getFullYear();
                    return `${year}-${month}-${day}`;
                }, 
                parse(dateString, format) {
                    const parts = dateString.split('-');
                    const day = parseInt(parts[0], 10);
                    const month = parseInt(parts[1], 10) - 1;
                    const year = parseInt(parts[2], 10);
                    return new Date(year, month, day);
                },
                i18n: {
                    previousMonth : 'Anterior mes',
                    nextMonth     : 'Siguiente mes',
                    months        : ['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
                    weekdays      : ['Domingo','Lunes','Martes','Miércoles','Jueves','Viernes','Sábado'],
                    weekdaysShort : ['Dom','Lun','Mar','Mie','Jue','Vie','Sáb']
                }
		});

		var picker2 = new Pikaday(
		{
			field: document.getElementById('contenido_fecha_final'),
                firstDay: 1,
                format: 'YYYY/MM/DD',
                toString(date, format) {
                    const day = date.getDate();
                    const month = date.getMonth() + 1;
                    const year = date.getFullYear();
                    return `${year}-${month}-${day}`;
                }, 
                parse(dateString, format) {
                    const parts = dateString.split('-');
                    const day = parseInt(parts[0], 10);
                    const month = parseInt(parts[1], 10) - 1;
                    const year = parseInt(parts[2], 10);
                    return new Date(year, month, day);
                },
                i18n: {
                    previousMonth : 'Anterior mes',
                    nextMonth     : 'Siguiente mes',
                    months        : ['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
                    weekdays      : ['Domingo','Lunes','Martes','Miércoles','Jueves','Viernes','Sábado'],
                    weekdaysShort : ['Dom','Lun','Mar','Mie','Jue','Vie','Sáb']
                }
		});

	</script>
	
</asp:Content>
