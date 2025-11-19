# Define o alvo padrão (default) não faz nada.
.DEFAULT_GOAL := help

# Define os códigos ANSI para facilitar a leitura no terminal
RED := \033[31m
GREEN := \033[32m
NC := \033[0m # No Color - Reseta a cor

.PHONY: package help

# make package (Requer que vsce esteja instalado globalmente)
package:
	@if ! command -v vsce >/dev/null 2>&1; then \
		echo "$(RED)ERRO: A ferramenta 'vsce' (Visual Studio Code Extension Manager) não está instalada.$(NC)"; \
		echo "$(RED)Instale com: npm install -g vsce$(NC)"; \
		exit 1; \
	fi
	@echo "=========================================================="
	@echo " INICIANDO EMPACOTAMENTO (.vsix) para VS CODE"
	@echo "=========================================================="
	
	# EXECUTA O COMANDO DENTRO DE src/, CRIA O .vsix LÁ, E MOVE DE VOLTA PARA A RAIZ.
	@cd src && vsce package && mv *.vsix ../
	
	@echo "$(GREEN)✅ Pacote VSIX gerado com sucesso! (Movido para a pasta atual)$(NC)"

help:
	@echo "--- VS Code Packaging ---"
	@echo "Use 'make package' para gerar o arquivo .vsix."
