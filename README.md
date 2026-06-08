# Documentação do Projeto: A Arte de Sofia

## 1. Introdução e Objetivo do Projeto

O projeto **"A Arte de Sofia"** consiste no desenvolvimento de um website pessoal e portfólio digital, desenhado para expor o trabalho e os serviços de uma designer júnior. O objetivo central deste projeto foi criar uma plataforma estática, rápida e visualmente apelativa, baseada numa estética de *scrapbook* digital (diário gráfico), combinando tipografias serifadas, texturas de papel e elementos gráficos personalizados.

## 2. Tecnologias Utilizadas

O desenvolvimento da plataforma foi pautado pela utilização exclusiva de tecnologias web base (front-end estático), garantindo alta performance, compatibilidade e facilidade de manutenção sem dependência de ambientes de servidor (back-end):
- **HTML5:** Para a semântica e estruturação do conteúdo de todas as páginas.
- **CSS3:** Para a estilização global, animações, transições e implementação de um sistema de cores variável (suporte nativo a *Light/Dark Mode*).
- **JavaScript (Vanilla JS):** Para a lógica de negócio no front-end, incluindo o carregamento dinâmico e categorização do portfólio, controlo do *lightbox* da galeria e persistência do tema selecionado no *LocalStorage*.

## 3. Arquitetura e Estrutura de Ficheiros

A arquitetura do projeto foi estruturada visando a modularidade e a clareza, encontrando-se dividida nas seguintes diretorias:

* **`/html/`**: Contém as quatro páginas estruturais do website:
  * `index.html`: Página inicial com apresentação e acesso rápido aos serviços.
  * `portfolio.html`: Página dedicada à visualização dinâmica da galeria de trabalhos.
  * `services.html`: Apresentação das áreas de especialidade (Design, Fotografia, Copywriting e Revisão) e das ferramentas utilizadas.
  * `contact.html`: Disponibilização de contactos diretos e formulário integrado.
* **`/css/`**: Contém o ficheiro `style.css`, que centraliza toda a configuração visual e de responsividade (Media Queries).
* **`/js/`**: Contém o ficheiro `script.js`, responsável pela injeção dos dados em formato JSON nativo e pela gestão do comportamento interativo do sistema.
* **`/Porfólio/`**: Diretoria que armazena os ficheiros de imagem (trabalhos finais), organizados numa hierarquia estrita de *Categoria > Subcategoria*.
* **Pastas de Ativos (Assets):** Diretorias como `/serviços/`, `/homepage/` e `/images/` que guardam ícones e recursos visuais independentes do portfólio.

## 4. Funcionalidades Implementadas

O website integra diversas funcionalidades com foco na usabilidade e na experiência do utilizador (UX):

1. **Gestão de Tema (Modo Claro/Escuro):** Implementação de um botão deslizante interativo que alterna as variáveis CSS (Cores e Texturas de fundo). A preferência do utilizador é gravada e recuperada automaticamente através da Web Storage API (`localStorage`).
2. **Geração Dinâmica de Portfólio:** Através de JavaScript, as imagens alojadas na pasta do portfólio são processadas e agrupadas dinamicamente na página consoante a sua taxonomia (Categoria e Subcategoria), reduzindo a duplicação de código HTML.
3. **Galeria Interativa (Lightbox):** Visualização focada dos trabalhos fotográficos e de design num *pop-up* responsivo. Inclui capacidades de navegação lateral (setas) e carregamento contextual de legendas ou detalhes técnicos associados ao projeto em ecrã.
4. **Interface Responsiva:** O layout foi adaptado para diferentes resoluções, alterando a estrutura da grelha de serviços e reajustando os cabeçalhos para uma visualização otimizada em dispositivos móveis (telemóveis e tablets).
5. **Integração Externa de Multimédia:** Incorporação nativa de um *iframe* do Spotify através de um painel lateral retrátil, com vista a oferecer uma experiência sensorial (auditiva e visual) complementar e alinhada ao *storytelling* da criadora.

## 5. Otimizações e Decisões de Design

Durante o ciclo de desenvolvimento, foram adotadas medidas com vista a otimizar a performance e a garantir a coesão do design:
- **Agrupamento de Scripts:** A base de dados estruturada em JSON (previamente separada) foi fundida no `script.js` de forma a minimizar as requisições HTTP e otimizar o tempo de carregamento da página.
- **Tipografia Local:** As fontes utilizadas no projeto (ex: *Crimson Pro*, *Caveat*) foram alojadas localmente na pasta `/fontes/` e importadas via regra `@font-face`, garantindo assim que a estética original é preservada independentemente do acesso a bibliotecas externas.
- **Elementos Visuais Identitários:** Para manter a premissa de um *scrapbook*, foram implementadas bordas características como formato "Polaroid", sombras profundas em papel sobreposto (`box-shadow`) e componentes com ilusão de fita-cola fixadora, mantendo a consistência mesmo sob paletas escuras.
