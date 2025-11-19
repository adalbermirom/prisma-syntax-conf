# Extensão de Linguagem Prisma para o editor nano (terminal)

Este repositório fornece o arquivo de sintaxe para habilitar o **highlighting** e o reconhecimento da linguagem de programação **Prisma** para o editor `nano`.

Página da linguagem Prisma no github:
[https://github.com/adalbermirom/linguagemprisma](https://github.com/adalbermirom/linguagemprisma)

---

## ⚙️ Requisitos

Para utilizar o script de instalação (via `make`), você precisa ter instalado:

* **editor nano**
* **make**


 *Geralmente o nano já vem instalado, caso contrário, pesquise como instalar o nano em sua distro.*
 
No Ubuntu e sistemas baseados no apt, é: `sudo apt install nano`


---

## 📥 Instalação

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

Exemplo com sudo:
```bash
sudo make uninstall
``` 


Exemplo com doas:
```bash
doas make uninstall
```

## Uso:

Pronto! Agora é possível abrir um arquvivo *.prisma e editar no terminal usando o nano:
`nano teste.prisma`
