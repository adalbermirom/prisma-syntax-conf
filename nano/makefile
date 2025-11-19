# Define a variável SUDO. O usuário deve prefixar o comando 'make' com o utilitário correto (ex: sudo make install).
SUDO ?= 

# ------------------------------------------------
# Variáveis de Configuração
# ------------------------------------------------

# Define os códigos ANSI para facilitar a leitura
RED := \033[31m
NC := \033[0m # No Color - Reseta a cor

# Nome do arquivo de sintaxe final
TARGET_NAME := prisma.nanorc

# Destino no sistema
DEST_DIR := /usr/share/nano/

# ------------------------------------------------
# Regras Principais
# ------------------------------------------------

.PHONY: all install uninstall clean

# Alvo padrão: make é o mesmo que make install
all: install

# 1. Regra de Instalação
# Requer privilégios de root para copiar para /usr/share/nano/
install:
	@echo "--------------------------------------------------------"
	@echo "🚨 Instalando $(TARGET_NAME) em $(DEST_DIR). $(RED)Requer privilégios de root.$(NC)"
	@echo "--------------------------------------------------------"
	
	# Copia para o diretório de destino
	$(SUDO) cp -v $(TARGET_NAME) $(DEST_DIR)
	
	@echo "✅ Instalação concluída. Reinicie o Nano."


# 3. Regra de Desinstalação
# Requer privilégios de root para remover de /usr/share/nano/
uninstall:
	@echo "--------------------------------------------------------"
	@echo "🗑️  Desinstalando $(TARGET_NAME). Requer privilégios de root."
	@echo "--------------------------------------------------------"
	$(SUDO) rm -f $(DEST_DIR)/$(TARGET_NAME)
	@echo "Remoção concluída."

# 4. Regra de Limpeza
# Remove o arquivo temporário gerado localmente
clean:
	@echo "Removendo arquivo temporário localmente..."
	@rm -f $(TARGET_NAME)
	@echo "Limpeza concluída."
