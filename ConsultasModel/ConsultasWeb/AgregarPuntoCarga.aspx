<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AgregarPuntoCarga.aspx.cs" Inherits="ConsultasWeb.AgregarPuntos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
    <div class="mt-5">
         <div class="card col-4 position-absolute top-50 start-50 translate-middle"">
        <div class="card-header bg-info">
            Agregar punto de carga
        </div>
        <div class="card-body">          
            <div class="form-group">
                <label>Capacidad maxima</label>
            <asp:TextBox ID="capMaxTxt" TextMode="Number" class="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="Debe ingresar la capacidad maxima"
                    ControlToValidate="capMaxTxt" CssClass="text-danger"></asp:RequiredFieldValidator>
            </div>
             <div class="form-group">
                  <label>Fecha de vencimiento</label>
            <asp:Calendar ID="FechaVenc" runat="server" OnSelectionChanged="FechaVenc_SelectionChanged"></asp:Calendar>
                 <asp:TextBox ID="FechaTxt" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="ValidarFecha" runat="server" ErrorMessage="Seleccione la fecha de vencimiento"
                      ControlToValidate="FechaTxt" CssClass="text-danger"></asp:RequiredFieldValidator>
            </div>
             <div class="form-group">
                 <label>Tipo</label>
             <asp:DropDownList ID="TipoDDL" CssClass="form-control" runat="server">
                 <asp:ListItem>Eléctrico</asp:ListItem>
                 <asp:ListItem>Dual</asp:ListItem>      
             </asp:DropDownList>
            </div>         
        </div>
        <div class="card-footer">
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" OnClick="Button1_Click" Text="Agregar" />
        </div>
    </div>
    </div>
   
</asp:Content>
