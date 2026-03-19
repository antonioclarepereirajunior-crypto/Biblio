# Sistema de Gerenciamento de Biblioteca

## Descrição do Projeto

O presente projeto tem como objetivo o desenvolvimento de um Sistema de Gerenciamento de Biblioteca, utilizando conceitos de Programação Orientada a Objetos (POO) e Banco de Dados.

O sistema foi projetado para simular o funcionamento de uma biblioteca, permitindo o controle de livros, usuários e empréstimos, garantindo organização e integridade das informações.

---

## Objetivo

Desenvolver uma aplicação capaz de:

* Gerenciar o acervo de livros
* Controlar empréstimos e devoluções
* Organizar usuários e bibliotecas
* Aplicar boas práticas de modelagem de sistemas e banco de dados

---

## Funcionalidades do Sistema

O sistema contempla as seguintes funcionalidades:

* Cadastro de livros
* Classificação por gênero literário
* Organização por número de páginas
* Controle de disponibilidade dos livros
* Cadastro de usuários
* Registro de empréstimos e devoluções
* Consulta de livros por gênero
* Consulta por faixa de páginas
* Identificação única de registros (IDs)

---

## Modelagem do Sistema

O sistema foi modelado com base em quatro entidades principais:

### Biblioteca

Representa o local onde os livros estão armazenados.
Cada biblioteca possui um conjunto de livros associados.

---

### Usuário

Representa as pessoas que utilizam o sistema para realizar empréstimos.
Cada usuário possui informações únicas que permitem sua identificação no sistema.

---

### Livro

Representa os itens do acervo da biblioteca.
Cada livro contém informações como título, autor, gênero e quantidade de páginas, além de um status que indica sua disponibilidade.

---

### Empréstimo

Representa o vínculo entre um usuário e um livro em um determinado período.
Permite registrar quando o livro foi emprestado, quando deve ser devolvido e quando foi efetivamente devolvido.

---

## Relacionamentos

O sistema segue a seguinte estrutura de relacionamentos:

* Uma biblioteca pode possuir vários livros
* Um usuário pode realizar vários empréstimos
* Um livro pode participar de vários empréstimos ao longo do tempo
* Cada empréstimo está associado a um único usuário e a um único livro

Essa organização garante consistência e evita redundância de dados.

---

## Regras de Negócio

O sistema implementa regras importantes para garantir seu funcionamento correto:

* Um livro só pode ser emprestado se estiver disponível
* O status do livro deve ser atualizado automaticamente ao realizar empréstimo ou devolução
* Um usuário pode ter um limite máximo de livros emprestados simultaneamente
* Cada registro possui um identificador único
* O histórico de empréstimos deve ser preservado, mesmo em caso de remoção de usuários

---

## Programação Orientada a Objetos

O sistema foi estruturado com base nos princípios da POO:

### Encapsulamento

Os atributos das classes são privados, sendo acessados por meio de métodos, garantindo segurança e controle dos dados.

### Organização em Classes

O sistema é dividido em classes que representam entidades do mundo real:

* Livro
* Usuário
* Biblioteca
* Empréstimo

### Responsabilidade das Classes

Cada classe possui responsabilidades específicas, promovendo organização e reutilização de código.

---

## Banco de Dados

O banco de dados foi projetado utilizando o modelo relacional, com:

* Definição de chaves primárias para identificação única
* Uso de chaves estrangeiras para garantir integridade referencial
* Aplicação de restrições para validação de dados
* Estrutura normalizada para evitar redundâncias

---

## Diagrama Entidade-Relacionamento (Resumo)

O modelo do sistema pode ser representado da seguinte forma:

* Biblioteca relaciona-se com Livro (1 para N)
* Usuário relaciona-se com Empréstimo (1 para N)
* Livro relaciona-se com Empréstimo (1 para N)

Esse modelo garante um fluxo consistente das operações do sistema.

---

## Tecnologias Utilizadas

* Linguagem Java
* Banco de Dados PostgreSQL
* Conceitos de Programação Orientada a Objetos
* Modelagem de Banco de Dados Relacional

---

## Considerações Finais

Este projeto permitiu a aplicação prática de conceitos fundamentais de desenvolvimento de sistemas, integrando programação e banco de dados.

Além disso, contribuiu para o entendimento de modelagem de dados, organização de código e implementação de regras de negócio, fundamentais para sistemas reais.

---

## Autor

Projeto desenvolvido para fins acadêmicos.
