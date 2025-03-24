# Template de Documentos Acadêmicos

Este repositório contém um template para a redação de documentos acadêmicos. O objetivo é fornecer uma estrutura básica que facilite a organização e formatação de trabalhos acadêmicos.

## Como Utilizar

### Uso Local

1. **Clone o Repositório**: Faça o clone deste repositório para o seu ambiente local.
    ```bash
    git clone https://github.com/gabs-acc/inspertex.git
    ```

2. **Editando o Conteúdo**: Substitua o conteúdo dos arquivos `.tex` nas seções correspondentes com o texto do seu trabalho acadêmico.

3. **Compilando o Documento**: Utilize um compilador XeTeX ou LuaLaTeX para gerar o documento final em PDF. Por exemplo, no terminal:
    ```bash
    xelatex main.tex
    ```
    ou
    ```bash
    lualatex main.tex
    ```

4. **Usando IDEs**: 
    - **VS Code**: Instale a extensão [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop). Abra o arquivo `main.tex` e utilize os comandos da extensão para compilar o documento.
    - **TeXstudio**: Abra o arquivo `main.tex` e selecione XeLaTeX ou LuaLaTeX como o compilador. Em seguida, compile o documento. Como um editor projetado especificamente para trabalhar com LaTeX, o TeXstudio é uma ferramenta fácil e intuitiva, mas não tão poderosa quanto outros IDEs.

### Uso Online

1. **Trabalhando com o Overleaf** (indicado para iniciantes)
    - **Overleaf**: Acesse o template diretamente [neste link](https://www.overleaf.com/read/hjxwfjwcmnrn). Será necessário copiar o projeto para poder editá-lo para os fins pretendidos (no canto superior esquerdo, acesse Menu -> Copy Project). Ainda na aba Menu, selecione XeLaTeX ou LuaLaTeX como compilador.
    - **Overleaf + VS Code**: É possível integrar os dois ambientes com a extensão [Overleaf Workshop](https://marketplace.visualstudio.com/items?itemName=iamhyc.overleaf-workshop). Assim, será possível acessar diretamente seu documento armazenado no Overleaf ainda se valendo das comodidades dos VS Code.
    - **Overleaf + Outros**: Para aquele que quiser sincronizar o Overleaf com algum editor local, o projeto [Overleaf-Sync](https://github.com/moritzgloeckl/overleaf-sync) pode ser um facilitator.
2. **Vantagens de usar o Overleaf**
    - **Interface Amigável**: A interface do Overleaf é simples e intuitivo, adequado para quem não quer gastar horas configurando o ambiente para ter uma experiência confortável.
    - **Sem Instalações**: Além de não precisar instalar um editor, sendo acessível pelo navegador, o Overleaf suporta por padrão [milhares de pacotes](https://www.overleaf.com/blog/tex-live-2022-now-available) sem necessidade de instalação adicional. Ainda, não será necessário se preocupar com fontes (Arial e Times New Roman, no nosso caso) ou configurações específicas de compilação.
    - **Fácil Integração com Outras IDEs**: Mesmo no plano grátis, é possível trabalhar sincronamente com o Overleaf e seu editor local de preferência (ver seção anterior).
    - **Rich Text**: O usuário tem a opção de usar um editor na forma [WYSIWYG](https://en.wikipedia.org/wiki/WYSIWYG). Útil para editar tabelas e outros elementos visuais do seu texto.

## Dicas

- Mantenha a consistência na formatação e estilo ao longo do documento.
- Revise o documento para garantir que todas as seções estejam completas e bem estruturadas.
- Utilize ferramentas de revisão de texto para corrigir erros gramaticais e ortográficos.

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e enviar pull requests.

## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.
