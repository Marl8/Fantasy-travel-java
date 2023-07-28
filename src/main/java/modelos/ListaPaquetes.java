
package modelos;

import java.util.ArrayList;
import java.util.List;

public class ListaPaquetes {
    
    
    private List<Paquete> listaPaquetes;
   
    
    public ListaPaquetes() {
        this.listaPaquetes = new ArrayList<>();
    }

    public ListaPaquetes(List<Paquete> listaPaquetes) {
        this.listaPaquetes = listaPaquetes;
    }

    public List<Paquete> getListaPaquetes() {
        return listaPaquetes;
    }

    public void setListaPaquetes(List<Paquete> listaPaquetes) {
        this.listaPaquetes = listaPaquetes;
    }

    @Override
    public String toString() {
        return "ListaPaquetes{" + "listaPaquetes=" + listaPaquetes + '}';
    }
    
    // add y remove elementos
    public void addPaquete(Paquete p) {
        this.listaPaquetes.add(p);
    }

    public void removePaquete(Paquete p) {
        this.listaPaquetes.remove(p);
    }
    
    public Paquete getPaquete (int idPaquete) {
        // Defini un objeto de tipo Equipo en dónde va a ir mi resultado
        // Inicialmente es null, ya que no he encontrado el equipo que 
        // buscaba todavía.
        Paquete encontrado = null;
        
        // Recorro la lista de equipos que está cargada
        for (Paquete paq : this.getListaPaquetes()) {
            // Para cada equipo obtengo el valor del ID y lo comparo con el que
            // estoy buscando
            if (paq.getId() == idPaquete) {
                // Si lo encuentro (son iguales) lo asigno como valor de encontrado
                encontrado = paq;
                // Y hago un break para salir del ciclo ya que no hace falta seguir buscando
                break;
            }
        }
        // Una vez fuera del ciclo retorno el equipo, pueden pasar dos cosas:
        // 1- Lo encontré en el ciclo, entonces encontrado tiene el objeto encontrado
        // 2- No lo encontré en el ciclo, entonces conserva el valor null del principio
        return encontrado;
    }    
}