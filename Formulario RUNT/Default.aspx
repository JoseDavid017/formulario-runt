<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Formulario_RUNT._Default" %> 

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <!--Encabezado-->
        <div class="row">
            <div class="col-6 d-flex">
                <table class="table table-bordered border-dark text-center w-100 my-1">
                    <tr>
                        <td class="align-top">

                            <asp:Label
                                ID="MinTransporte"
                                runat="server"
                                CssClass="fw-bold"
                                Style="font-size: 10px"
                                Text="MINISTERIO DE TRANSPORTE"></asp:Label>

                            <div class="row justify-content-center mt-1">

                                <div class="col-4">
                                    <img
                                        style="width: 50px; height: 50px;"
                                        class="border border-dark"
                                        src="imagenes/MinTransporteCol1992.png" />
                                </div>

                                <div class="col-4">
                                    <img
                                        style="width: 50px; height: 50px;"
                                        class="border border-dark"
                                        src="imagenes/Escudo-Colombia-Grande.jpg" />
                                </div>

                                <div class="col-4">
                                    <img
                                        style="width: 50px; height: 50px;"
                                        class="border border-dark"
                                        src="imagenes/4.png" />
                                </div>

                            </div>

                        </td>

                        <td class="text-center align-top fw-bold"
                            >FORMULARIO SOLICITUD DE TRÁMITES DEL REGISTRO NACIONAL AUTOMOTOR
                        </td>
                    </tr>
                </table>
            </div>
            <div class="col-4 d-flex">
                <table class="table table-bordered border-dark text-center w-100 my-1">

                    <tr>
                        <td colspan="3" class="text-nowrap text-uppercase fw-bold"
                            >1. ORGANISMO DE TRANSITO
                        </td>
                    </tr>

                    <tr>
                        <td colspan="3" class="text-nowrap"
                            style="font-size: 10px;">NOMBRE Servicios para la Movilidad - SIM
                        </td>
                    </tr>

                    <tr style="font-size: 10px;">
                        <td class="text-nowrap" >CIUDAD
                        </td>

                        <td class="text-nowrap" >CODIGO
                        </td>

                        <td class="text-nowrap" >FECHA TRAMITE
                        </td>
                    </tr>

                    <tr style="font-size: 10px;">
                        <td class="text-nowrap" ">Bogotá
                        </td>

                        <td class="text-nowrap"">1001
                        </td>

                        <td>

                            <table class="w-100 ">
                                <tr>
                                    <td class="border-end border-dark">
                                        <asp:TextBox ID="txtday" placeholder="DÍA" runat="server" CssClass="border-0 form-control" Font-Size="Smaller"></asp:TextBox>

                                    </td>
                                    <td class="border-end border-dark" >
                                        <asp:TextBox ID="txtmonth" placeholder="MES" CssClass="border-0 form-control" runat="server" Font-Size="Smaller"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtyear" placeholder="AÑO" runat="server" CssClass="border-0 form-control" Font-Size="Smaller" OnTextChanged="txtyear_TextChanged"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>

                        </td>
                    </tr>

                </table>
            </div>
            <div class="col-2 d-flex">

                <table class="table table-bordered border-dark text-center w-100 my-1">

                    <tr>
                        <td colspan="2" class="text-nowrap text-uppercase fw-bold"
                            style="font-size: 10px;">2. PLACA
                        </td>
                    </tr>

                    <tr>
                        <td class="text-nowrap " >LETRAS
                        </td>

                        <td class="text-nowrap">NUMEROS
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:TextBox
                                ID="txtLetras"
                                runat="server"
                                CssClass="border-0 form-control text-uppercase" Font-Size="Smaller"></asp:TextBox>

                        </td>

                        <td>
                            <asp:TextBox
                                ID="txtNumero"
                                runat="server"
                                CssClass="border-0 form-control" Font-Size="Smaller"></asp:TextBox>
                        </td>
                    </tr>

                </table>

            </div>
        </div>
        <!--Tramites-->
        <div class="row"> 
            <div class="col-12 my-4">
                <h4 class="card-title mt-2 mb-4">Seleccione el trámite a realizar</h4>
                <asp:DropDownList ID="DdlTramites" runat="server" CssClass="form-select" AutoPostBack="True" OnSelectedIndexChanged="Tramites_SelectedIndexChanged" DataSourceID="table_tramites" DataTextField="Nombre" DataValueField="TipoTramiteID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="table_tramites" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TiposTramite]"></asp:SqlDataSource>
            </div>
        </div>
            <!--Multiview-->
        <div class="row">
            <div class="col">
                <asp:MultiView ID="tramites" runat="server" OnActiveViewChanged="Unnamed1_ActiveViewChanged">
                    <!--view Matricula-->
                    <asp:View ID="Matricula" runat="server">
                        <h2 class="card-title my-3">Registro de Matrícula</h2>
                        <div class="row">
                            <!--Columna 1-->
                            <div class="col-4">
                                <div class="mb-3">
                                    <asp:Label ID="LblTypeVehiculo" AssociatedControlID="DdlTypeVehiculo" runat="server" CssClass="form-label">Tipo De Vehiculo</asp:Label>
                                    <asp:DropDownList ID="DdlTypeVehiculo" runat="server" DataSourceID="table_tipo_vehiculo" DataTextField="Nombre" DataValueField="TipoVehiculoID" CssClass="form-select text-uppercase"></asp:DropDownList>
                                    <asp:SqlDataSource ID="table_tipo_vehiculo" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TiposVehiculo]"></asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TiposVehiculo]"></asp:SqlDataSource>
                                </div>

                                <div class="mb-3">
                                    <asp:Label AssociatedControlID="txtMarca" ID="Label2" runat="server" CssClass="form-label">Marca</asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtMarca" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMarca" ErrorMessage="*" CssClass="text-danger" Display="Dynamic" ValidationExpression="[A-Za-z]+"></asp:RegularExpressionValidator>
                                    <asp:TextBox CssClass="form-control text-uppercase" ID="txtMarca" runat="server" placeholder="Ingrese la marca del vehículo"></asp:TextBox>
                                </div>

                                <div class="mb-3">
                                    <asp:Label AssociatedControlID="txtModelo" ID="Label3" runat="server" Text="Modelo" CssClass="form-label"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtModelo" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:TextBox CssClass="form-control text-uppercase" ID="txtModelo" runat="server" placeholder="Ingrese el modelo del vehículo"></asp:TextBox>
                                </div>

                                <div class="mb-3">
                                    <asp:Label AssociatedControlID="txtLinea" ID="Label4" runat="server" Text="Linea" CssClass="form-label"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtLinea" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:TextBox CssClass="form-control text-uppercase" ID="txtLinea" runat="server" placeholder="Ingrese la línea del vehículo"></asp:TextBox>

                                </div>
                                <div class="mb-3">
                                    <asp:Label AssociatedControlID="txtPropietario" ID="Label13" runat="server" Text="Propietario" CssClass="form-label"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="txtPropietario" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtPropietario" ErrorMessage="*" CssClass="text-danger" Display="Dynamic" ValidationExpression="[A-Za-z0-9ÁÉÍÓÚáéíóúÑñ \-]+"></asp:RegularExpressionValidator>
                                    <asp:TextBox CssClass="form-control text-uppercase" ID="txtPropietario" runat="server" placeholder="Ingrese el nombre del propietario"></asp:TextBox>

                                </div>
                                <div class="mb-3">
                                    <asp:Label AssociatedControlID="txtCiudad" ID="lblCiudad" runat="server" Text="Ciudad" CssClass="form-label"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ControlToValidate="txtCiudad" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtCiudad" ErrorMessage="*" CssClass="text-danger" Display="Dynamic" ValidationExpression="[A-Za-z0-9ÁÉÍÓÚáéíóúÑñ \-]+"></asp:RegularExpressionValidator>
                                    <asp:TextBox CssClass="form-control text-uppercase" ID="txtCiudad" runat="server" placeholder="Ingrese la ciudad"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="mb-3">
                                    <asp:Label AssociatedControlID="txtColor" ID="Label5" runat="server" Text="Color" CssClass="form-label"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtColor" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtColor" ErrorMessage="*" CssClass="text-danger" Display="Dynamic" ValidationExpression="[A-Za-z0-9ÁÉÍÓÚáéíóúÑñ \-]+"></asp:RegularExpressionValidator>
                                    <asp:TextBox CssClass="form-control text-uppercase" ID="txtColor" runat="server" placeholder="Ingrese el color del vehículo"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:Label AssociatedControlID="txtCilindraje" ID="Label8" runat="server" Text="Cilindraje" CssClass="form-label"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtCilindraje" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtCilindraje" ErrorMessage="*" CssClass="text-danger" Display="Dynamic" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                                    <asp:TextBox CssClass="form-control text-uppercase" ID="txtCilindraje" runat="server" placeholder="Ingrese el cilindraje del vehículo"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:Label AssociatedControlID="txtMotor" ID="Label6" runat="server" Text="Número de Motor" CssClass="form-label"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtMotor" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtMotor" ErrorMessage="*" CssClass="text-danger" Display="Dynamic" ValidationExpression="[A-Za-z0-9\-]+"></asp:RegularExpressionValidator>
                                    <asp:TextBox CssClass="form-control text-uppercase" ID="txtMotor" runat="server" placeholder="Ingrese el número de motor del vehículo"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:Label AssociatedControlID="txtChasis" ID="Label7" runat="server" Text="Número de Chasis" CssClass="form-label"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="txtChasis" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtChasis" ErrorMessage="*" CssClass="text-danger" Display="Dynamic" ValidationExpression="[A-Za-z0-9\-]+"></asp:RegularExpressionValidator>
                                    <asp:TextBox CssClass="form-control text-uppercase" ID="txtChasis" runat="server" placeholder="Ingrese el número de chasis del vehículo"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:Label AssociatedControlID="txtDocumentoPropietario" ID="Label14" runat="server" Text="Documento del Propietario" CssClass="form-label"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="txtDocumentoPropietario" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtDocumentoPropietario" ErrorMessage="*" CssClass="text-danger" Display="Dynamic" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                                    <asp:TextBox CssClass="form-control text-uppercase" ID="txtDocumentoPropietario" runat="server" placeholder="Ingrese el documento del propietario"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="mb-3">
                                    <asp:Label AssociatedControlID="ddlTipoServicio" ID="Label9" runat="server" Text="Tipo de Servicio" CssClass="form-label"></asp:Label>
                                    <asp:DropDownList CssClass="form-select text-uppercase" ID="ddlTipoServicio" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombreTipo" DataValueField="idTipoServicio"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TipoServicio]"></asp:SqlDataSource>
                                </div>
                                <div class="mb-3">
                                    <asp:Label AssociatedControlID="ddlClaseVehiculo" ID="Label10" runat="server" Text="Clase de Vehículo" CssClass="form-label"></asp:Label>
                                    <asp:DropDownList CssClass="form-select text-uppercase" ID="ddlClaseVehiculo" runat="server" DataSourceID="SqlDataSource3" DataTextField="nombreClase" DataValueField="idClaseVehiculo"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ClaseVehiculo]"></asp:SqlDataSource>
                                </div>
                                <div class="mb-3">
                                    <asp:Label AssociatedControlID="ddlCombustible" ID="Label11" runat="server" Text="Tipo de Combustible" CssClass="form-label"></asp:Label>
                                    <asp:DropDownList CssClass="form-select text-uppercase" ID="ddlCombustible" runat="server" DataSourceID="SqlDataSource4" DataTextField="nombreCombustible" DataValueField="idCombustible"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Combustible]"></asp:SqlDataSource>
                                </div>
                                <div class="mb-3">
                                    <asp:Label AssociatedControlID="ddlCarroceria" ID="Label12" runat="server" Text="Carrocería" CssClass="form-label"></asp:Label>
                                    <asp:DropDownList CssClass="form-select text-uppercase" ID="ddlCarroceria" runat="server" DataSourceID="SqlDataSource5" DataTextField="nombreCarroceria" DataValueField="idCarroceria"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Carroceria]"></asp:SqlDataSource>
                                </div>
                                <div class="mb-3">
                                    <asp:Label AssociatedControlID="txtDireccion" ID="Label15" runat="server" Text="Dirección" CssClass="form-label"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ControlToValidate="txtDireccion" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:TextBox CssClass="form-control" ID="txtDireccion" runat="server" placeholder="Ingrese la dirección"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:Button
                                    ID="btnRegistrar"
                                    runat="server"
                                    Text="Registrar Matricula"
                                    CssClass="btn btn-primary"
                                    OnClick="btnRegistrar_Click" />
                            </div>
                            <div class="col">
                                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" CssClass="btn btn-secondary" OnClick="btnLimpiar_Click" />
                            </div>

                        </div>
                        <div class="row">
                            <asp:Label
                                ID="lblMensaje"
                                runat="server"
                                Text=" "></asp:Label>
                        </div>
                    </asp:View>
                    <!--view Traspaso-->
                    <asp:View ID="Traspaso" runat="server">
                        <h2 class="card-title my-3">Traspaso</h2>
                        <div class="row">
                            <!--Información Vehiculo-->
                            <div class="col-3">
                                <h5 class="card-title mb-2">Información del Vehículo</h5>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_placa_letra" runat="server" CssClass="form-label" Text="Placa"></asp:Label>
                                    <asp:TextBox ID="txt_placa_letra" runat="server" CssClass="form-control text-uppercase" MaxLength="3" minLength="3"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_placa_letra" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_placa_letra" ValidationExpression="[A-Za-z]*" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_placa_numero" runat="server" CssClass="form-label" Text="Número de Placa"></asp:Label>
                                    <asp:TextBox ID="txt_placa_numero" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_placa_numero" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_placa_numero" ValidationExpression="[0-9]*" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_modelo" runat="server" CssClass="form-label" Text="Modelo"></asp:Label>
                                    <asp:TextBox ID="txt_modelo" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_modelo" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_modelo" ValidationExpression="[0-9]*" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_marca" runat="server" CssClass="form-label" Text="Marca"></asp:Label>
                                    <asp:TextBox ID="txt_marca" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_marca" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_marca" ValidationExpression="[A-Za-z]*" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_linea" runat="server" CssClass="form-label" Text="Línea"></asp:Label>
                                    <asp:TextBox ID="txt_linea" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_linea" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_linea" ValidationExpression="^[A-Za-z-0-9\s]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <!--Información del Propietario Actual-->
                            <div class="col-3">
                                <h5>Información del Propietario Actual</h5>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_propietario_actual" runat="server" CssClass="form-label" Text="Nombre del Propietario Actual"></asp:Label>
                                    <asp:TextBox ID="txt_propietario_actual" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_propietario_actual" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator15" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_propietario_actual" ValidationExpression="^[A-Za-z\s]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_tipo_documento" runat="server" CssClass="form-label" Text="Tipo de Documento"></asp:Label>
                                    <asp:DropDownList ID="ddl_tipo_documento" runat="server" CssClass="form-select" DataSourceID="tabla_tipo_documento" DataTextField="tipo_documento" DataValueField="id_tipo_documento">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="tabla_tipo_documento" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TipoDocumento]"></asp:SqlDataSource>
                                </div>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_documento_propietario" runat="server" CssClass="form-label" Text="Documento del Propietario Actual"></asp:Label>
                                    <asp:TextBox ID="txt_documento_propietario" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_documento_propietario" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator16" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_documento_propietario" ValidationExpression="[A-Za-z0-9]*" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <!--Información del Nuevo Propietario-->
                            <div class="col-3">
                                <h5 class="card-title mb-2">Información Nuevo Propietario</h5>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_nuevo_propietario" runat="server" Text="Nombre del Nuevo Propietario"></asp:Label>
                                    <asp:TextBox ID="txt_nuevo_propietario" CssClass="form-control text-uppercase" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_nuevo_propietario" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator17" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_nuevo_propietario" ValidationExpression="^[A-Za-z\s]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_tipo_documento_nuevo_propietario" runat="server" CssClass="form-label" Text="Tipo de Documento"></asp:Label>
                                    <asp:DropDownList ID="ddl_tipo_documento_nuevo_propietario" runat="server" CssClass="form-control" DataSourceID="tabla_tipo_documento" DataTextField="tipo_documento" DataValueField="id_tipo_documento">
                                    </asp:DropDownList>
                                </div>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_documento_nuevo_propietario" runat="server" CssClass="form-label" Text="Documento del Nuevo Propietario"></asp:Label>
                                    <asp:TextBox ID="txt_documento_nuevo_propietario" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_documento_nuevo_propietario" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator18" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_documento_nuevo_propietario" ValidationExpression="[A-Za-z0-9]*" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_direccion_nuevo_propietario" runat="server" CssClass="form-label" Text="Dirección del Nuevo Propietario"></asp:Label>
                                    <asp:TextBox ID="txt_direccion_nuevo_propietario" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_direccion_nuevo_propietario" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator19" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_direccion_nuevo_propietario" ValidationExpression="^[A-Za-z0-9\s]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_telefono_nuevo_propietario" runat="server" CssClass="form-label" Text="Teléfono del Nuevo Propietario"></asp:Label>
                                    <asp:TextBox ID="txt_telefono_nuevo_propietario" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_telefono_nuevo_propietario" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator20" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_telefono_nuevo_propietario" ValidationExpression="[0-9]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_email_nuevo_propietario" runat="server" CssClass="form-label" Text="Email del Nuevo Propietario"></asp:Label>
                                    <asp:TextBox ID="txt_email_nuevo_propietario" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_email_nuevo_propietario" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator21" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_email_nuevo_propietario" ValidationExpression="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <!--Informacion Tramite-->
                            <div class="col-3">
                                <h5 class="card-title mb-2">Informacion Traspaso</h5>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_valor_venta" runat="server" Text="Valor de la Venta"></asp:Label>
                                    <asp:TextBox ID="txt_valor_venta" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_valor_venta" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator22" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_valor_venta" ValidationExpression="[0-9]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_fecha_compraventa" runat="server" Text="Fecha de Compra-Venta"></asp:Label>
                                    <asp:TextBox ID="txt_fecha_compraventa" runat="server" CssClass="form-control text-uppercase" TextMode="Date"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_fecha_compraventa" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <!--Boton Guardar traspaso-->
                        <div class="row">
                            <div class="col">
                                <asp:Button ID="btn_guardar_traspaso" runat="server" Text="Guardar Traspaso" CssClass="btn btn-primary" OnClick="btn_guardar_traspaso_Click" />
                            </div>
                            <div class="col">
                                <asp:Label ID="lbl_mensaje_traspaso" runat="server" Text=" "></asp:Label>
                            </div>
                        </div>

                    </asp:View>
                    <!--view Traslado-->
                    <asp:View ID="Traslado" runat="server">
                        <h2 class="card-title mb-3">Traslado</h2>
                        <p class="card-text">Formulario para realizar traspasos de vehículos.</p>
                        <div class="row">
                            <div class="col-4">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_placa_letra_tl" runat="server" Text="Placa Letra:"></asp:Label>
                                    <asp:TextBox ID="txt_placa_letra_tl" runat="server" CssClass="form-control text-uppercase" MaxLength="3"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_placa_letra_tl" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator23" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_placa_letra_tl" ValidationExpression="[Aa-zZ]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_placa_numero_tl" runat="server" Text="Placa Número:"></asp:Label>
                                    <asp:TextBox ID="txt_placa_numero_tl" runat="server" CssClass="form-control text-uppercase" MaxLength="3"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_placa_numero_tl" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator24" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_placa_numero_tl" ValidationExpression="[0-9]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_orga" runat="server" Text="Organismo de Tránsito Actual:"></asp:Label>
                                    <asp:DropDownList ID="ddl_orga" runat="server" CssClass="form-control" DataSourceID="tabla_organismmo_transito" DataTextField="Nombre" DataValueField="OrganismoID">
                                        <asp:ListItem Value="">Seleccione un organismo</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="tabla_organismmo_transito" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [OrganismosTransito]"></asp:SqlDataSource>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_orga_nuevo" runat="server" Text="Organismo de Tránsito Nuevo:"></asp:Label>
                                    <asp:DropDownList ID="ddl_orga_nuevo" runat="server" CssClass="form-control" DataSourceID="tabla_organismmo_transito_nuevo" DataTextField="Nombre" DataValueField="OrganismoID">
                                        <asp:ListItem Value="">Seleccione un organismo</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="tabla_organismmo_transito_nuevo" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [OrganismosTransito]"></asp:SqlDataSource>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_ciudad_destino" runat="server" Text="Ciudad de Destino:" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txt_ciudad_destino" CssClass="form-control text-uppercase" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_ciudad_destino" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator25" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_ciudad_destino" ValidationExpression="[A-Za-z\s]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_propietario_tl" runat="server" Text="Propietario del Vehículo:" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txt_propietario_tl" CssClass="form-control text-uppercase" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_propietario_tl" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator26" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_propietario_tl" ValidationExpression="[A-Za-z\s]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_documento_propietario_tl" runat="server" Text="Documento del Propietario:" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txt_documento_propietario_tl" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_documento_propietario_tl" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator27" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_documento_propietario_tl" ValidationExpression="[0-9\s]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_direccion_propietario_tl" runat="server" Text="Dirección del Propietario:" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txt_direccion_propietario_tl" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_direccion_propietario_tl" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_telefono_propietario_tl" runat="server" Text="Teléfono del Propietario:" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txt_telefono_propietario_tl" CssClass="form-control" TextMode="Phone" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_telefono_propietario_tl" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator28" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_telefono_propietario_tl" ValidationExpression="[0-9\s]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_email_propietario_tl" runat="server" Text="Email del Propietario:" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txt_email_propietario_tl" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_email_propietario_tl" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator29" runat="server" ErrorMessage="Email inválido" ControlToValidate="txt_email_propietario_tl" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col">
                                <asp:Button ID="btn_guardar_traslado" runat="server" Text="Guardar Traslado" CssClass="btn btn-primary" OnClick="btn_guardar_traslado_Click" />
                            </div>
                            <div class="col">
                                <asp:Label ID="lbl_mensaje_traslado" runat="server" Text=" "></asp:Label>
                            </div>
                        </div>
                    </asp:View>
                    <!--view Radicado-->
                    <asp:View ID="Radicado" runat="server">
                        <h2 class="card-title">Radicado</h2>
                        <div class="row">
                            <div class="col-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_radicado" runat="server" Text="Numero de Radicado:" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txt_radicado" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_radicado" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator30" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_radicado" ValidationExpression="[0-9]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_fecha_radicado" runat="server" Text="Fecha de Radicado:" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txt_fecha_radicado" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_fecha_radicado" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_placa_letra_rd" runat="server" Text="Placa:" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txt_placa_letra_rd" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_placa_letra_rd" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator31" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_placa_letra_rd" ValidationExpression="[A-Za-z]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_placa_numero_rd" runat="server" Text="Número de Placa:" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txt_placa_numero_rd" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_placa_numero_rd" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator32" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_placa_numero_rd" ValidationExpression="[0-9]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_propietario_rd" runat="server" Text="Propietario:" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txt_propietario_rd" CssClass="form-control text-uppercase" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_propietario_rd" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_documento_propietario_rd" runat="server" Text="Documento del Propietario:" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txt_documento_propietario_rd" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_documento_propietario_rd" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator33" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_documento_propietario_rd" ValidationExpression="[0-9]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_tipo_solicitud_rd" runat="server" Text="Tipo de Solicitud:" CssClass="form-label"></asp:Label>
                                    <asp:DropDownList ID="Ddl_tipo_solicitud" runat="server" DataSourceID="tabla_tipo_solicitud_radicado" DataTextField="nombre_tipo_solicitud" DataValueField="id_tipo_solicitud" CssClass="form-select"></asp:DropDownList>
                                    <asp:SqlDataSource ID="tabla_tipo_solicitud_radicado" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TipoSolicitud]"></asp:SqlDataSource>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_organismo_transito" runat="server" Text="Organismo de Tránsito:" CssClass="form-label"></asp:Label>
                                    <asp:DropDownList ID="Ddl_organismo_transito" runat="server" DataSourceID="tabla_organismos_transito" DataTextField="Nombre" DataValueField="OrganismoID" CssClass="form-select"></asp:DropDownList>
                                    <asp:SqlDataSource ID="tabla_organismos_transito" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [OrganismosTransito]"></asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <asp:Label ID="lbl_observaciones" runat="server" Text="Observaciones:" CssClass="form-label"></asp:Label>
                                <asp:TextBox ID="txt_observaciones" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-6">
                                <asp:Button ID="btn_guardar_radicado" runat="server" Text="Guardar Radicado" CssClass="btn btn-primary" OnClick="btn_guardar_radicado_Click" />
                            </div>
                            <div class="col-6">
                                <asp:Label ID="lbl_mensaje_radicado" runat="server" Text=" "></asp:Label>
                            </div>
                        </div>
                    </asp:View>
                    <!--view Cambio de Color-->
                    <asp:View ID="CambioColor" runat="server">
                        <h2 class="card-title mb-2">Cambio de Color </h2>
                        <div class="row">
                            <div class="col-6">
                                <div class="mb-2">
                                    <asp:Label ID="lbl_placa_letra_CambioColor" runat="server" Text="Placa Letra"></asp:Label>
                                    <asp:TextBox ID="txt_placa_letra_CambioColor" runat="server" CssClass="form-control text-uppercase" MaxLength="3"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_placa_letra_CambioColor" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator34" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_placa_letra_CambioColor" ValidationExpression="[A-Za-z]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_placa_numero_CambioColor" runat="server" Text="Placa Número"></asp:Label>
                                    <asp:TextBox ID="txt_placa_numero_CambioColor" runat="server" CssClass="form-control text-uppercase" MaxLength="3"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_placa_numero_CambioColor" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator35" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_placa_numero_CambioColor" ValidationExpression="[0-9]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_marca_color" runat="server" Text="Marca"></asp:Label>
                                    <asp:TextBox ID="txt_marca_color" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_marca_color" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator36" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_marca_color" ValidationExpression="[A-Za-z\s]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_linea_color" runat="server" Text="Línea"></asp:Label>
                                    <asp:TextBox ID="txt_linea_color" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_linea_color" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator37" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_linea_color" ValidationExpression="[A-Za-z\s]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="mb-2">
                                    <asp:Label ID="lbl_color_actual" runat="server" Text="Color Actual"></asp:Label>
                                    <asp:TextBox ID="txt_color_actual" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_color_actual" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator38" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_color_actual" ValidationExpression="[A-Za-z\s]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_color_nuevo" runat="server" Text="Color Nuevo"></asp:Label>
                                    <asp:TextBox ID="txt_color_nuevo" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator45" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_color_nuevo" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator39" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_color_nuevo" ValidationExpression="[A-Za-z\s]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_propietario_color" runat="server" Text="Propietario"></asp:Label>
                                    <asp:TextBox ID="txt_propietario_color" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator46" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_propietario_color" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator40" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_propietario_color" ValidationExpression="[A-Za-z\s]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-2">
                                    <asp:Label ID="lbl_documento_propietario_color" runat="server" Text="Documento del Propietario"></asp:Label>
                                    <asp:TextBox ID="txt_documento_propietario_color" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_documento_propietario_color" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator41" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_documento_propietario_color" ValidationExpression="[0-9]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col">
                                <asp:Button ID="btn_guardar_cambio_color" runat="server" Text="Guardar Cambio de Color" CssClass="btn btn-primary" OnClick="btn_guardar_cambio_color_Click" />
                            </div>
                            <div class="col">
                                <asp:Label ID="lbl_mensaje_color" runat="server" Text=" "></asp:Label>
                            </div>
                        </div>
                    </asp:View>
                    <!--view cambio de servicio-->
                    <asp:View ID="CambioServicio" runat="server">
                        <h2 class="card-title mb-3 mt-2">Cambio de Servicio</h2>
                        <div class="row">
                            <div class="col-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_placa_letra_cambio_servicio" runat="server" Text="Placa Letra"></asp:Label>
                                    <asp:TextBox ID="txt_placa_letra_cambio_servicio" runat="server" CssClass="form-control text-uppercase" MaxLength="3"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator48" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_placa_letra_cambio_servicio" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator42" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_placa_letra_cambio_servicio" ValidationExpression="[A-Za-z]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_placa_numero_cambio_servicio" runat="server" Text="Placa Número"></asp:Label>
                                    <asp:TextBox ID="txt_placa_numero_cambio_servicio" runat="server" CssClass="form-control text-uppercase" MaxLength="3"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator49" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_placa_numero_cambio_servicio" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator43" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_placa_numero_cambio_servicio" ValidationExpression="[0-9]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_servicio_cambio_servicio" runat="server" Text="Servicio Actual"></asp:Label>
                                    <asp:DropDownList ID="ddl_servicio_cambio_servicio" runat="server" CssClass="form-select" DataSourceID="Tipo_servicio" DataTextField="nombreTipo" DataValueField="idTipoServicio">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="Tipo_servicio" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TipoServicio]"></asp:SqlDataSource>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_servicio_nuevo_cambio_servicio" runat="server" Text="Servicio Nuevo"></asp:Label>
                                    <asp:DropDownList ID="ddl_servicio_nuevo_cambio_servicio" runat="server" CssClass="form-select" DataSourceID="Tipo_servicio_nuevo" DataTextField="nombreTipo" DataValueField="idTipoServicio">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="Tipo_servicio_nuevo" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TipoServicio]"></asp:SqlDataSource>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_propietario_cambio_servicio" runat="server" Text="Propietario"></asp:Label>
                                    <asp:TextBox ID="txt_propietario_cambio_servicio" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator50" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_propietario_cambio_servicio" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator44" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_propietario_cambio_servicio" ValidationExpression="[A-Za-z\s]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_documento_propietario_cambio_servicio" runat="server" Text="Documento del Propietario"></asp:Label>
                                    <asp:TextBox ID="txt_documento_propietario_cambio_servicio" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator51" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_documento_propietario_cambio_servicio" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator45" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_documento_propietario_cambio_servicio" ValidationExpression="[0-9]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_clase_vehiculo_cambio_servicio" runat="server" Text="Clase de Vehículo"></asp:Label>
                                    <asp:DropDownList ID="ddl_clase_vehiculo_cambio_servicio" runat="server" CssClass="form-select" DataSourceID="clase_vehiculo" DataTextField="nombreClase" DataValueField="idClaseVehiculo"></asp:DropDownList>
                                    <asp:SqlDataSource ID="clase_vehiculo" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ClaseVehiculo]"></asp:SqlDataSource>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_observaciones_cambio_servicio" runat="server" Text="Observaciones"></asp:Label>
                                    <asp:TextBox ID="txt_observaciones_cambio_servicio" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:Button ID="btn_guardar_cambio_servicio" runat="server" Text="Guardar Cambio de Servicio" CssClass="btn btn-primary" OnClick="btn_guardar_cambio_servicio_Click" />
                            </div>
                            <div class="col">
                                <asp:Label ID="lbl_mensaje_cambio_servicio" runat="server" Text=" "></asp:Label>
                            </div>
                        </div>
                    </asp:View>
                    <!--Regrabar Motor-->
                    <asp:View ID="RegrabarMotor" runat="server">
                        <h2 class="card-title mb-2">Regrabar Motor</h2>
                        <div class="row">
                            <div class="col-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_placa_letra_rm" runat="server" Text="Placa Letra"></asp:Label>
                                    <asp:TextBox ID="txt_placa_letra_rm" runat="server" CssClass="form-control text-uppercase" MaxLength="3"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator52" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_placa_letra_rm" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator46" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_placa_letra_rm" ValidationExpression="[A-Za-z]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_placa_numero_rm" runat="server" Text="Placa Número"></asp:Label>
                                    <asp:TextBox ID="txt_placa_numero_rm" runat="server" CssClass="form-control text-uppercase" MaxLength="3"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator53" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_placa_numero_rm" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator47" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_placa_numero_rm" ValidationExpression="[0-9]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_marca_rm" runat="server" Text="Marca"></asp:Label>
                                    <asp:TextBox ID="txt_marca_rm" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator54" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_marca_rm" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator48" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_marca_rm" ValidationExpression="[A-Za-z\s]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_linea_rm" runat="server" Text="Línea"></asp:Label>
                                    <asp:TextBox ID="txt_linea_rm" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator55" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_linea_rm" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_propietario_rm" runat="server" Text="Propietario"></asp:Label>
                                    <asp:TextBox ID="txt_propietario_rm" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator56" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_propietario_rm" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator50" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_propietario_rm" ValidationExpression="[A-Za-z\s]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="Label16" runat="server" Text="Documento del Propietario"></asp:Label>
                                    <asp:TextBox ID="txt_documento_propietario_rm" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator57" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_documento_propietario_rm" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator51" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_documento_propietario_rm" ValidationExpression="[0-9]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_numero_motor_actual" runat="server" Text="Número de Motor Actual"></asp:Label>
                                    <asp:TextBox ID="txt_numero_motor_actual" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator58" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_numero_motor_actual" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator52" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_numero_motor_actual" ValidationExpression="[A-Za-z0-9]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="Label1" runat="server" Text="Numero de Motor Nuevo"></asp:Label>
                                    <asp:TextBox ID="txt_numero_motor_nuevo" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator59" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_numero_motor_nuevo" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator53" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_numero_motor_nuevo" ValidationExpression="[A-Za-z0-9]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <asp:Label ID="Label17" runat="server" Text="Motivo de la regrabación"></asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                            </div>
                            <div class="col-6">
                                <asp:Label ID="lbl_observaciones_regrabar_motor" runat="server" Text="Observaciones"></asp:Label>
                                <asp:TextBox ID="txt_observaciones_regrabar_motor" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-6">
                                <asp:Button ID="btn_guardar_regrabar_motor" runat="server" Text="Guardar Regrabar Motor" CssClass="btn btn-primary" OnClick="btn_guardar_regrabar_motor_Click" />
                            </div>
                            <div class="col-6">
                                <asp:Label ID="lbl_mensaje_regrabar_motor" runat="server" Text=" "></asp:Label>
                            </div>
                        </div>
                    </asp:View>
                    <!--Regrabar Chasis-->
                    <asp:View ID="RegrabarChasis" runat="server">
                        <h2 class="card-title mb-2">Regrabar Chasis</h2>
                        <div class="row">
                            <div class="col-6">
                                <div class="mb-3">
                                    <asp:Label ID="Label18" runat="server" Text="Placa Letra"></asp:Label>
                                    <asp:TextBox ID="txt_placa_letra_rc" runat="server" CssClass="form-control text-uppercase" MaxLength="3"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator60" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_placa_letra_rc" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator49" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_placa_letra_rc" ValidationExpression="[A-Za-z]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="Label19" runat="server" Text="Placa Número"></asp:Label>
                                    <asp:TextBox ID="txt_placa_numero_rc" runat="server" CssClass="form-control text-uppercase" MaxLength="3"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator61" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_placa_numero_rc" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator54" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_placa_numero_rc" ValidationExpression="[0-9]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="Label20" runat="server" Text="Marca"></asp:Label>
                                    <asp:TextBox ID="txt_marca_rc" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator62" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_marca_rc" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator55" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_marca_rc" ValidationExpression="[A-Za-z\s]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="Label21" runat="server" Text="Línea"></asp:Label>
                                    <asp:TextBox ID="txt_linea_rc" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator63" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_linea_rc" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="mb-3">
                                    <asp:Label ID="Label24" runat="server" Text="Numero de Chasis Actual"></asp:Label>
                                    <asp:TextBox ID="txt_numero_chasis_actual_rc" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator66" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_numero_chasis_actual_rc" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="Label25" runat="server" Text="Nuevo numero de chasis"></asp:Label>
                                    <asp:TextBox ID="txt_nuevo_numero_chasis_rc" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator67" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_nuevo_numero_chasis_rc" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="Label22" runat="server" Text="Propietario"></asp:Label>
                                    <asp:TextBox ID="txt_propietario_rc" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator64" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_propietario_rc" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator56" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_propietario_rc" ValidationExpression="[A-Za-z\s]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="Label23" runat="server" Text="Documento del Propietario"></asp:Label>
                                    <asp:TextBox ID="txt_documento_propietario_rc" runat="server" CssClass="form-control text-uppercase"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator65" runat="server" ErrorMessage="Campo requerido" ControlToValidate="txt_documento_propietario_rc" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator57" runat="server" ErrorMessage="Caracteres inválidos" ControlToValidate="txt_documento_propietario_rc" ValidationExpression="[0-9]*$" Display="Dynamic" CssClass="text-danger"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-6">
                                <asp:Label ID="Label26" runat="server" Text="Motivo de la regrabación"></asp:Label>
                                <asp:TextBox ID="txt_motivo_regrabar_chasis" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                            </div>
                            <div class="col-6">
                                <asp:Label ID="lbl_observaciones_regrabar_chasis" runat="server" Text="Observaciones"></asp:Label>
                                <asp:TextBox ID="txt_observaciones_regrabar_chasis" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-6">
                                <asp:Button ID="btn_guardar_regrabar_chasis" runat="server" Text="Guardar Regrabar Chasis" CssClass="btn btn-primary" OnClick="btn_guardar_regrabar_chasis_Click" />
                            </div>
                            <div class="col-6">
                                <asp:Label ID="lbl_mensaje_regrabar_chasis" runat="server" Text=" "></asp:Label>
                            </div>
                        </div>
                    </asp:View>
                    <!--Transformacion-->
                    <asp:View ID="Transformacion" runat="server">

                        <h2 class="card-title mb-3">Trámite de Transformación</h2>

                        <p class="text-muted">
                            Registre los datos del vehículo y las modificaciones que se desean realizar.
                        </p>

                        <!-- Información del vehículo -->
                        <h5 class="mt-3 mb-3">1. Información del vehículo</h5>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <asp:Label ID="lbl_placa_transformacion"
                                    runat="server" Text="Placa" CssClass="form-label" />

                                <asp:TextBox ID="txt_placa_transformacion"
                                    runat="server" CssClass="form-control text-uppercase"
                                    MaxLength="6" />

                                <asp:RequiredFieldValidator
                                    ID="rfv_placa_transformacion"
                                    runat="server"
                                    ControlToValidate="txt_placa_transformacion"
                                    ErrorMessage="Ingrese la placa."
                                    CssClass="text-danger"
                                    Display="Dynamic"
                                    ValidationGroup="Transformacion" />
                            </div>

                            <div class="col-md-6 mb-3">
                                <asp:Label ID="lbl_marca_transformacion"
                                    runat="server" Text="Marca" CssClass="form-label" />

                                <asp:TextBox ID="txt_marca_transformacion"
                                    runat="server" CssClass="form-control text-uppercase" />
                            </div>

                            <div class="col-md-6 mb-3">
                                <asp:Label ID="lbl_linea_transformacion"
                                    runat="server" Text="Línea" CssClass="form-label" />

                                <asp:TextBox ID="txt_linea_transformacion"
                                    runat="server" CssClass="form-control text-uppercase" />
                            </div>

                            <div class="col-md-6 mb-3">
                                <asp:Label ID="lbl_modelo_transformacion"
                                    runat="server" Text="Modelo" CssClass="form-label" />

                                <asp:TextBox ID="txt_modelo_transformacion"
                                    runat="server" CssClass="form-control"
                                    TextMode="Number" />
                            </div>

                            <div class="col-md-6 mb-3">
                                <asp:Label ID="lbl_propietario_transformacion"
                                    runat="server" Text="Nombre del propietario"
                                    CssClass="form-label" />

                                <asp:TextBox ID="txt_propietario_transformacion"
                                    runat="server" CssClass="form-control text-uppercase" />
                            </div>

                            <div class="col-md-6 mb-3">
                                <asp:Label ID="lbl_documento_transformacion"
                                    runat="server" Text="Documento del propietario"
                                    CssClass="form-label" />

                                <asp:TextBox ID="txt_documento_transformacion"
                                    runat="server" CssClass="form-control" />
                            </div>
                        </div>

                        <hr />

                        <!-- Datos de la transformación -->
                        <h5 class="mb-3">2. Información de la transformación</h5>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <asp:Label ID="lbl_tipo_transformacion"
                                    runat="server" Text="Tipo de transformación"
                                    CssClass="form-label" />

                                <asp:DropDownList CssClass="form-select" ID="ddl_tipo_transformacion" runat="server" DataSourceID="tabla_tipo_transformacion" DataTextField="nombreTipo" DataValueField="idTipoModificacion"></asp:DropDownList>

                                <asp:SqlDataSource ID="tabla_tipo_transformacion" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TipoModificacion]"></asp:SqlDataSource>

                                <asp:RequiredFieldValidator
                                    ID="rfv_tipo_transformacion"
                                    runat="server"
                                    ControlToValidate="ddl_tipo_transformacion"
                                    InitialValue=""
                                    ErrorMessage="Seleccione el tipo de transformación."
                                    CssClass="text-danger"
                                    Display="Dynamic"
                                    ValidationGroup="Transformacion" />
                            </div>

                            <div class="col-md-6 mb-3">
                                <asp:Label ID="lbl_fecha_transformacion"
                                    runat="server" Text="Fecha de solicitud"
                                    CssClass="form-label" />

                                <asp:TextBox ID="txt_fecha_transformacion"
                                    runat="server" CssClass="form-control"
                                    TextMode="Date" />
                            </div>

                            <div class="col-md-6 mb-3">
                                <asp:Label ID="lbl_nueva_clase_transformacion"
                                    runat="server" Text="Clase resultante del vehículo"
                                    CssClass="form-label" />

                                <asp:DropDownList ID="ddl_nueva_clase_transformacion"
                                    runat="server" CssClass="form-select"
                                    DataSourceID="ds_clase_transformacion"
                                    DataTextField="nombreClase"
                                    DataValueField="idClaseVehiculo" />

                                <asp:SqlDataSource
                                    ID="ds_clase_transformacion"
                                    runat="server"
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                    SelectCommand="SELECT idClaseVehiculo, nombreClase FROM ClaseVehiculo ORDER BY nombreClase" />
                            </div>

                            <div class="col-md-6 mb-3">
                                <asp:Label ID="lbl_nueva_carroceria_transformacion"
                                    runat="server" Text="Carrocería resultante"
                                    CssClass="form-label" />

                                <asp:DropDownList ID="ddl_nueva_carroceria_transformacion"
                                    runat="server" CssClass="form-select"
                                    DataSourceID="ds_carroceria_transformacion"
                                    DataTextField="nombreCarroceria"
                                    DataValueField="idCarroceria" />

                                <asp:SqlDataSource
                                    ID="ds_carroceria_transformacion"
                                    runat="server"
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                    SelectCommand="SELECT idCarroceria, nombreCarroceria FROM Carroceria ORDER BY nombreCarroceria" />
                            </div>

                            <div class="col-12 mb-3">
                                <asp:Label ID="lbl_descripcion_transformacion"
                                    runat="server" Text="Descripción de la modificación"
                                    CssClass="form-label" />

                                <asp:TextBox ID="txt_descripcion_transformacion"
                                    runat="server" CssClass="form-control"
                                    TextMode="MultiLine" Rows="3"
                                    placeholder="Describa cómo quedará el vehículo después de la transformación." />

                                <asp:RequiredFieldValidator
                                    ID="rfv_descripcion_transformacion"
                                    runat="server"
                                    ControlToValidate="txt_descripcion_transformacion"
                                    ErrorMessage="Describa la transformación."
                                    CssClass="text-danger"
                                    Display="Dynamic"
                                    ValidationGroup="Transformacion" />
                            </div>

                            <div class="col-12 mb-3">
                                <asp:Label ID="lbl_motivo_transformacion"
                                    runat="server" Text="Motivo de la transformación"
                                    CssClass="form-label" />

                                <asp:TextBox ID="txt_motivo_transformacion"
                                    runat="server" CssClass="form-control"
                                    TextMode="MultiLine" Rows="2" />
                            </div>

                            <div class="col-md-6 mb-3">
                                <asp:Label ID="lbl_documento_soporte_transformacion"
                                    runat="server" Text="Número del documento soporte"
                                    CssClass="form-label" />

                                <asp:TextBox ID="txt_documento_soporte_transformacion"
                                    runat="server" CssClass="form-control" />
                            </div>

                            <div class="col-md-6 mb-3">
                                <asp:Label ID="lbl_observaciones_transformacion"
                                    runat="server" Text="Observaciones"
                                    CssClass="form-label" />

                                <asp:TextBox ID="txt_observaciones_transformacion"
                                    runat="server" CssClass="form-control"
                                    TextMode="MultiLine" Rows="2" />
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class="col-md-3 mb-2">
                                <asp:Button
                                    ID="btn_guardar_transformacion"
                                    runat="server"
                                    Text="Guardar Transformación"
                                    CssClass="btn btn-primary w-100"
                                    ValidationGroup="Transformacion"
                                    OnClick="btn_guardar_transformacion_Click" />
                            </div>

                            <div class="col-md-6 mb-2">
                                <asp:Label
                                    ID="lbl_mensaje_transformacion"
                                    runat="server"
                                    CssClass="text-success"
                                    EnableViewState="false" />
                            </div>
                        </div>

                    </asp:View>
                    <!--Duplicado licencia de Transito-->
                    <asp:View ID="DuplicadoLicenciaTransito" runat="server">
                        <h2 class="card-title mb-3">Duplicado de Licencia de Tránsito</h2>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_placa_dup_lic" runat="server" Text="Placa del vehículo" CssClass="form-label" />
                                    <asp:TextBox ID="txt_placa_dup_lic" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_placa_dup_lic" runat="server" ControlToValidate="txt_placa_dup_lic" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_marca_dup_lic" runat="server" Text="Marca" CssClass="form-label" />
                                    <asp:TextBox ID="txt_marca_dup_lic" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_marca_dup_lic" runat="server" ControlToValidate="txt_marca_dup_lic" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_modelo_dup_lic" runat="server" Text="Modelo" CssClass="form-label" />
                                    <asp:TextBox ID="txt_modelo_dup_lic" runat="server" CssClass="form-control" TextMode="Number" />
                                    <asp:RequiredFieldValidator ID="rfv_modelo_dup_lic" runat="server" ControlToValidate="txt_modelo_dup_lic" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_motivo_dup_lic" runat="server" Text="Motivo de la solicitud" CssClass="form-label" />
                                    <asp:DropDownList ID="ddl_motivo_dup_lic" runat="server" CssClass="form-select">
                                        <asp:ListItem Text="Seleccione una opción" Value="" />
                                        <asp:ListItem Text="Pérdida" Value="Perdida" />
                                        <asp:ListItem Text="Deterioro" Value="Deterioro" />
                                        <asp:ListItem Text="Hurto" Value="Hurto" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfv_motivo_dup_lic" runat="server" ControlToValidate="ddl_motivo_dup_lic" InitialValue="" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_propietario_dup_lic" runat="server" Text="Nombre del propietario" CssClass="form-label" />
                                    <asp:TextBox ID="txt_propietario_dup_lic" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_propietario_dup_lic" runat="server" ControlToValidate="txt_propietario_dup_lic" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_tipo_doc_dup_lic" runat="server" Text="Tipo de documento" CssClass="form-label" />
                                    <asp:DropDownList ID="ddl_tipo_doc_dup_lic" runat="server" CssClass="form-select" DataSourceID="ds_tipo_doc_dup_lic" DataTextField="tipo_documento" DataValueField="id_tipo_documento" AppendDataBoundItems="True">
                                        <asp:ListItem Text="Seleccione una opción" Value="" />
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="ds_tipo_doc_dup_lic" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TipoDocumento]" />
                                    <asp:RequiredFieldValidator ID="rfv_tipo_doc_dup_lic" runat="server" ControlToValidate="ddl_tipo_doc_dup_lic" InitialValue="" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_num_doc_dup_lic" runat="server" Text="Número de documento" CssClass="form-label" />
                                    <asp:TextBox ID="txt_num_doc_dup_lic" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_num_doc_dup_lic" runat="server" ControlToValidate="txt_num_doc_dup_lic" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_observaciones_dup_lic" runat="server" Text="Observaciones" CssClass="form-label" />
                                    <asp:TextBox ID="txt_observaciones_dup_lic" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-4 mb-2">
                                <asp:Button ID="btn_guardar_dup_lic" runat="server" Text="Guardar solicitud" CssClass="btn btn-primary" OnClick="btn_guardar_dup_lic_Click" />
                            </div>
                            <div class="col-md-8 mb-2">
                                <asp:Label ID="lbl_mensaje_guardar_dup_lic" runat="server" />
                            </div>
                        </div>
                    </asp:View>
                    <!--Inscripcion Prenda-->
                    <asp:View ID="InscripciónPrenda" runat="server">
                        <h2 class="card-title mb-3">Inscripción de Prenda</h2>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_placa_ins_prenda" runat="server" Text="Placa del vehículo" CssClass="form-label" />
                                    <asp:TextBox ID="txt_placa_ins_prenda" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_placa_ins_prenda" runat="server" ControlToValidate="txt_placa_ins_prenda" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_propietario_ins_prenda" runat="server" Text="Nombre del propietario" CssClass="form-label" />
                                    <asp:TextBox ID="txt_propietario_ins_prenda" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_propietario_ins_prenda" runat="server" ControlToValidate="txt_propietario_ins_prenda" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_doc_propietario_ins_prenda" runat="server" Text="Documento del propietario" CssClass="form-label" />
                                    <asp:TextBox ID="txt_doc_propietario_ins_prenda" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_doc_propietario_ins_prenda" runat="server" ControlToValidate="txt_doc_propietario_ins_prenda" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_tipo_prenda" runat="server" Text="Tipo de garantía" CssClass="form-label" />
                                    <asp:DropDownList ID="ddl_tipo_prenda" runat="server" CssClass="form-select" DataSourceID="ds_tipo_prenda" DataTextField="nombreTipoGarantia" DataValueField="idTipoGarantia" AppendDataBoundItems="True">
                                        <asp:ListItem Text="Seleccione una opción" Value="" />
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="ds_tipo_prenda" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT idTipoGarantia, nombreTipoGarantia FROM TipoGarantia WHERE estado = 1 ORDER BY nombreTipoGarantia" />
                                    <asp:RequiredFieldValidator ID="rfv_tipo_prenda" runat="server" ControlToValidate="ddl_tipo_prenda" InitialValue="" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_acreedor_prenda" runat="server" Text="Nombre del acreedor garantizado" CssClass="form-label" />
                                    <asp:TextBox ID="txt_acreedor_prenda" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_acreedor_prenda" runat="server" ControlToValidate="txt_acreedor_prenda" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_doc_acreedor_prenda" runat="server" Text="NIT o documento del acreedor" CssClass="form-label" />
                                    <asp:TextBox ID="txt_doc_acreedor_prenda" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_doc_acreedor_prenda" runat="server" ControlToValidate="txt_doc_acreedor_prenda" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_valor_prenda" runat="server" Text="Valor de la obligación garantizada" CssClass="form-label" />
                                    <asp:TextBox ID="txt_valor_prenda" runat="server" CssClass="form-control" TextMode="Number" />
                                    <asp:RequiredFieldValidator ID="rfv_valor_prenda" runat="server" ControlToValidate="txt_valor_prenda" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_fecha_prenda" runat="server" Text="Fecha del documento de garantía" CssClass="form-label" />
                                    <asp:TextBox ID="txt_fecha_prenda" runat="server" CssClass="form-control" TextMode="Date" />
                                    <asp:RequiredFieldValidator ID="rfv_fecha_prenda" runat="server" ControlToValidate="txt_fecha_prenda" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_observaciones_ins_prenda" runat="server" Text="Observaciones" CssClass="form-label" />
                                    <asp:TextBox ID="txt_observaciones_ins_prenda" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-4 mb-2">
                                <asp:Button ID="btn_guardar_ins_prenda" runat="server" Text="Guardar inscripción" CssClass="btn btn-primary" OnClick="btn_guardar_ins_prenda_Click" />
                            </div>
                            <div class="col-md-8 mb-2">
                                <asp:Label ID="lbl_mensaje_guardar_ins_prenda" runat="server" />
                            </div>
                        </div>
                    </asp:View>
                    <!--Levanta Prenda-->
                    <asp:View ID="LevantaPrenda" runat="server">
                        <h2 class="card-title mb-3">Levantamiento de Prenda</h2>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_placa_lev_prenda" runat="server" Text="Placa del vehículo" CssClass="form-label" />
                                    <asp:TextBox ID="txt_placa_lev_prenda" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_placa_lev_prenda" runat="server" ControlToValidate="txt_placa_lev_prenda" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_propietario_lev_prenda" runat="server" Text="Nombre del propietario" CssClass="form-label" />
                                    <asp:TextBox ID="txt_propietario_lev_prenda" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_propietario_lev_prenda" runat="server" ControlToValidate="txt_propietario_lev_prenda" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_doc_propietario_lev_prenda" runat="server" Text="Documento del propietario" CssClass="form-label" />
                                    <asp:TextBox ID="txt_doc_propietario_lev_prenda" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_doc_propietario_lev_prenda" runat="server" ControlToValidate="txt_doc_propietario_lev_prenda" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_acreedor_lev_prenda" runat="server" Text="Acreedor garantizado" CssClass="form-label" />
                                    <asp:TextBox ID="txt_acreedor_lev_prenda" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_acreedor_lev_prenda" runat="server" ControlToValidate="txt_acreedor_lev_prenda" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_doc_lev_prenda" runat="server" Text="Documento que acredita el levantamiento" CssClass="form-label" />
                                    <asp:TextBox ID="txt_doc_lev_prenda" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_doc_lev_prenda" runat="server" ControlToValidate="txt_doc_lev_prenda" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_fecha_lev_prenda" runat="server" Text="Fecha del documento" CssClass="form-label" />
                                    <asp:TextBox ID="txt_fecha_lev_prenda" runat="server" CssClass="form-control" TextMode="Date" />
                                    <asp:RequiredFieldValidator ID="rfv_fecha_lev_prenda" runat="server" ControlToValidate="txt_fecha_lev_prenda" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_observaciones_lev_prenda" runat="server" Text="Observaciones" CssClass="form-label" />
                                    <asp:TextBox ID="txt_observaciones_lev_prenda" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-4 mb-2">
                                <asp:Button ID="btn_guardar_lev_prenda" runat="server" Text="Guardar levantamiento" CssClass="btn btn-primary" OnClick="btn_guardar_lev_prenda_Click" />
                            </div>
                            <div class="col-md-8 mb-2">
                                <asp:Label ID="lbl_mensaje_guardar_lev_prenda" runat="server" />
                            </div>
                        </div>
                    </asp:View>
                    <!--Cancelacion Matricula-->
                    <asp:View ID="CancelaciónMatricula" runat="server">
                        <h2 class="card-title mb-3">Cancelación de Matrícula</h2>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_placa_cancel_mat" runat="server" Text="Placa del vehículo" CssClass="form-label" />
                                    <asp:TextBox ID="txt_placa_cancel_mat" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_placa_cancel_mat" runat="server" ControlToValidate="txt_placa_cancel_mat" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_propietario_cancel_mat" runat="server" Text="Nombre del propietario" CssClass="form-label" />
                                    <asp:TextBox ID="txt_propietario_cancel_mat" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_propietario_cancel_mat" runat="server" ControlToValidate="txt_propietario_cancel_mat" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_doc_cancel_mat" runat="server" Text="Documento del propietario" CssClass="form-label" />
                                    <asp:TextBox ID="txt_doc_cancel_mat" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_doc_cancel_mat" runat="server" ControlToValidate="txt_doc_cancel_mat" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_motivo_cancel_mat" runat="server" Text="Causal de cancelación" CssClass="form-label" />
                                    <asp:DropDownList ID="ddl_motivo_cancel_mat" runat="server" CssClass="form-select" DataSourceID="ds_motivo_cancel_mat" DataTextField="nombreCausal" DataValueField="idCausal" AppendDataBoundItems="true">
                                        <asp:ListItem Text="Seleccione una opción" Value="" />
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="ds_motivo_cancel_mat" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CausalCancelacionMatricula]" />
                                    <asp:RequiredFieldValidator ID="rfv_motivo_cancel_mat" runat="server" ControlToValidate="ddl_motivo_cancel_mat" InitialValue="" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_documento_cancel_mat" runat="server" Text="Documento soporte" CssClass="form-label" />
                                    <asp:TextBox ID="txt_documento_cancel_mat" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_documento_cancel_mat" runat="server" ControlToValidate="txt_documento_cancel_mat" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_fecha_cancel_mat" runat="server" Text="Fecha del documento soporte" CssClass="form-label" />
                                    <asp:TextBox ID="txt_fecha_cancel_mat" runat="server" CssClass="form-control" TextMode="Date" />
                                    <asp:RequiredFieldValidator ID="rfv_fecha_cancel_mat" runat="server" ControlToValidate="txt_fecha_cancel_mat" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_observaciones_cancel_mat" runat="server" Text="Observaciones" CssClass="form-label" />
                                    <asp:TextBox ID="txt_observaciones_cancel_mat" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-4 mb-2">
                                <asp:Button ID="btn_guardar_cancel_mat" runat="server" Text="Guardar solicitud" CssClass="btn btn-primary" OnClick="btn_guardar_cancel_mat_Click" />
                            </div>
                            <div class="col-md-8 mb-2">
                                <asp:Label ID="lbl_mensaje_guardar_cancel_mat" runat="server" />
                            </div>
                        </div>
                    </asp:View>
                    <!--Cambio Placas-->
                    <asp:View ID="CambioPlacas" runat="server">
                        <h2 class="card-title mb-3">Cambio de Placas</h2>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_placa_actual_cp" runat="server" Text="Placa actual" CssClass="form-label" />
                                    <asp:TextBox ID="txt_placa_actual_cp" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_placa_actual_cp" runat="server" ControlToValidate="txt_placa_actual_cp" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_motivo_cp" runat="server" Text="Motivo de la solicitud" CssClass="form-label" />
                                    <asp:DropDownList ID="ddl_motivo_cp" runat="server" CssClass="form-select">
                                        <asp:ListItem Text="Seleccione una opción" Value="" />
                                        <asp:ListItem Text="Deterioro de placas" Value="Deterioro" />
                                        <asp:ListItem Text="Pérdida o hurto" Value="PerdidaHurto" />
                                        <asp:ListItem Text="Otro motivo sujeto a verificación" Value="Otro" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfv_motivo_cp" runat="server" ControlToValidate="ddl_motivo_cp" InitialValue="" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_propietario_cp" runat="server" Text="Nombre del propietario" CssClass="form-label" />
                                    <asp:TextBox ID="txt_propietario_cp" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_propietario_cp" runat="server" ControlToValidate="txt_propietario_cp" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_doc_propietario_cp" runat="server" Text="Documento del propietario" CssClass="form-label" />
                                    <asp:TextBox ID="txt_doc_propietario_cp" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_doc_propietario_cp" runat="server" ControlToValidate="txt_doc_propietario_cp" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_organismo_cp" runat="server" Text="Organismo de tránsito" CssClass="form-label" />
                                    <asp:DropDownList ID="ddl_organismo_cp" CssClass="form_select" runat="server" DataSourceID="tabla_organismos_transito" DataTextField="Nombre" DataValueField="OrganismoID"></asp:DropDownList>
                                    </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_documento_soporte_cp" runat="server" Text="Documento soporte (si aplica)" CssClass="form-label" />
                                    <asp:TextBox ID="txt_documento_soporte_cp" runat="server" CssClass="form-control text-uppercase" />
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_observaciones_cp" runat="server" Text="Observaciones" CssClass="form-label" />
                                    <asp:TextBox ID="txt_observaciones_cp" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-4 mb-2">
                                <asp:Button ID="btn_guardar_cp" runat="server" Text="Guardar solicitud" CssClass="btn btn-primary" OnClick="btn_guardar_cp_Click" />
                            </div>
                            <div class="col-md-8 mb-2">
                                <asp:Label ID="lbl_mensaje_guardar_cp" runat="server" />
                            </div>
                        </div>
                    </asp:View>
                    <!--Duplicado Placas-->
                    <asp:View ID="DuplicadoPlacas" runat="server">
                        <h2 class="card-title mb-3">Duplicado de Placas</h2>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_placa_dup_placas" runat="server" Text="Placa actual" CssClass="form-label" />
                                    <asp:TextBox ID="txt_placa_dup_placas" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_placa_dup_placas" runat="server" ControlToValidate="txt_placa_dup_placas" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_tipo_placa_dup" runat="server" Text="Tipo de placa" CssClass="form-label" />
                                    <asp:DropDownList ID="ddl_tipo_placa_dup" runat="server" CssClass="form-select" DataSourceID="ds_tipo_placa_dup" DataTextField="nombreTipoPlaca" DataValueField="idTipoPlaca" AppendDataBoundItems="true">
                                        <asp:ListItem Text="Seleccione una opción" Value="" />
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="ds_tipo_placa_dup" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TipoPlaca]" />
                                    <asp:RequiredFieldValidator ID="rfv_tipo_placa_dup" runat="server" ControlToValidate="ddl_tipo_placa_dup" InitialValue="" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_propietario_dup_placas" runat="server" Text="Nombre del propietario" CssClass="form-label" />
                                    <asp:TextBox ID="txt_propietario_dup_placas" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_propietario_dup_placas" runat="server" ControlToValidate="txt_propietario_dup_placas" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_doc_dup_placas" runat="server" Text="Documento del propietario" CssClass="form-label" />
                                    <asp:TextBox ID="txt_doc_dup_placas" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_doc_dup_placas" runat="server" ControlToValidate="txt_doc_dup_placas" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_motivo_dup_placas" runat="server" Text="Motivo de la solicitud" CssClass="form-label" />
                                    <asp:DropDownList ID="ddl_motivo_dup_placas" runat="server" CssClass="form-select">
                                        <asp:ListItem Text="Seleccione una opción" Value="" />
                                        <asp:ListItem Text="Deterioro" Value="Deterioro" />
                                        <asp:ListItem Text="Pérdida" Value="Perdida" />
                                        <asp:ListItem Text="Hurto" Value="Hurto" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfv_motivo_dup_placas" runat="server" ControlToValidate="ddl_motivo_dup_placas" InitialValue="" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_observaciones_dup_placas" runat="server" Text="Observaciones" CssClass="form-label" />
                                    <asp:TextBox ID="txt_observaciones_dup_placas" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-4 mb-2">
                                <asp:Button ID="btn_guardar_dup_placas" runat="server" Text="Guardar solicitud" CssClass="btn btn-primary" OnClick="btn_guardar_dup_placas_Click" />
                            </div>
                            <div class="col-md-8 mb-2">
                                <asp:Label ID="lbl_mensaje_guardar_dup_placas" runat="server" />
                            </div>
                        </div>
                    </asp:View>
                    <!--Rematricula-->
                    <asp:View ID="Rematricula" runat="server">
                        <h2 class="card-title mb-3">Rematrícula</h2>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_placa_remat" runat="server" Text="Placa anterior (si existe)" CssClass="form-label" />
                                    <asp:TextBox ID="txt_placa_remat" runat="server" CssClass="form-control text-uppercase" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_marca_remat" runat="server" Text="Marca" CssClass="form-label" />
                                    <asp:TextBox ID="txt_marca_remat" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_marca_remat" runat="server" ControlToValidate="txt_marca_remat" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_linea_remat" runat="server" Text="Línea" CssClass="form-label" />
                                    <asp:TextBox ID="txt_linea_remat" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_linea_remat" runat="server" ControlToValidate="txt_linea_remat" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_modelo_remat" runat="server" Text="Modelo" CssClass="form-label" />
                                    <asp:TextBox ID="txt_modelo_remat" runat="server" CssClass="form-control" TextMode="Number" />
                                    <asp:RequiredFieldValidator ID="rfv_modelo_remat" runat="server" ControlToValidate="txt_modelo_remat" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_clase_remat" runat="server" Text="Clase de vehículo" CssClass="form-label" />
                                    <asp:DropDownList ID="ddl_clase_remat" runat="server" CssClass="form-select" DataSourceID="ds_clase_remat" DataTextField="nombreClase" DataValueField="idClaseVehiculo" AppendDataBoundItems="true">
                                        <asp:ListItem Text="Seleccione una opción" Value="" />
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="ds_clase_remat" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ClaseVehiculo]" />
                                    <asp:RequiredFieldValidator ID="rfv_clase_remat" runat="server" ControlToValidate="ddl_clase_remat" InitialValue="" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_propietario_remat" runat="server" Text="Nombre del propietario" CssClass="form-label" />
                                    <asp:TextBox ID="txt_propietario_remat" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_propietario_remat" runat="server" ControlToValidate="txt_propietario_remat" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_doc_remat" runat="server" Text="Documento del propietario" CssClass="form-label" />
                                    <asp:TextBox ID="txt_doc_remat" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_doc_remat" runat="server" ControlToValidate="txt_doc_remat" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_motivo_remat" runat="server" Text="Motivo / soporte de la solicitud" CssClass="form-label" />
                                    <asp:TextBox ID="txt_motivo_remat" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                                    <asp:RequiredFieldValidator ID="rfv_motivo_remat" runat="server" ControlToValidate="txt_motivo_remat" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-4 mb-2">
                                <asp:Button ID="btn_guardar_remat" runat="server" Text="Guardar solicitud" CssClass="btn btn-primary" OnClick="btn_guardar_remat_Click" />
                            </div>
                            <div class="col-md-8 mb-2">
                                <asp:Label ID="lbl_mensaje_guardar_remat" runat="server" />
                            </div>
                        </div>
                    </asp:View>
                    <!--Cambio Carroceria-->
                    <asp:View ID="CambioCCarroceria" runat="server">
                        <h2 class="card-title mb-3">Cambio de Características de Carrocería</h2>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_placa_carroceria" runat="server" Text="Placa del vehículo" CssClass="form-label" />
                                    <asp:TextBox ID="txt_placa_carroceria" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_placa_carroceria" runat="server" ControlToValidate="txt_placa_carroceria" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_carroceria_actual" runat="server" Text="Carrocería actual" CssClass="form-label" />
                                    <asp:DropDownList ID="ddl_carroceria_actual" runat="server" CssClass="form-select" DataSourceID="ds_carroceria_actual" DataTextField="nombreCarroceria" DataValueField="idCarroceria" AppendDataBoundItems="True">
                                        <asp:ListItem Text="Seleccione una opción" Value="" />
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="ds_carroceria_actual" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [carroceria]" />
                                    <asp:RequiredFieldValidator ID="rfv_carroceria_actual" runat="server" ControlToValidate="ddl_carroceria_actual" InitialValue="" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_carroceria_nueva" runat="server" Text="Carrocería resultante" CssClass="form-label" />
                                    <asp:DropDownList ID="ddl_carroceria_nueva" runat="server" CssClass="form-select" DataSourceID="ds_carroceria_nueva" DataTextField="nombreCarroceria" DataValueField="idCarroceria" AppendDataBoundItems="true">
                                        <asp:ListItem Text="Seleccione una opción" Value="" />
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="ds_carroceria_nueva" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [carroceria]" />
                                    <asp:RequiredFieldValidator ID="rfv_carroceria_nueva" runat="server" ControlToValidate="ddl_carroceria_nueva" InitialValue="" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_propietario_carroceria" runat="server" Text="Nombre del propietario" CssClass="form-label" />
                                    <asp:TextBox ID="txt_propietario_carroceria" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_propietario_carroceria" runat="server" ControlToValidate="txt_propietario_carroceria" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_doc_carroceria" runat="server" Text="Documento del propietario" CssClass="form-label" />
                                    <asp:TextBox ID="txt_doc_carroceria" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_doc_carroceria" runat="server" ControlToValidate="txt_doc_carroceria" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_doc_soporte_carroceria" runat="server" Text="Documento técnico o soporte" CssClass="form-label" />
                                    <asp:TextBox ID="txt_doc_soporte_carroceria" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_doc_soporte_carroceria" runat="server" ControlToValidate="txt_doc_soporte_carroceria" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_fecha_carroceria" runat="server" Text="Fecha del soporte" CssClass="form-label" />
                                    <asp:TextBox ID="txt_fecha_carroceria" runat="server" CssClass="form-control" TextMode="Date" />
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_observaciones_carroceria" runat="server" Text="Descripción / observaciones" CssClass="form-label" />
                                    <asp:TextBox ID="txt_observaciones_carroceria" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-4 mb-2">
                                <asp:Button ID="btn_guardar_carroceria" runat="server" Text="Guardar solicitud" CssClass="btn btn-primary" OnClick="btn_guardar_carroceria_Click" />
                            </div>
                            <div class="col-md-8 mb-2">
                                <asp:Label ID="lbl_mensaje_guardar_carroceria" runat="server" />
                            </div>
                        </div>
                    </asp:View>
                    <!--Otros-->
                    <asp:View ID="Otros" runat="server">
                        <h2 class="card-title mb-3">Otros trámites</h2>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_tipo_otro" runat="server" Text="Tipo de solicitud" CssClass="form-label" />
                                    <asp:DropDownList ID="ddl_tipo_otro" runat="server" CssClass="form-select" DataSourceID="ds_tipo_otro" DataTextField="Nombre" DataValueField="TipoTramiteID" AppendDataBoundItems="True">
                                        <asp:ListItem Text="Seleccione una opción" Value="" />
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="ds_tipo_otro" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TipoSolicitud]" />
                                    <asp:RequiredFieldValidator ID="rfv_tipo_otro" runat="server" ControlToValidate="ddl_tipo_otro" InitialValue="" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_placa_otro" runat="server" Text="Placa (si aplica)" CssClass="form-label" />
                                    <asp:TextBox ID="txt_placa_otro" runat="server" CssClass="form-control text-uppercase" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_nombre_solicitante_otro" runat="server" Text="Nombre del solicitante" CssClass="form-label" />
                                    <asp:TextBox ID="txt_nombre_solicitante_otro" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_nombre_solicitante_otro" runat="server" ControlToValidate="txt_nombre_solicitante_otro" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_documento_solicitante_otro" runat="server" Text="Documento del solicitante" CssClass="form-label" />
                                    <asp:TextBox ID="txt_documento_solicitante_otro" runat="server" CssClass="form-control text-uppercase" />
                                    <asp:RequiredFieldValidator ID="rfv_documento_solicitante_otro" runat="server" ControlToValidate="txt_documento_solicitante_otro" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_correo_otro" runat="server" Text="Correo electrónico" CssClass="form-label" />
                                    <asp:TextBox ID="txt_correo_otro" runat="server" CssClass="form-control" TextMode="Email" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_organismo_otro" runat="server" Text="Organismo de tránsito" CssClass="form-label" />
                                    <asp:DropDownList ID="ddl_organismo_otro" runat="server" CssClass="form-select" DataSourceID="ds_organismo_otro" DataTextField="Nombre" DataValueField="OrganismoID" AppendDataBoundItems="True">
                                        <asp:ListItem Text="Seleccione una opción" Value="" />
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="ds_organismo_otro" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT OrganismoID, Nombre FROM OrganismosTransito ORDER BY Nombre" />
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="mb-3">
                                    <asp:Label ID="lbl_descripcion_otro" runat="server" Text="Descripción de la solicitud" CssClass="form-label" />
                                    <asp:TextBox ID="txt_descripcion_otro" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                                    <asp:RequiredFieldValidator ID="rfv_descripcion_otro" runat="server" ControlToValidate="txt_descripcion_otro" ErrorMessage="Campo requerido" CssClass="text-danger" Display="Dynamic" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lbl_observaciones_otro" runat="server" Text="Observaciones" CssClass="form-label" />
                                    <asp:TextBox ID="txt_observaciones_otro" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-4 mb-2">
                                <asp:Button ID="btn_guardar_otro" runat="server" Text="Guardar solicitud" CssClass="btn btn-primary" OnClick="btn_guardar_otro_Click" />
                            </div>
                            <div class="col-md-8 mb-2">
                                <asp:Label ID="lbl_mensaje_guardar_otro" runat="server" />
                            </div>
                        </div>
                    </asp:View>
                </asp:MultiView>
            </div>
          </div>
        </div>
</asp:Content>
