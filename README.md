# Sistema de Pedidos (Spring Boot API)

## Contexto do Projeto

Este projeto foi desenvolvido como parte da disciplina de **Programação Orientada a Objetos (POO)**.

O objetivo principal foi a aplicação prática de conceitos fundamentais da linguagem Java e do framework Spring, como Injeção de Dependência, Inversão de Controle e Mapeamento Objeto-Relacional (ORM).

### Notas sobre a Implementação Acadêmica

Como o foco da disciplina era a estrutura de classes e objetos (POO), algumas decisões arquiteturais foram simplificadas em relação a um cenário de produção:

1.  **Simplificação de Camadas:** A arquitetura omite intencionalmente a camada de **Service**. O *Controller* comunica-se diretamente com o *Repository* para realizar as operações de persistência.
2.  **Modelagem de Banco:** A relação entre `Pedido` e `Produto` foi implementada como **Many-to-Many** direta, sem a utilização de uma entidade associativa intermediária com atributos históricos.

## Tecnologias Utilizadas

* **Java:** Linguagem principal.
* **Spring Boot:** Framework para criação da API REST.
* **Spring Data JPA:** Para persistência de dados.
* **Maven:** Gerenciamento de dependências.
* **MySQL:** Banco de dados relacional.

## Arquitetura

A aplicação segue uma estrutura simplificada focada em REST e Persistência:

* **Resource/Controller:** Gerencia as requisições HTTP (GET, POST).
* **Repository:** Interface que estende `JpaRepository` para operações de banco de dados.
* **Domain:** As classes de domínio (Entidades) mapeadas com JPA.

## Execução

Para rodar este projeto localmente, você precisará ter o JDK e o Maven instalados, além de uma instância do MySQL rodando.

### Configuração do Banco de Dados
No arquivo `src/main/resources/application.properties`, configure as credenciais do seu banco MySQL local:

properties
spring.datasource.url=jdbc:mysql://localhost:3306/nome_do_seu_banco
spring.datasource.username=seu_usuario
spring.datasource.password=sua_senha
spring.jpa.hibernate.ddl-auto=update
