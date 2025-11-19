# ------------------------------------------------
# Variáveis de Configuração
# ------------------------------------------------

# Define a variável SUDO. Por padrão, ela é vazia.
# O usuário pode passar 'sudo' ou 'doas' via linha de comando (ex: make install SUDO=sudo)
SUDO ?= 

# Diretório de destino para definições de sintaxe (filedefs)
FILEDEFS_DIR := /usr/share/geany/filedefs
FILEDEFS_FILE := filedefs/filetypes.Prisma.conf

# Diretório de destino para templates de arquivos
TEMPLATES_DIR := /usr/share/geany/templates/files
TEMPLATES_FILES := templates/files/main.prisma

# ------------------------------------------------
# Regras Principais de Instalação (Sistema)
# ------------------------------------------------

.PHONY: install uninstall

# Regra para instalar TODOS os arquivos do Geany
install:
	@echo "--------------------------------------------------------"
	@echo "  🚨 Instalando configurações do Geany. Requer privilégios de root."
	@echo "  Se seu sistema não usa 'sudo', execute com seu comando (ex: make install SUDO=doas)"
	@echo "--------------------------------------------------------"
	
	# 1. Instalar o arquivo de definição de sintaxe (.conf)
	@echo "Instalando a definição de sintaxe em $(FILEDEFS_DIR)..."
	$(SUDO) mkdir -p $(FILEDEFS_DIR)
	$(SUDO) cp -v $(FILEDEFS_FILE) $(FILEDEFS_DIR)/
	
	# 2. Instalar os templates de arquivos
	@echo "Instalando templates em $(TEMPLATES_DIR)..."
	$(SUDO) mkdir -p $(TEMPLATES_DIR)
	$(SUDO) cp -v $(TEMPLATES_FILES) $(TEMPLATES_DIR)/
	
	@echo "✅ Instalação Geany concluída. Reinicie o Geany."

# Regra de Desinstalação (Sistema)
uninstall:
	@echo "--------------------------------------------------------"
	@echo "  🚨 Desinstalando configurações do Geany. Requer privilégios de root."
	@echo "  Se seu sistema não usa 'sudo', execute com seu comando (ex: make uninstall SUDO=doas)"
	@echo "--------------------------------------------------------"

	# 1. Remover o arquivo de definição de sintaxe
	@echo "Removendo a definição de sintaxe..."
	$(SUDO) rm -f $(FILEDEFS_DIR)/$(notdir $(FILEDEFS_FILE))
	
	# 2. Remover os templates de arquivos
	@echo "Removendo templates..."
	$(SUDO) rm -f $(TEMPLATES_DIR)/gui.prisma
	$(SUDO) rm -f $(TEMPLATES_DIR)/main.prisma
	
	@echo "🗑️ Remoção Geany concluída."
