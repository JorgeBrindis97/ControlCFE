<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/template.Master" AutoEventWireup="true" CodeBehind="ctrl_configuracion2.aspx.cs" Inherits="ControlCFE.control.ctrl_configuracion2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
    <link href="../static/DataTables/datatables.min.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="contenido" runat="server">
    <form id="form1" runat="server">
        <div class="form-group">
            <div class="row">
                <div class="col-md-4">
                    <div class="form-control">
                        <label>ID</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="clave_disp" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>ID subestación</label> 
                        <asp:TextBox runat="server" CssClass="form-control" ID="clave_sube" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>Descripción</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="descr_dis" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>Protocolo</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="protocolo" Enabled="false" />
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="form-control">
                        <label>Dirección remota</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="dir_remota" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>Dirección local</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="dir_local" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>Res no sol.</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="res_no_sol" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>Esp enlace</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="esp_enlace" Enabled="false" />
                    </div>
                </div>
            
                <div class="col-md-4">
                    <div class="form-control">
                        <label>Intentos</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="intentos" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>Confir</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="confir" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>Fragmento</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="fragmento" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>Tiempo esperado</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="tiempo_esp" Enabled="false" />
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-4">
                    <div class="form-control">
                        <label>Reintentos</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="reintentos" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>Confirmar</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="confirmar" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>Trama máxima</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="trama_max" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>Puerto</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="puerto" Enabled="false" />
                    </div>
                </div>
            
                <div class="col-md-4">
                    <div class="form-control">
                        <label>Tiempo pre</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="tiempo_pre" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>Tiempo pos</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="tiempo_pos" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>Dirección IP</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="direccionip" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>Número Prot</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="numprot" Enabled="false" />
                    </div>
                </div>
            
                <div class="col-md-4">
                    <div class="form-control">
                        <label>Servicio</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="servicio" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>Bk Dirección IP</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="bkdireccionip" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>Bk Servicio</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="bkservicio" Enabled="false" />
                    </div>
                    <div class="form-control">
                        <label>Bk Tipo</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="bktipo" Enabled="false" />
                    </div>
                </div>
            </div>  
            
            <div class="row">
               <div class="col-md-4">
                    <div class="form-control">
                        <label>Redundancia</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="redundancia" Enabled="false" />
                    </div>
                </div>
            </div>            
        </div>
    </form>
    <br />
    <div class="">
        <a href="ctrl_configuracion.aspx" class="btn btn-info">Regresar</a>
    </div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="extrajs" runat="server">

</asp:Content>
