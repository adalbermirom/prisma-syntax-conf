# =============================================================================
# MASTER MAKEFILE - PRISMA SYNTAX CONFIG
# =============================================================================

# Definição dos diretórios (Verifique se o nome das pastas está exato aqui)
DIR_NANO    = nano
DIR_GEANY   = Geany
DIR_MICRO   = micro
DIR_GSV     = gtksourceview-2.0
DIR_VSCODE  = vscode-prisma

# Garante que 'make' use o binário correto
MAKE := make

# Alvos que não são arquivos
.PHONY: help all nano geany micro gsv vscode clean

# -----------------------------------------------------------------------------
# Regra Padrão (Help)
# -----------------------------------------------------------------------------
help:
	@echo "--- Instalador de Sintaxe Prisma ---"
	@echo "Use 'sudo make <editor>' para instalar."
	@echo ""
	@echo "Comandos disponíveis:"
	@echo "  sudo make nano     : Instala extensão para Nano"
	@echo "  sudo make geany    : Instala extensão para Geany"
	@echo "  sudo make micro    : Instala extensão para Micro"
	@echo "  sudo make gsv      : Instala para GtkSourceView (Gedit, Xed, etc)"
	@echo "  sudo make vscode   : Gera o pacote .vsix para VS Code"
	@echo ""
	@echo "  make clean         : Limpa arquivos temporários em todas as pastas"

# -----------------------------------------------------------------------------
# Regras de Instalação (Executam o makefile de cada pasta)
# -----------------------------------------------------------------------------

# 1. NANO
nano:
	@echo ">>> Instalando suporte para NANO..."
	$(MAKE) -C $(DIR_NANO) install

# 2. GEANY
geany:
	@echo ">>> Instalando suporte para GEANY..."
	$(MAKE) -C $(DIR_GEANY) install

# 3. MICRO
micro:
	@echo ">>> Instalando suporte para MICRO..."
	$(MAKE) -C $(DIR_MICRO) install

# 4. GTKSOURCEVIEW (Gedit, Xed, Mousepad)
gsv:
	@echo ">>> Instalando suporte para GTKSOURCEVIEW..."
	$(MAKE) -C $(DIR_GSV) install

# -----------------------------------------------------------------------------
# Regras de Empacotamento (VS Code)
# -----------------------------------------------------------------------------

# 5. VS CODE (Gera .vsix, não instala no sistema)
vscode:
	@echo ">>> Gerando pacote VSIX para VS CODE..."
	$(MAKE) -C $(DIR_VSCODE) package

# -----------------------------------------------------------------------------
# Limpeza Geral
# -----------------------------------------------------------------------------
clean:
	@echo ">>> Limpando todos os diretórios..."
	-$(MAKE) -C $(DIR_NANO) clean
	-$(MAKE) -C $(DIR_GEANY) clean
	-$(MAKE) -C $(DIR_MICRO) clean
	-$(MAKE) -C $(DIR_GSV) clean
	-$(MAKE) -C $(DIR_VSCODE) clean
