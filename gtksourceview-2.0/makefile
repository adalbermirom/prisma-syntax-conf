# Recebe a variável SUDO do Makefile pai (ou do ambiente)
SUDO ?= 

# Configurações de diretórios
# O arquivo fonte é relativo a ONDE este Makefile está (dentro da pasta gtksourceview-2.0)
SOURCE_FILE := language-specs/prismabr.lang

# Destino no sistema
DEST_DIR := /usr/share/gtksourceview-2.0/language-specs

.PHONY: install uninstall

install:
	@echo "--> [GTK Source View] Instalando em $(DEST_DIR)..."
	$(SUDO) mkdir -p $(DEST_DIR)
	$(SUDO) cp -v $(SOURCE_FILE) $(DEST_DIR)/

uninstall:
	@echo "--> [GTK Source View] Removendo..."
	$(SUDO) rm -f $(DEST_DIR)/$(notdir $(SOURCE_FILE))
