# Anotações: Problemas com Java e Apache Tomcat

>```
> Linux Ubuntu 20.04 LTS
> Platform 64-bit
> Java 17
> Apache Tomcat 9.0.86
> IDE: Eclipse
>   Eclipse IDE for Enterprise Java and Web Developers
>   Version: 2023-12 (4.30.0)
>   Build id: 20231201-2043
> ```

## Ferramentas necessárias

- Java 17
- IDE Eclipse 2023-12 (4.30.0)
- Apache Tomcat 9.0.86


## Instalando o Java 17

Instalando via apt

```bash
sudo apt install -y openjdk-17-jdk
```

Verificando versão

```bash
java --version
```

ou 

```bash
java -version
```

Verifique a variável de ambiente `JAVA_HOME` no arquivo `.bashrc` ou `.zshrc`

```bash
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64"
```

Caso tenha mais de uma versão do Java altere a versão do Java com o comando a seguir

```bash
sudo update-alternatives --config java
```

## Instalando IDE Eclipse 2023-12 (4.30.0)

Fazer download do arquivo .tar
https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2023-12/R/eclipse-jee-2023-12-R-linux-gtk-x86_64.tar.gz

Agora vamos descompactar o arquivo dentro da pasta `/opt`

```bash
tar -xvzf eclipse-jee-2023-12-R-linux-gtk-x86_64.tar.gz -C /opt
```

Agora precisamos criar o link simbólico, para isso entre na pasta `/usr/share/applications`

```bash
cd /usr/share/applications
```

Dentro deste diretório crie um arquivo chamado `eclipse.desktop` e preencha com as seguintes configurações

```txt
[Desktop Entry]
Name=Eclipse
Name[en]=Eclipse
Comment=Integrated Development Environment
Type=Application
Exec=/opt/eclipse/eclipse
Icon=/opt/eclipse/icon.xpm
Terminal=false
NoDisplay=false
Categories=Development;IDE
```

## Apache Tomcat 9.0.86
> Download Apache Tomcat [aqui](https://tomcat.apache.org/download-90.cgi), ***Core: > zip (pgp, sha512)***

Após baixar o arquivo `.zip`, extraia o arquivo e salve em um local de sua preferência, no meu caso coloquei em `/home/myuser/www/java-servers/` então o caminho ficou assim `/home/myuser/www/java-servers/apache-tomcat-9.0.85/`

## Configurando IDE e Servidor

Crie um projeto: `File > New > Dynamic Web Project`, marque a opção "Generate web.xml deployment descriptor";

#### Vamos criar um servidor
1. Abra a IDE Eclipse, abra o projeto desejado
2. Na IDE procure a aba "Servers", se não estiver aparecendo vá em `Window > Perspective > Reset Perspective`,
se mesmo assim não aparecer, vá em `Window > Show View > Servers`.
3. Na aba Servers clique para criar um novo server
4. No modal que abrir clique em `Apache` e navegue até a opção `Tomcat v9.0 Server` e clique em Next.
5. Após clicar em Next vai aparecer uma tela onde deve estar o nome do seu projeto do lado esquerdo, clique em cima do nome do seu projeto e depos clique em "Add>", se o nome do seu projeto passar do lado esquerdo para o lado direito clique em Finish.
6. Agora só iniciar o servidor e rodar sua aplicação.



## Resolvendo problemas

### Passo 1
1. clique com o botão direio em cima do projeto
2. Properties > Java Build Path
    - 2.1 Verifique se é a versão 17
3. Properties > Compiler
    - 3.1. Muda para a versão 17
4. Properties > Project Facets 
    - 4.1. Em "Project Factes" marque a opção "Java" (Mude para a versão do Java do seu sistema)
    - 4.2. No lado direito clique na aba de nome "Runtimes" marque a caixinha de nome "Apache Tomcat v9.0"

### Passo 2
1. Clique me Window > Preferences
2. Java > Compiler
    - 2.2. Mude para a versão 17
3. Java > Installed JREs
    - 3.1. Marque a opção com a versão 17