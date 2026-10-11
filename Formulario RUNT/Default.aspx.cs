using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Formulario_RUNT
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtyear_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void btnMatricula_Click(object sender, EventArgs e)
        {
            tramites.SetActiveView(Matricula);
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {

            lblMensaje.Text = "Registro exitoso";
            lblMensaje.CssClass = "text-success";
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtChasis.Text = string.Empty;
            txtCilindraje.Text = string.Empty;
            txtCiudad.Text = string.Empty;
            txtColor.Text = string.Empty;
            txtMarca.Text = string.Empty;
            txtModelo.Text = string.Empty;
            txtMotor.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            txtPropietario.Text = string.Empty;
            txtDocumentoPropietario.Text = string.Empty;
            txtLinea.Text = string.Empty;
        }

        protected void Tramites_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (DdlTramites.SelectedValue)
            {
                case "1":
                    tramites.SetActiveView(Matricula);
                    break;
                case "2":
                    tramites.SetActiveView(Traspaso);
                    break;
                case "3":
                    tramites.SetActiveView(Traslado);
                    break;
                case "4":
                    tramites.SetActiveView(Radicado);
                    break;
                case "5":
                    tramites.SetActiveView(CambioColor);
                    break;
                case "6":
                    tramites.SetActiveView(CambioServicio);
                    break;
                 case "7":
                    tramites.SetActiveView(RegrabarMotor);
                  break;
                 case "8":
                    tramites.SetActiveView(RegrabarChasis);
                    break;
                case "9":
                    tramites.SetActiveView(Transformacion);
                    break;
                case "10":
                    tramites.SetActiveView(DuplicadoLicenciaTransito);
                    break;
                case "11":
                    tramites.SetActiveView(InscripciónPrenda);
                    break;
                case "12":
                    tramites.SetActiveView(LevantaPrenda);
                    break;
                case "13":
                    tramites.SetActiveView(CancelaciónMatricula);
                    break;
                case "14":
                    tramites.SetActiveView(CambioPlacas);
                    break;
                case "15":
                    tramites.SetActiveView(DuplicadoPlacas);
                    break;
                case "16":
                    tramites.SetActiveView(Rematricula);
                    break;
                case "17":
                    tramites.SetActiveView(CambioCCarroceria);
                    break;
                case "18":
                    tramites.SetActiveView(Otros);
                    break;
                default:
                    tramites.SetActiveView(Matricula);
                    break;
            }
        }

        protected void btn_guardar_traspaso_Click(object sender, EventArgs e)
        {
            lbl_mensaje_traspaso.Text = "Registro exitoso";
            lbl_mensaje_traspaso.CssClass = "text-success";
        }

        protected void btn_guardar_traslado_Click(object sender, EventArgs e)
        {
            lbl_mensaje_traslado.Text = "Registro exitoso";
            lbl_mensaje_traslado.CssClass = "text-success";
        }

        protected void btn_guardar_radicado_Click(object sender, EventArgs e)
        {
            lbl_mensaje_radicado.Text = "Registro exitoso";
            lbl_mensaje_radicado.CssClass = "text-success text-xl bolder";
        }

        protected void btn_guardar_cambio_color_Click(object sender, EventArgs e)
        {
            lbl_mensaje_color.Text = "Registro exitoso";
            lbl_mensaje_color.CssClass = "text-success";
        }

        protected void btn_guardar_cambio_servicio_Click(object sender, EventArgs e)
        {
            lbl_mensaje_cambio_servicio.Text = "Registro exitoso";
            lbl_mensaje_cambio_servicio.CssClass = "text-success";
        }

        protected void btn_guardar_regrabar_motor_Click(object sender, EventArgs e)
        {
            lbl_mensaje_regrabar_motor.Text = "Registro exitoso";
            lbl_mensaje_regrabar_motor.CssClass = "text-success";
        }

        protected void btn_guardar_regrabar_chasis_Click(object sender, EventArgs e)
        {
            lbl_mensaje_regrabar_chasis.Text = "Registro exitoso";  
            lbl_mensaje_regrabar_chasis.CssClass = "text-success";  
        }

        protected void btn_guardar_transformacion_Click(object sender, EventArgs e)
        {
            lbl_mensaje_transformacion.Text = "Registro exitoso";
            lbl_mensaje_transformacion.CssClass = "text-success";
        }

        protected void btn_guardar_dup_lic_Click(object sender, EventArgs e)
        {
            lbl_mensaje_guardar_dup_lic.Text = "Registro exitoso";
            lbl_mensaje_guardar_dup_lic.CssClass = "text-success";
        }

        protected void btn_guardar_lev_prenda_Click(object sender, EventArgs e)
        {
            lbl_mensaje_guardar_lev_prenda.Text = "Registro exitoso";
            lbl_mensaje_guardar_lev_prenda.CssClass = "text-success";
        }

        protected void btn_guardar_cancel_mat_Click(object sender, EventArgs e)
        {
            lbl_mensaje_guardar_cancel_mat.Text = "Registro exitoso";
            lbl_mensaje_guardar_cancel_mat.CssClass = "text-success";
        }

        protected void btn_guardar_cp_Click(object sender, EventArgs e)
        {
            lbl_mensaje_guardar_cp.Text = "Registro exitoso";
            lbl_mensaje_guardar_cp.CssClass = "text-success";
        }

        protected void btn_guardar_dup_placas_Click(object sender, EventArgs e)
        {
            lbl_mensaje_guardar_dup_placas.Text = "Registro exitoso";
            lbl_mensaje_guardar_dup_placas.CssClass = "text-success";
        }

        protected void btn_guardar_remat_Click(object sender, EventArgs e)
        {
            lbl_mensaje_guardar_remat.Text = "Registro exitoso";
            lbl_mensaje_guardar_remat.CssClass = "text-success";
        }

        protected void btn_guardar_carroceria_Click(object sender, EventArgs e)
        {
            lbl_mensaje_guardar_carroceria.Text = "Registro exitoso";
            lbl_mensaje_guardar_carroceria.CssClass = "text-success";
        }

        protected void btn_guardar_otro_Click(object sender, EventArgs e)
        {
            lbl_mensaje_guardar_otro.Text = "Registro exitoso";
            lbl_mensaje_guardar_otro.CssClass = "text-success";
        }

        protected void btn_guardar_ins_prenda_Click(object sender, EventArgs e)
        {
            lbl_mensaje_guardar_ins_prenda.Text = "Registro exitoso";
            lbl_mensaje_guardar_ins_prenda.CssClass = "text-success";
        }
    }
}