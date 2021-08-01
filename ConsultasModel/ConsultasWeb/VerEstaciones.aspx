<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="VerEstaciones.aspx.cs" Inherits="ConsultasWeb.VerEstaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
    <div class="mt-5 text-center">
        <asp:Button ID="AgregarEstaciones" CssClass="btn btn-success mx-4" OnClick="AgregarEstaciones_Click" type="button" runat="server" Text="Agregar" />
    </div>

    <div class="mt-5">
        <asp:GridView ID="EstacionesGrid" runat="server"  AutoGenerateColumns="false"
            EmptyDataText="No hay estaciones agregadas" CssClass="table table-hover" OnRowCommand="EstacionesGrid_RowCommand">
            <Columns>
                <asp:BoundField HeaderText="ID" DataField="id"/>
                <asp:BoundField HeaderText="Dirección" DataField="Direccion" />
                <asp:BoundField HeaderText="Capacidad maxima de puntos de carga" DataField="CapMax" />
                <asp:BoundField HeaderText="Región" DataField="region" />
                <asp:BoundField HeaderText="Horario de atención" DataField="Horario" />
                <asp:TemplateField HeaderText="Acciones">
                            <ItemTemplate>
                                <asp:Button runat="server" Text="Sacar del Programa"
                                    CssClass="btn btn-danger" CommandName="eliminar"
                                    CommandArgument='<%# Eval("direccion") %>'></asp:Button>

                            </ItemTemplate>
                        </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
