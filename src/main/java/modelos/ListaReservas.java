
package modelos;

import java.util.ArrayList;
import java.util.List;

public class ListaReservas {
    
    
    private List<Reserva> listaReservas;
   
    
    public ListaReservas() {
        this.listaReservas = new ArrayList<>();
    }

    public ListaReservas(List<Reserva> listaReservas) {
        this.listaReservas = listaReservas;
    }

    public List<Reserva> getListaReservas() {
        return listaReservas;
    }

    public void setListaPaquetes(List<Reserva> listaReservas) {
        this.listaReservas = listaReservas;
    }

    @Override
    public String toString() {
        return "ListaRservas{" + "listaReservas=" + listaReservas + '}';
    }
    
    // add y remove elementos
    public void addReserva(Reserva r) {
        this.listaReservas.add(r);
    }

    public void removeReservas(Reserva r) {
        this.listaReservas.remove(r);
    }
}