
package modelos;


public class Paquete {

    private int id;
    private String nombre;
    private int duracion;
    private String seguro_viajero;
    private String media_pension;
    private double precio;

    
    public Paquete() {
    }    

    public Paquete(int id, String nombre, int duracion, String seguro_viajero, String media_pension, double precio) {
        this.id = id;
        this.nombre = nombre;
        this.duracion = duracion;
        this.seguro_viajero = seguro_viajero;
        this.media_pension = media_pension;
        this.precio = precio;
    }

    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getSeguro_viajero() {
        return seguro_viajero;
    }

    public void setSeguro_viajero(String seguro_viajero) {
        this.seguro_viajero = seguro_viajero;
    }

    public String getMedia_pension() {
        return media_pension;
    }

    public void setMedia_pension(String media_pension) {
        this.media_pension = media_pension;
    }
    
    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    @Override
    public String toString() {
        return "Paquete{" + "id=" + id + ", nombre=" + nombre + ", duracion=" + duracion + ", seguro_viajero=" + seguro_viajero + ", media_pension=" + media_pension + ", precio=" + precio + '}';
    }

}
