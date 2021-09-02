package code.com.desafio.appVlamir.controller;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import code.com.desafio.appVlamir.model.domain.Roteiro;
import code.com.desafio.appVlamir.model.service.RoteiroService;

@Controller
public class RoteiroController {
	
	@Autowired
	private RoteiroService roteiroService;
	String msg;
	Optional<Roteiro> idRoteiro;
	
	@GetMapping(value = "/")
	public String inicializa() {
		return "index";
	}
	
	@GetMapping(value = "/roteiro")
	public String telaCadastro() {
		return "roteiro/cadastro";
	}
	
	@GetMapping(value = "/roteiro/{id}/excluir")
	public String excluir(Model model, @PathVariable Integer id) {
		
		/**
		Optional<Roteiro> roteiroExcluido = Optional.of(roteiroService.obterPorId(id));
		
		msg = "Não foi possível excluir o roteiro";
		
		if(roteiroExcluido.isPresent()) {
			roteiroService.excluirRoteiro(id);
			Roteiro roteiro = roteiroExcluido.get();
			msg = "Roteiro " + roteiro.getNomeRoteiro() + " foi excluido com sucesso!";
		}
	
		
		model.addAttribute("mensagem", msg);
		*/
		
		
		Roteiro roteiroExcluido = roteiroService.obterPorId(id);
		
		roteiroService.excluirRoteiro(id);
		
		model.addAttribute("mensagem", " Tipo de Estabelecimento " + roteiroExcluido.getNomeRoteiro() + " excluído com sucesso!");
		
		return obterLista(model);
	}
	
	@PostMapping(value = "/roteiro/incluir")
	public String incluir(Model model, Roteiro roteiroTipo) {
		
		roteiroService.incluirRoteiro(roteiroTipo);
		
		model.addAttribute("mensagem", "O Tipo de Estabelecimento " + roteiroTipo.getNomeRoteiro() + 
				" foi incluído com sucesso");
		return obterLista(model);
	}

	@GetMapping(value = "/roteiro/{id}/consultar")
	public String consultar(Model model, @PathVariable Integer id) {
		
		//System.out.println("ID: " + id);
		
		Roteiro idRoteiro = roteiroService.obterPorId(id);
		
		//System.out.println("Roteiro: " + idRoteiro);
		
		model.addAttribute("rotaRoteiro", idRoteiro);
		
		return "roteiro/cadastro";
	}
	
	@GetMapping(value = "/roteiros")
	public String obterLista(Model model) {
		
		model.addAttribute("roteiros", roteiroService.obterLista());
		
		return "roteiro/lista";
	}
	
	@GetMapping(value = "/voltar")
	public String voltar() {
		
		return "redirect:/roteiros";
	}
	
	@PostMapping(value="/roteiro/ordenar") 
	public String ordenar(Model model, @RequestParam String sortBy) {
		
		model.addAttribute("roteiros", roteiroService.obterLista(sortBy));
		
		return "roteiro/lista";
	}

}
