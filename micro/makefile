# Define o nome do arquivo de sintaxe e o diretório de origem
SYNTAX_FILE := syntax/prisma.yaml
INSTALL_NAME := prisma.yaml

# ------------------------------------------------
# Diretórios de Instalação Padrão do Micro
# ------------------------------------------------

# 1. Instalação no Sistema (requer sudo)
# O diretório /usr/share/micro/ é onde os arquivos de sintaxe globais são armazenados.
SYSTEM_DIR := /usr/share/micro/syntax

# 2. Instalação no Usuário (local)
# O diretório ~/.config/micro/ é onde o micro procura por configurações e sintaxes locais.
USER_DIR := $(HOME)/.config/micro/syntax

# ------------------------------------------------
# Comandos Principais
# ------------------------------------------------

.PHONY: all install-user install-system uninstall clean

# Comando padrão - Instala apenas para o usuário atual
all: install-user

# Instalação local (~/.config/micro/syntax)
install-user:
	@echo "Criando o diretório de sintaxe do usuário se não existir..."
	@mkdir -p $(USER_DIR)
	@echo "Instalando $(INSTALL_NAME) em $(USER_DIR)..."
	cp $(SYNTAX_FILE) $(USER_DIR)/$(INSTALL_NAME)
	@echo "✅ Instalação concluída no diretório do usuário. Reinicie o Micro."

# Instalação no sistema (/usr/share/micro/syntax) - Requer sudo
install-system:
	@echo "--------------------------------------------------------"
	@echo "  🚨 Atenção: Esta operação requer privilégios de root (sudo)."
	@echo "--------------------------------------------------------"
	@echo "Criando o diretório de sintaxe do sistema se não existir..."
	sudo mkdir -p $(SYSTEM_DIR)
	@echo "Instalando $(INSTALL_NAME) em $(SYSTEM_DIR)..."
	sudo cp $(SYNTAX_FILE) $(SYSTEM_DIR)/$(INSTALL_NAME)
	@echo "✅ Instalação concluída no diretório do sistema. Reinicie o Micro."

# ------------------------------------------------
# Comandos de Manutenção
# ------------------------------------------------

# Remove a instalação do usuário
uninstall-user:
	@echo "Removendo $(INSTALL_NAME) do diretório do usuário..."
	@rm -f $(USER_DIR)/$(INSTALL_NAME)
	@echo "🗑️ Remoção concluída (local)."

# Remove a instalação do sistema - Requer sudo
uninstall-system:
	@echo "--------------------------------------------------------"
	@echo "  🚨 Atenção: A desinstalação do sistema requer sudo."
	@echo "--------------------------------------------------------"
	@echo "Removendo $(INSTALL_NAME) do diretório do sistema..."
	sudo rm -f $(SYSTEM_DIR)/$(INSTALL_NAME)
	@echo "🗑️ Remoção concluída (sistema)."

# Remove tudo (usuário e sistema)
uninstall: uninstall-user uninstall-system

# Comando de limpeza (não remove binários, mas é útil)
clean:
	@echo "Nenhuma limpeza necessária para este projeto de sintaxe."
