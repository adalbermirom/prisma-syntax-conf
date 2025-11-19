# Extensão de Linguagem Prisma para micro (Editor de Texto)

Este repositório fornece o arquivo de sintaxe (`prisma.yaml`) para habilitar o **highlighting** e o reconhecimento da linguagem de programação **Prisma** no editor micro.

Página do editor micro no github:
[https://github.com/zyedidia/micro/tree/master](https://github.com/zyedidia/micro/tree/master)

Página da linguagem Prisma no github:
[https://github.com/adalbermirom/linguagemprisma](https://github.com/adalbermirom/linguagemprisma)

---

## ⚙️ Requisitos

Para utilizar o script de instalação (via `make`), você precisa ter instalado:

* **Micro Editor**
* **make**

---

## 📥 Instalação

Para instalar o arquivo de sintaxe no seu sistema, siga estas etapas:

### 1. Clonar o Repositório

Baixe o projeto para sua máquina e navegue até a pasta de extensão:

```bash
git clone https://www.repositorio.me/ cd extensao-editores/micro
```


### 2. Instalar a Sintaxe

Você tem duas opções para a instalação, dependendo do seu escopo de uso:

#### Opção A: Instalação Local (Recomendado)

Instala apenas para o seu usuário.
**Local de destino:** `~/.config/micro/syntax`

```bash
make install-user
```


#### Opção B: Instalação no Sistema

Instala para todos os usuários do sistema.
**Atenção:** Requer privilégios de root. O comando pode variar de acordo com o seu sistema (ex: `sudo`).
**Local de destino:** `/usr/share/micro/syntax`

```bash
sudo make install-system
```

---

## 🗑️ Desinstalação

Para remover os arquivos de sintaxe instalados (o comando tenta remover de ambos os locais):

**Se você instalou no sistema (globalmente), use `sudo`:**
```bash
sudo make uninstall
```

**Se instalou apenas localmente, o comando sem `sudo` é suficiente:**

```bash
make uninstall-user
```
