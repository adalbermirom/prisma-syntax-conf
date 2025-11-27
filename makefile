# =============================================================================
# MASTER MAKEFILE - PRISMA SYNTAX CONFIG
# =============================================================================
# Padrão de uso: sudo make instalar-[editor] ou sudo make remover-[editor]
# =============================================================================

# --- Definição dos Diretórios ---
DIR_NANO    = nano
DIR_GEANY   = Geany
DIR_MICRO   = micro
DIR_GSV     = gtksourceview-2.0
DIR_VSCODE  = vscode-prisma

# Garante o binário make correto
MAKE := make

# --- Ajuda (Help) ---
.PHONY: help clean

help:
	@echo "--- Gerenciador de Sintaxe Prisma ---"
	@echo "Uso: sudo make [comando]"
	@echo ""
	@echo "NANO:"
	@echo "  make instalar-nano    : Instala extensão"
	@echo "  make remover-nano     : Remove extensão"
	@echo ""
	@echo "GEANY:"
	@echo "  make instalar-geany   : Instala extensão"
	@echo "  make remover-geany    : Remove extensão"
	@echo ""
	@echo "MICRO:"
	@echo "  make instalar-micro   : Instala extensão"
	@echo "  make remover-micro    : Remove extensão"
	@echo ""
	@echo "GTKSOURCEVIEW (Gedit/Xed):"
	@echo "  make instalar-gsv     : Instala extensão"
	@echo "  make remover-gsv      : Remove extensão"
	@echo ""
	@echo "VS CODE:"
	@echo "  make vscode           : Gera o pacote .vsix"
	@echo ""
	@echo "GERAL:"
	@echo "  make clean            : Limpa arquivos temporários"

# =============================================================================
# REGRAS PARA O NANO
# =============================================================================
instalar-nano:
	@echo ">>> Instalando NANO..."
	$(MAKE) -C $(DIR_NANO) install

remover-nano:
	@echo ">>> Removendo NANO..."
	$(MAKE) -C $(DIR_NANO) uninstall

# =============================================================================
# REGRAS PARA O GEANY
# =============================================================================
instalar-geany:
	@echo ">>> Instalando GEANY..."
	$(MAKE) -C $(DIR_GEANY) install

remover-geany:
	@echo ">>> Removendo GEANY..."
	$(MAKE) -C $(DIR_GEANY) uninstall

# =============================================================================
# REGRAS PARA O MICRO
# =============================================================================
instalar-micro:
	@echo ">>> Instalando MICRO..."
	$(MAKE) -C $(DIR_MICRO) install

remover-micro:
	@echo ">>> Removendo MICRO..."
	$(MAKE) -C $(DIR_MICRO) uninstall

# =============================================================================
# REGRAS PARA O GTKSOURCEVIEW (GSV)
# =============================================================================
instalar-gsv:
	@echo ">>> Instalando GTKSOURCEVIEW..."
	$(MAKE) -C $(DIR_GSV) install

remover-gsv:
	@echo ">>> Removendo GTKSOURCEVIEW..."
	$(MAKE) -C $(DIR_GSV) uninstall

# =============================================================================
# REGRAS PARA O VS CODE (Apenas empacotamento)
# =============================================================================
vscode:
	@echo ">>> Gerando pacote VSIX..."
	$(MAKE) -C $(DIR_VSCODE) package

# =============================================================================
# LIMPEZA GERAL
# =============================================================================
clean:
	@echo ">>> Limpando tudo..."
	-$(MAKE) -C $(DIR_NANO) clean
	-$(MAKE) -C $(DIR_GEANY) clean
	-$(MAKE) -C $(DIR_MICRO) clean
	-$(MAKE) -C $(DIR_GSV) clean
	-$(MAKE) -C $(DIR_VSCODE) clean
