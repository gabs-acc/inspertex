# Template de Documentos Acadêmicos

Este repositório contém um template para a redação de documentos acadêmicos. O objetivo é fornecer uma estrutura básica que facilite a organização e formatação de trabalhos acadêmicos.

## Como Utilizar

### Uso Local

1. **Clone o Repositório**: Faça o clone deste repositório para o seu ambiente local.
    ```bash
    git clone https://github.com/gabs-acc/inspertex.git
    ```

2. **Estrutura do Template**: O template está organizado da seguinte forma:
    ```
    inspertex
    ├── 1-pre-textuais
    │  ├── abstract.tex
    │  ├── opcionais
    │  │  ├── agradecimentos.tex
    │  │  ├── dedicatoria.tex
    │  │  ├── epigrafe.tex
    │  │  ├── errata.tex
    │  │  ├── lista-de-abreviaturas-e-siglas.tex
    │  │  └── lista-de-simbolos.tex
    │  └── resumo.tex
    ├── 2-textuais
    │  ├── 01-introducao.tex
    │  ├── 02-estrutura-basica.tex
    │  ├── 03-elementos-basicos.tex
    │  ├── 04-citacoes.tex
    │  ├── 05-teste-glossario.tex
    │  ├── 06-conclusão.tex
    ├── 3-pos-textuais
    │  ├── anexos
    │  │  ├── 01-anexo-a.tex
    │  │  └── 02-anexo-b.tex
    │  ├── apendices
    │  │  ├── apendice-a.tex
    │  │  └── apendice-b.tex
    │  └── glossario.tex
    ├── tabelas
    │  └── tabela-exemplo.tex
    ├── insper-abntex2.cls
    ├── LICENSE
    ├── main.tex
    ├── README.md
    ├── referencias.bib
    ```

3. **Editando o Conteúdo**: Substitua o conteúdo dos arquivos `.tex` nas seções correspondentes com o texto do seu trabalho acadêmico.

4. **Compilando o Documento**: Utilize um compilador XeTeX ou LuaLaTeX para gerar o documento final em PDF. Por exemplo, no terminal:
    ```bash
    xelatex main.tex
    ```
    ou
    ```bash
    lualatex main.tex
    ```

5. **Usando IDEs**: 
    - **VS Code**: Instale a extensão LaTeX Workshop. Abra o arquivo `main.tex` e utilize os comandos da extensão para compilar o documento.
    - **TeXstudio**: Abra o arquivo `main.tex` e selecione XeLaTeX ou LuaLaTeX como o compilador. Em seguida, compile o documento.
    - **Overleaf**: Veja a seção abaixo.

6. **Referências**: Adicione suas referências no arquivo `references.bib` no formato BibTeX.

### Uso no Overleaf

1. **Importar Projeto**: Faça o upload dos arquivos do repositório para um novo projeto no Overleaf.

2. **Estrutura do Template**: A estrutura do template será a mesma descrita acima.

3. **Editando o Conteúdo**: Substitua o conteúdo dos arquivos `.tex` nas seções correspondentes com o texto do seu trabalho acadêmico.

4. **Compilando o Documento**: No Overleaf, selecione XeLaTeX ou LuaLaTeX como o compilador e clique em "Recompile" para gerar o PDF.

5. **Referências**: Adicione suas referências no arquivo `references.bib` no formato BibTeX.

## Dicas

- Mantenha a consistência na formatação e estilo ao longo do documento.
- Revise o documento para garantir que todas as seções estejam completas e bem estruturadas.
- Utilize ferramentas de revisão de texto para corrigir erros gramaticais e ortográficos.

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e enviar pull requests.

## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.
