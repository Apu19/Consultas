<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AgregarEstacion.aspx.cs" Inherits="ConsultasWeb.AgregarEstacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="mt-5">
         <div class="card col-4 position-absolute top-50 start-50 translate-middle"">
        <div class="card-header bg-info">
            Agregar estacion de servicio
        </div>
        <div class="card-body">          
            <div class="form-group">
                <label>Dirección</label>
            <asp:TextBox ID="DireccionTxt" class="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="Debe ingresar la dirección"
                    ControlToValidate="DireccionTxt" CssClass="text-danger"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label>Capacidad maxima de puntos de carga</label>
            <asp:TextBox ID="capMaxTxt" TextMode="Number" class="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="Debe ingresar la capacidad maxima"
                    ControlToValidate="capMaxTxt" CssClass="text-danger"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label>Región</label>
            <asp:TextBox ID="regionTxt" class="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="Debe ingresar la region"
                    ControlToValidate="regionTxt" CssClass="text-danger"></asp:RequiredFieldValidator>
            </div>
             <div class="form-group">
                  <label>Horario de atención</label>
                 <asp:TextBox ID="HorarioTxt" runat="server" TextMode="Time"></asp:TextBox>
            </div>
        </div>
        <div class="card-footer">
            <asp:Button ID="AgregarEstacionBtn" runat="server" CssClass="btn btn-success" OnClick="AgregarEstacionBtn_Click" Text="Agregar" />
        </div>
    </div>
    </div>
</asp:Content>
