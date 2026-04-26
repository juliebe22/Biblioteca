# 📚 Sistema de Gestão de Biblioteca - UNIFSA

---

## 🛠️ Tecnologias Utilizadas

* **Linguagem:** Java
* **Interface Gráfica:** Java Swing (NetBeans IDE)
* **Banco de Dados:** PostgreSQL

---

## 🏛️ Estrutura do Banco de Dados


* **Tabelas:**
    * `usuarios`: Cadastro de leitores (id, nome, email).
    * `livros`: Acervo da biblioteca (id, titulo, autor).
    * `emprestimos`: Tabela associativa que registra as transações, relacionando usuários e livros.

> **Destaque Técnico:** Foram aplicadas restrições `UNIQUE` nas colunas de e-mail e títulos para garantir a consistência dos dados, além de consultas utilizando `INNER JOIN` e `ORDER BY`.

---

## 📸 Prints da Aplicação

### 🔐 Tela de Login
Acesso simplificado via e-mail para operadores e leitores.
<img width="508" height="303" alt="image" src="https://github.com/user-attachments/assets/21492396-c41d-45fb-8b30-ea6d4f78d2f4" />

### 🏠 Menu Principal
Painel centralizado para navegação entre as funções do sistema.
<img width="497" height="423" alt="image" src="https://github.com/user-attachments/assets/51b42be6-9261-4bbb-b12c-2e25470d2e8b" />


### 📊 Consulta com JOIN (Tela de Empréstimos)
Exibição de dados complexos unindo as tabelas de usuários e livros em uma única visão.
<img width="685" height="902" alt="image" src="https://github.com/user-attachments/assets/443b6b4f-475e-437e-ac0b-39145a853c16" />

---

## 🚀 Instruções de Execução

1. **Configuração do Banco:**
   * Crie um banco de dados no PostgreSQL chamado `biblioteca`.
   * Execute os scripts da pasta `/ddl` para criar as tabelas.
   * (Opcional) Execute os scripts da pasta `/dml` para dados iniciais.
2. **Execução do Java:**
   * Importe o projeto no NetBeans.
   * Adicione o driver `postgresql-42.x.x.jar` às bibliotecas.
   * Execute o arquivo `TelaLogin.java`.

---

**Desenvolvido por:** Júlia Beatriz Borges  
**Data:** 25 de Abril de 2026
