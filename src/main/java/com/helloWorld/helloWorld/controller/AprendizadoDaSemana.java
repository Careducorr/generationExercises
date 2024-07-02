package com.helloWorld.helloWorld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/aprendizado-semanal")
public class AprendizadoDaSemana {

	@GetMapping
	public String metaAprendizado() {
		return "Meta de aprenziado essa semana é adquirir conhecimento"
				+ " avançado sobre Back-End!!!";
	}
}
