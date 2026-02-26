Projeto: Sistema de Gerenciamento de Biblioteca

Descrição Geral do Projeto

O presente projeto tem como objetivo o desenvolvimento de um Sistema de Gerenciamento de Biblioteca, aplicando os conceitos de Programação Orientada a Objetos (POO) e Banco de Dados (BD).

O sistema será responsável por organizar e controlar o acervo literário de uma biblioteca fictícia, permitindo:

— Cadastro e gerenciamento de livros
— Organização por gênero literário e número de páginas
— Controle de empréstimos
— Verificação de disponibilidade dos livros
— Identificação de usuários e bibliotecas por meio de IDs
— Registro de empréstimos e devoluções

A escolha do tema deve-se à afinidade do grupo com manipulação de dados e modelagem de sistemas, possibilitando aplicar conceitos como:
— Encapsulamento
— Herança
— Polimorfismo
— Modelagem de Entidades e Relacionamentos
— Normalização de Banco de Dados
— Chaves primárias e estrangeiras

Requisitos do Sistema

Requisitos Funcionais

O sistema deverá:
— Cadastrar livros.
— Classificar livros por:
— Gênero
— Número de páginas
— Informar se o livro está:
— Disponível
— Emprestado
— Cadastrar usuários.
— Gerar ID único para:
— Usuários
— Livros
— Bibliotecas
— Registrar empréstimos e devoluções.
— Permitir consulta de livros por gênero.
— Permitir consulta de livros por faixa de páginas.
Entidades do Sistema (Modelagem Conceitual)

Livro
Atributos:
— id_livro (PK)
— titulo
— autor
— genero
— numero_paginas
— status (disponível / emprestado)
— id_biblioteca (FK)

Usuário
Atributos:
— id_usuario (PK)
— nome
— cpf
— email
— telefone
— data_cadastro

Biblioteca
Atributos:
— id_biblioteca (PK)
— nome
— endereco
— telefone

Empréstimo
Atributos:
— id_emprestimo (PK)
— id_usuario (FK)
— id_livro (FK)
— data_emprestimo
— data_prevista_devolucao
— data_devolucao
— status_emprestimo

Relacionamentos
— Uma Biblioteca possui vários Livros.
— Um Usuário pode realizar vários Empréstimos.
— Um Livro pode estar vinculado a vários empréstimos ao longo do tempo.
— Um Empréstimo pertence a um único usuário e a um único livro.

Modelo Orientado a Objetos (POO)

Sugestão de Classes:

Classe Livro
— Atributos privados.
Métodos:
— verificarDisponibilidade()
— alterarStatus()
— exibirInformacoes()

Classe Usuario
Métodos:
— realizarEmprestimo()
— devolverLivro()

Classe Biblioteca
Métodos:
— adicionarLivro()
— removerLivro()
— listarLivros()

Classe Emprestimo
Métodos:
— registrarEmprestimo()
— registrarDevolucao()

Regras de Negócio
— Um livro só pode ser emprestado se estiver disponível.
— Um usuário pode ter limite máximo de livros emprestados (exemplo: 3).
— O status do livro deve ser atualizado automaticamente ao registrar empréstimo ou devolução.
— IDs devem ser únicos e preferencialmente auto incrementais.
— A exclusão de um usuário não deve apagar o histórico de empréstimos.

Diagrama ER (Resumo Textual)

Biblioteca (1) — (N) Livro
Usuário (1) — (N) Empréstimo
Livro (1) — (N) Empréstimo
