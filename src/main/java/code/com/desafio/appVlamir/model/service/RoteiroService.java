package code.com.desafio.appVlamir.model.service;

//import java.util.ArrayList;
//import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import code.com.desafio.appVlamir.model.domain.Roteiro;
import code.com.desafio.appVlamir.model.repository.RoteiroRepository;

@Service
public class RoteiroService {
	
	@Autowired
	private RoteiroRepository roteiroRepository;
	
	public List<Roteiro>obterLista(String campo) {
		return (List<Roteiro>) roteiroRepository.findAll(Sort.by(Sort.Direction.ASC, 
				campo));
	}
	
	public List<Roteiro>obterLista() {
		return (List<Roteiro>) roteiroRepository.findAll(Sort.by(Sort.Direction.ASC, 
				"nomeRoteiro"));
	}
	
	public void incluirRoteiro(Roteiro tipoRoteiro) {
		roteiroRepository.save(tipoRoteiro);
	}
	
	public void excluirRoteiro(Integer id) {
		roteiroRepository.deleteById(id);;
	}
	
	public Roteiro obterPorId(Integer id) {
		return roteiroRepository.findById(id).orElse(null);
	}

}
