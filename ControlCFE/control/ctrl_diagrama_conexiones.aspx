<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/template.Master" AutoEventWireup="true" CodeBehind="ctrl_diagrama_conexiones.aspx.cs" Inherits="ControlCFE.control.ctrl_diagrama_conexiones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
    <link href="../static/DataTables/datatables.min.css" rel="stylesheet" />
    <link href="../static/vakata-jstree-bc5187e/dist/themes/default/style.min.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="contenido" runat="server">
    <div class="form-group">
        <label>Padre</label>
        <select id="parent" class="form-control"></select>
        <label>Descripción</label>
        <input type="text" id="nodo" value="" class="form-control" />
        <label>Clave</label>
        <input type="text" id="clave" value="" class="form-control" />
        <button id="guardar" class="form-control btn btn-success" onclick="addNodo()">Guardar</button>
    </div>
    <br />
    
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="extrajs" runat="server">
    <script>
        var nodo = { clave: "", descripcion: "", parent: "" }
        var arbol = [nodo];
        var loadParent = function () {
            $("#parent").append(new Option("UCM", "1"));
            $.map(arbol, function (val, i) {
                $("#parent").append(new Option(val.descripcion, val.clave));
            });
        }

        var addNodo = function ()
        {
            var nodo = $("#nodo").val();
            var clave = $("#clave").val();
            $("#parent").append(new Option(nodo, clave));

            getData();
        }

        var getData = function ()
        {
            var clave = document.getElementById("parent").value;
            var parent = document.getElementById("parent").text;
            var descripcion = document.getElementById("descripcion").text;
            
            
        }

        $(function () {
            loadParent();
        }); 
    </script>
    <script src="../static/vakata-jstree-bc5187e/dist/jstree.min.js"></script>
    <script>
        $(function () {
            $("#arbolRedes").jstree();
        });


    </script>
</asp:Content>
