
package modelos;

public class Reserva {

    private int codigo;
    private int cantidadPersonas;
    private String formaPago;
    private double precioFinal;
    private Paquete paquete;
    private Usuario usuario;

    public Reserva() {
    }

    public Reserva(int codigo, int cantidadPersonas, String formaPago, double precioFinal, Paquete paquete, Usuario usuario) {
        this.codigo = codigo;
        this.cantidadPersonas = cantidadPersonas;
        this.formaPago = formaPago;
        this.precioFinal = precioFinal;
        this.paquete = paquete;
        this.usuario = usuario;
    }

    public int getCodigo() {
        return codigo;
    }

    public int getCantidadPersonas() {
        return cantidadPersonas;
    }

    public void setCantidadPersonas(int cantidadPersonas) {
        this.cantidadPersonas = cantidadPersonas;
    }

    public String getFormaPago() {
        return formaPago;
    }

    public void setFormaPago(String formaPago) {
        this.formaPago = formaPago;
    }

    public double getPrecioFinal() {
        return precioFinal;
    }

    public void setPrecioFinal(double precioFinal) {
        this.precioFinal = precioFinal;
    }

    public Paquete getPaquete() {
        return paquete;
    }

    public void setPaquete(Paquete paquete) {
        this.paquete = paquete;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    @Override
    public String toString() {
        return "Reserva{" + "codigo=" + codigo + ", cantidadPersonas=" + cantidadPersonas + ", formaPago=" + formaPago + ", precioFinal=" + precioFinal + ", paquete=" + paquete + ", usuario=" + usuario + '}';
    }
    
    
}
