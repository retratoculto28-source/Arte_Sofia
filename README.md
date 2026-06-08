# Documentação do Projeto: A Arte de Sofia

## 1. Introdução e Objetivo do Projeto

O projeto **"A Arte de Sofia"** consiste no desenvolvimento de um website pessoal e portfólio digital, desenhado para expor o trabalho e os serviços de uma designer júnior. O objetivo central deste projeto foi criar uma plataforma estática, rápida e visualmente apelativa, baseada numa estética de *scrapbook* digital (diário gráfico), combinando tipografias serifadas, texturas de papel e elementos gráficos personalizados.

## 2. Tecnologias Utilizadas

O desenvolvimento da plataforma foi pautado pela utilização exclusiva de tecnologias web base (front-end estático), garantindo alta performance, compatibilidade e facilidade de manutenção sem dependência de ambientes de servidor (back-end):
- **HTML5:** Para a semântica e estruturação do conteúdo de todas as páginas.
- **CSS3:** Para a estilização global, animações, transições e implementação de um sistema de cores variável (suporte nativo a *Light/Dark Mode*), incluindo o uso de texturas de fundo via `background-image` em ambos os modos.
- **JavaScript (Vanilla JS):** Para a lógica de negócio no front-end, incluindo o carregamento dinâmico e categorização hierárquica do portfólio, controlo do *lightbox* da galeria e persistência do tema selecionado no *LocalStorage*.

## 3. Arquitetura e Estrutura de Ficheiros

A arquitetura do projeto foi estruturada visando a modularidade e a clareza, encontrando-se dividida nas seguintes diretorias:

* **`/html/`**: Contém as quatro páginas estruturais do website:
  * `index.html`: Página inicial com apresentação pessoal e fotografia interativa com ligação direta à página de serviços.
  * `portfolio.html`: Página dedicada à visualização dinâmica e hierárquica da galeria de trabalhos, organizada por Categoria, Subcategoria e Projeto.
  * `services.html`: Apresentação das áreas de especialidade (Design, Fotografia, Copywriting e Revisão) e das ferramentas utilizadas, com ícones visuais dos programas.
  * `contact.html`: Disponibilização de contactos diretos e formulário integrado.
* **`/css/`**: Contém o ficheiro `style.css`, que centraliza toda a configuração visual, animações, responsividade (Media Queries) e o sistema de temas Claro/Escuro através de variáveis CSS (`--var`).
* **`/js/`**: Contém o ficheiro único `script.js`, que integra a base de dados do portfólio em formato JSON e a lógica interativa completa do site (galeria, lightbox, toggle de tema, painel Spotify).
* **`/Porfólio/`**: Diretoria que armazena os ficheiros de imagem (trabalhos finais), organizados numa hierarquia estrita de *Categoria > Subcategoria > Projeto*.
* **`/fontes/`**: Tipografias locais utilizadas no projeto (Amoria, Lora, Crimson Pro, Playfair Display, Acros), importadas via `@font-face`.
* **Pastas de Ativos (Assets):** Diretorias como `/serviços/`, `/homepage/` e `/images/` que guardam ícones e recursos visuais independentes do portfólio.

## 4. Funcionalidades Implementadas

O website integra diversas funcionalidades com foco na usabilidade e na experiência do utilizador (UX):

1. **Gestão de Tema (Modo Claro/Escuro):** Implementação de um botão deslizante (*toggle* de estilo telemóvel) que alterna as variáveis CSS, incluindo cores, texturas de fundo e sombras. A preferência do utilizador é gravada e recuperada automaticamente através da Web Storage API (`localStorage`). As polaroids mantêm-se em fundo branco em ambos os modos, para preservar a estética de fotografia impressa.
2. **Geração Dinâmica de Portfólio:** Através de JavaScript, as imagens são processadas e agrupadas hierarquicamente na página (Categoria → Subcategoria → Projeto). A ordem de exibição das categorias segue a sequência: *Design*, *Ilustração*, *Fotografia*. Imagens do mesmo projeto ou subcategoria partilham a mesma grelha, aparecendo lado a lado.
3. **Galeria Interativa (Lightbox):** Visualização focada dos trabalhos num *pop-up* responsivo com navegação lateral (setas) e legendas contextuais. Para a categoria Fotografia, os títulos são omitidos deliberadamente, exibindo apenas a informação de subcategoria.
4. **Interatividade na Página Inicial:** A fotografia da autora funciona como elemento clicável, redirecionando o utilizador para a página de Serviços, reforçando a navegação intuitiva.
5. **Interface Responsiva:** O layout adapta-se a diferentes resoluções, ajustando grelhas e cabeçalhos para uma experiência otimizada em dispositivos móveis (telemóveis e tablets).
6. **Integração Externa de Multimédia:** Incorporação nativa de um *iframe* do Spotify com as permissões `autoplay`, `encrypted-media`, `fullscreen` e `picture-in-picture`, através de um painel lateral retrátil presente em todas as páginas.

## 5. Otimizações e Decisões de Design

Durante o ciclo de desenvolvimento, foram adotadas medidas com vista a otimizar a performance e a garantir a coesão do design:

- **Agrupamento de Scripts:** A base de dados estruturada em JSON (previamente num ficheiro separado `portfolio-data.js`) foi fundida no ficheiro principal `script.js`, minimizando as requisições HTTP e simplificando a organização do projeto.
- **Tipografia 100% Local:** Todas as fontes utilizadas no projeto (*Amoria*, *Lora*, *Crimson Pro*, *Playfair Display*, *Acros*) estão alojadas localmente na pasta `/fontes/`, importadas via regra `@font-face`. Esta decisão elimina a dependência de redes de entrega externas (como Google Fonts), garantindo que a estética original é preservada em qualquer ambiente, mesmo sem acesso à internet.
- **Modo Escuro com Profundidade Visual:** O modo escuro foi desenhado para replicar a riqueza estética do modo claro. Inclui texturas de papel em camadas (`dark-leather`), linhas horizontais subtis simulando papel pautado, brilho difuso nos títulos de categoria, sombras profundas nos *cards*, e fita-cola em azul translúcido. As polaroids mantêm o fundo branco em ambos os modos.
- **Elementos Visuais Identitários do Scrapbook:** Para manter a premissa de um *scrapbook*, foram implementados: formato "Polaroid" com rotação alternada, sombras profundas em papel sobreposto (`box-shadow`), alfinetes de pressão nos blocos de texto (`::before`), fita-cola adesiva translúcida (`tape`) e bordas tracejadas nos *cards* e menus. Estes elementos são consistentes entre o modo claro e o modo escuro.
- **Gestão de Imagens Especiais:** A imagem de marca do projeto "Bloody Ruby" utiliza um estilo especial (`specialStyle: "contain"`) que impede o corte da imagem, preservando as proporções originais do trabalho gráfico numa polaroid de tamanho reduzido.
