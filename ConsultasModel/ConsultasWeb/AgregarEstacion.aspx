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
                <label for="DropDownList1">Región</label>
               <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                    <asp:ListItem Selected="True">Arica y Parinacota</asp:ListItem>
                     <asp:ListItem>Tarapacá</asp:ListItem>
                     <asp:ListItem>Antofagasta</asp:ListItem>
                     <asp:ListItem>Atacama</asp:ListItem>
                     <asp:ListItem>Coquimbo</asp:ListItem>
                     <asp:ListItem>Valparaíso</asp:ListItem>
                     <asp:ListItem>Metropolitana de Santiago</asp:ListItem>
                     <asp:ListItem>Libertador General Bernardo O’Higgins</asp:ListItem>
                     <asp:ListItem>Maule</asp:ListItem>
                     <asp:ListItem>Ñuble</asp:ListItem>
                     <asp:ListItem>Biobío</asp:ListItem>
                     <asp:ListItem>Araucanía</asp:ListItem>
                     <asp:ListItem>Los Ríos</asp:ListItem>
                     <asp:ListItem>Los Lagos</asp:ListItem>
                     <asp:ListItem>Aysén del General Carlos Ibáñez del Campo</asp:ListItem>
                     <asp:ListItem>Región de Magallanes y la Antártica Chilena</asp:ListItem>
                </asp:DropDownList>
            </div>
             <div class="form-group mt-3">
                  <label for="HorarioTxt">Horario de atención</label>
                 <asp:TextBox ID="HorarioTxt" class="form-control" runat="server" TextMode="Time"></asp:TextBox>
            </div>
        </div>
        <div class="card-footer">
            <asp:Button ID="AgregarEstacionBtn" runat="server" CssClass="btn btn-success" OnClick="AgregarEstacionBtn_Click" Text="Agregar" />
        </div>
    </div>
    </div>
</asp:Content>
