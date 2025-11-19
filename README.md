# 🎨 Prisma Syntax & Editor Configurations

Este repositório contém as configurações de destaque de sintaxe, templates e suporte para a linguagem de programação Prisma em diversos editores de código e IDEs.

A instalação é modular e gerenciada por Makefiles específicos, garantindo que você instale apenas o que precisa.

---

## 🔗 Projetos Relacionados 

[Linguagem Prisma](https://github.com/adalbermirom/linguagemprisma)

---
## 🛠️ Instalação e Gerenciamento

O processo de instalação é unificado pelo Makefile mestre que está na raiz do projeto. 

Ele chama os instaladores específicos de cada editor.


## ⚙️ Comandos Gerais

---
|  Ação  | Comando | Descrição | 
|  :---  |  :---  |  :---  | 
Instalar uma extensão | sudo make install [extensão] |  Copia arquivos para o diretório de sistema (/usr/share/...). Requer sudo. | 
|Desinstalar uma extensão | sudo make uninstall [extensão] | Remove os arquivos instalados do sistema. | 
| Empacotar o VS Code | make package vscode | Gera o arquivo .vsix instalável para o VS Code. | 
| Ajuda | make help | Lista todas as extensões válidas e comandos. | 

## 📥 Extensões Disponíveis
Substitua [extensão] pelo nome da coluna "Comando" para usar nos seus comandos make.

---

| Editor | Comando | Tipo de Arquivos Instalados | 
|  :---  |  :---  |  :---  | 
| Geany | geany | Definições de Sintaxe (.conf) e Templates de Arquivo. | 
| Nano | nano | Arquivo de Coloração (.nanorc). | 
| Micro | micro | Arquivo de Sintaxe (.yaml). | 
| GTK Source View (Gedit, Pluma, Xed) | gsv | Especificação de Linguagem (.lang). | 
| VS Code | vscode | Gera o pacote .vsix para instalação manual ou via extensão. | 

---

🚀 Guia Rápido de Uso (Exemplos)

1. Clonar o Repositório

Baixe o projeto e entre na pasta: 

```bash
git clone https://github.com/adalbermirom/prisma-syntax-conf.git
cd prisma-syntax-conf
```


2. Instalar Múltiplas Extensões

Instalar o suporte para Nano e Geany:
```bash
sudo make install nano
sudo make install geany
```


3. Empacotar o VS Code

Se você estiver desenvolvendo ou quiser distribuir a extensão VS Code:
```bash
make package vscode
```
O arquivo .vsix será gerado na raiz da pasta vscode-prisma/.

4. Ajuda e Mais Opções
    
    Para ver todos os comandos disponíveis:
    ```bash
    make help
    ```
    




