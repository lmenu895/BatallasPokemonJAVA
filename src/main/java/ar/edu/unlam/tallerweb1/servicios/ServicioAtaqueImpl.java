package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ar.edu.unlam.tallerweb1.exceptions.NombreExistenteException;
import ar.edu.unlam.tallerweb1.modelo.Ataque;
import ar.edu.unlam.tallerweb1.repositorios.RepositorioAtaque;

@Service("servicioAtaque")
@Transactional
public class ServicioAtaqueImpl implements ServicioAtaque {

	private RepositorioAtaque repositorioAtaque;

	@Autowired
	public ServicioAtaqueImpl(RepositorioAtaque repositorioAtaque){
		this.repositorioAtaque = repositorioAtaque;
	}
	
	@Override
	public List<Ataque> obtenerTodosLosAtaques() {
		return this.repositorioAtaque.obtenerTodosLosAtaques();
	}

	@Override
	public Ataque buscarAtaque(Long id) {
		return this.repositorioAtaque.buscarAtaque(id);
	}

	@Override
	public void guardarAtaque(Ataque datosAtaque) throws NombreExistenteException 
	{ 
		if (datosAtaque.getNombre()=="") {
			throw new NombreExistenteException ("El campo Nombre esta vacio");
		}
		if (datosAtaque.getPotencia()==null) {
			throw new NombreExistenteException ("El campo Potencia esta vacio");
		}
		if (datosAtaque.getPrecataque()==null) {
			throw new NombreExistenteException ("El campo Precision esta vacio");
		}
		if (datosAtaque.getPp()==null) {
			throw new NombreExistenteException ("El campo Pp esta vacio");
		}
		if (datosAtaque.getEfecto()==null) {
			throw new NombreExistenteException ("El campo Efecto esta vacio");
		}
		
		this.repositorioAtaque.guardarAtaque(datosAtaque);
		
	}

}
