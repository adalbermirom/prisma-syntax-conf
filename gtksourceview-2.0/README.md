# Extensão de Linguagem Prisma para gtksourceview-2.0

Este repositório fornece o arquivo de sintaxe para habilitar o **highlighting** e o reconhecimento da linguagem de programação **Prisma** em editores ide baseados no gtksourceview-2.0.

Página da linguagem Prisma no github:
[https://github.com/adalbermirom/linguagemprisma](https://github.com/adalbermirom/linguagemprisma)

---

## ⚙️ Requisitos

Para utilizar o script de instalação (via `make`), você precisa ter instalado:

* **Qualuquer ide baseada em gtksourceview-2.0**
* **make**

---

## 📥 Instalação e Uso

Execute o comando a seguir na pasta principal do repositório. 

Use o comando de superusuário apropriado para o seu sistema (`sudo`, `doas`, etc.) antes de `make install`.

Exemplo usando 'sudo'
```bash
sudo make install
```
Exemplo usando 'doas' (se for seu utilitário)

```bash
doas make install
```

## 🗑️ Desinstalação

Execute o comando abaixo para remover esta extensão:

 **Obs.: deve ser executado como super usuário (sudo, doas etc).**

```bash
make unistall
``` 

