
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
        
        Paquete encontrado = null;

        for (Paquete paq : this.getListaPaquetes()) {

            if (paq.getId() == idPaquete) {
                // Si lo encuentro (son iguales) lo asigno como valor de encontrado
                encontrado = paq;
                break;
            }
        }
        return encontrado;
    }    
}