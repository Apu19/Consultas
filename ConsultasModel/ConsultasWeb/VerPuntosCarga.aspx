<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="VerPuntosCarga.aspx.cs" Inherits="ConsultasWeb.VerPuntosCarga" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
    <div class="mt-5 text-center">
        <asp:DropDownList ID="TipoDDL" AutoPostBack="true" CssClass="dropdown " runat="server"
            OnSelectedIndexChanged="TipoDDL_SelectedIndexChanged">
            <asp:ListItem Value="0" Selected="True" Text="Seleccionar"></asp:ListItem>
            <asp:ListItem Value="1" Text="Eléctrico"></asp:ListItem>
            <asp:ListItem Value="2" Text="Dual"></asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" CssClass="btn btn-success mx-4" OnClick="Button1_Click" type="button" runat="server" Text="Agregar" />

    </div>

    <div class="mt-5">
        <asp:GridView ID="PuntosCargaGrid" runat="server"  AutoGenerateColumns="false"
            EmptyDataText="No hay puntos de carga agregados" CssClass="table table-hover">
            <Columns>
                <asp:BoundField HeaderText="Capacidad Maxima" DataField="CapMax" />
                <asp:BoundField HeaderText="Fecha de vencimiento" DataField="FechaVenc" />
                <asp:BoundField HeaderText="Tipo punto de carga" DataField="Tipo" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
