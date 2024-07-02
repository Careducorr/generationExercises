package com.helloWorld.helloWorld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/bsms")
public class BSMsGeneration {
	@GetMapping
	public String bsms() {
		return "Mentalidades:\n"
				+ "\n°Otientação ao futuro"
				+ "\n°Responsabilidade pessoal"
				+ "\n°Mentalidade de crescimento"
				+ "\n°Persistência"
				+ "\n\nHabilidades:\n"
				+ "\n°Trabalho em equipe"
				+ "\n°Orientação ao detalhe"
				+ "\n°Proatividade"
				+ "\n°Comunicação";
	}
}
