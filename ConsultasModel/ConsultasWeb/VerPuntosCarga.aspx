<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="VerPuntosCarga.aspx.cs" Inherits="ConsultasWeb.VerPuntosCarga" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
    <div class="mt-5 text-center">
        <asp:DropDownList ID="TipoDDL" AutoPostBack="true" CssClass="dropdown " runat="server"
            OnSelectedIndexChanged="TipoDDL_SelectedIndexChanged">
            <asp:ListItem Value="0" Selected="True" Text="Todos"></asp:ListItem>
            <asp:ListItem Value="1" Text="Eléctrico"></asp:ListItem>
            <asp:ListItem Value="2" Text="Dual"></asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" CssClass="btn btn-success mx-4" OnClick="Button1_Click" type="button" runat="server" Text="Agregar" />
        <button type="button" class="btn btn-warning" onclick="CargarDatos_Click" data-bs-toggle="modal" data-bs-target="#exampleModal">
            Modificar
        </button>
    </div>

    <div class="mt-5">
        <asp:GridView ID="PuntosCargaGrid" runat="server" AutoGenerateColumns="false"
            EmptyDataText="No hay puntos de carga agregados" CssClass="table table-hover">
            <Columns>
                <asp:BoundField HeaderText="ID" DataField="id" />
                <asp:BoundField HeaderText="Capacidad Maxima" DataField="capMax" />
                <asp:BoundField HeaderText="Fecha de vencimiento" DataField="fechaVenc" />
                <asp:BoundField HeaderText="Tipo punto de carga" DataField="tipo" />
                <asp:BoundField HeaderText="Dirección" DataField="direccionPunto" />
            </Columns>
        </asp:GridView>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modificar Punto de carga</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>ID</label>
                        <asp:DropDownList CssClass="col-8 form-control" ID="idPuntoCarga" runat="server"></asp:DropDownList>
                        <asp:Button ID="buscarBtn" runat="server" CssClass="btn btn-primary mt-1" Text="Buscar" OnClick="CargarDatos_Click" />
                    </div>
                    <div class="form-group">
                        <label>Capacidad maxima</label>
                        <asp:TextBox ID="capMaxTxt" TextMode="Number" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="FechaTxt">Fecha de vencimiento</label>
                        <asp:TextBox ID="FechaTxt" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Tipo</label>
                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                            <asp:ListItem>Eléctrico</asp:ListItem>
                            <asp:ListItem>Dual</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="DireccionTxt" class="col-12 mt-3">Dirección de estación</label>
                        <asp:DropDownList ID="DireccionTxt" CssClass="col-12 form-control" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancelar</button>
                    <asp:Button ID="guardarBtn" runat="server" Text="Guardar" CssClass="btn btn-success" OnClick="guardarBtn_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
