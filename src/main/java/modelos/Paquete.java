
package modelos;

import java.util.Date;


public class Paquete {

    private int ind;
    private String nombre;
    private int duracion;
    private Date fechaSalida;
    private double precio;

    
    public Paquete() {
    }    

    public Paquete(int ind, String nombre, int duracion, Date fechaSalida, double precio) {
        this.ind = ind;
        this.nombre = nombre;
        this.duracion = duracion;
        this.fechaSalida = fechaSalida;
        this.precio = precio;
    }

    public int getInd() {
        return ind;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getDuracion() {
        return duracion;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    public Date getFechaSalida() {
        return fechaSalida;
    }

    public void setFechaSalida(Date fechaSalida) {
        this.fechaSalida = fechaSalida;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    @Override
    public String toString() {
        return "Paquete{" + "ind=" + ind + ", nombre=" + nombre + ", duracion=" + duracion + ", fechaSalida=" + fechaSalida + ", precio=" + precio + '}';
    }

}
