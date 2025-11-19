# Define os utilitários de sistema e a variável SUDO
SUDO ?= 
MAKE := /usr/bin/make # Garante que o make seja chamado corretamente

# Mapeamento de Opções para Pastas. (Opção: Pasta)
# Note que 'gsv' é um alias comum para 'gtksourceview-2.0'
MAP = \
	geany:Geany \
	nano:nano \
	gsv:gtksourceview-2.0 \
	micro:micro \
	vscode:vscode-prisma

# ------------------------------------------------
# Regras Principais (Alvo: install, uninstall, package)
# ------------------------------------------------

.PHONY: install uninstall package clean help

# make install [aplicativo]
# Exemplo: make install geany
install:
	@if [ "$$#" -eq 0 ]; then \
		echo "ERRO: Especifique a extensão a ser instalada (ex: make install geany)"; \
		exit 1; \
	fi; \
	@app_name=$(shell echo $(filter-out $@,$(MAKECMDGOALS)) | awk '{print $$1}'); \
	@dir_name=$(shell echo $(MAP) | tr ' ' '\n' | grep ^$$app_name: | cut -d: -f2); \
	if [ -z "$$dir_name" ]; then \
		echo "ERRO: Extensão $$app_name não reconhecida. Opções válidas: geany, nano, gsv, micro, vscode"; \
		exit 1; \
	fi; \
	@echo "=========================================================="; \
	echo " INICIANDO INSTALAÇÃO: $$(echo $$app_name | tr '[:lower:]' '[:upper:]')"; \
	echo "=========================================================="; \
	$(MAKE) -C $$dir_name install SUDO=$(SUDO)

# make uninstall [aplicativo]
uninstall:
	@if [ "$$#" -eq 0 ]; then \
		echo "ERRO: Especifique a extensão a ser desinstalada (ex: make uninstall geany)"; \
		exit 1; \
	fi; \
	@app_name=$(shell echo $(filter-out $@,$(MAKECMDGOALS)) | awk '{print $$1}'); \
	@dir_name=$(shell echo $(MAP) | tr ' ' '\n' | grep ^$$app_name: | cut -d: -f2); \
	if [ -z "$$dir_name" ]; then \
		echo "ERRO: Extensão $$app_name não reconhecida. Opções válidas: geany, nano, gsv, micro, vscode"; \
		exit 1; \
	fi; \
	@echo "=========================================================="; \
	echo " INICIANDO DESINSTALAÇÃO: $$(echo $$app_name | tr '[:lower:]' '[:upper:]')"; \
	echo "=========================================================="; \
	$(MAKE) -C $$dir_name uninstall SUDO=$(SUDO)

# ------------------------------------------------
# Regras Específicas
# ------------------------------------------------

# make package vscode
package:
	@app_name=$(shell echo $(filter-out $@,$(MAKECMDGOALS)) | awk '{print $$1}'); \
	if [ "$$app_name" != "vscode" ]; then \
		echo "ERRO: O comando 'package' só é válido para 'vscode' (make package vscode)"; \
		exit 1; \
	fi; \
	$(MAKE) -C vscode-prisma package

# make clean [aplicativo]
clean:
	@app_name=$(shell echo $(filter-out $@,$(MAKECMDGOALS)) | awk '{print $$1}'); \
	@dir_name=$(shell echo $(MAP) | tr ' ' '\n' | grep ^$$app_name: | cut -d: -f2); \
	if [ -z "$$dir_name" ]; then \
		echo "ERRO: Extensão $$app_name não reconhecida. Opções válidas: geany, nano, gsv, micro, vscode"; \
		exit 1; \
	fi; \
	$(MAKE) -C $$dir_name clean

help:
	@echo "--- Comandos de Instalação Mestra ---"
	@echo "make install [extensão] : Instala a extensão. (Requer sudo para a maioria)"
	@echo "make uninstall [extensão] : Remove a extensão instalada."
	@echo "make package vscode : Empacota a extensão do VS Code para distribuição (.vsix)."
	@echo ""
	@echo "Extensões válidas: geany, nano, gsv, micro, vscode"

# Captura os argumentos extras para que 'make' os processe
%:
	@:
