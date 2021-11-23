@github
Feature: Executar testes funcionais nas APIs do GitHub (api.github.com)

Background: Executa antes de cada teste
    * def url_base = "https://api.github.com"

Scenario: Verificar o retorno com sucesso da API /users/chrislima com dados VÁLIDOS de requisição (request)
    Given url url_base
    And path '/users/chrislima'
    When method get
    Then status 200

Scenario: Verificar o retorno com sucesso da API /users/chrislima com dados INVÁLIDOS de requisição (request)
    Given url url_base
    And path '/users/chrislima/'
    When method get
    Then status 404

Scenario: Verificar o retorno com sucesso da API /users/chrislima com dados VÁLIDOS de requisição (request) e garantir que o retorno tem o JSON esperado (name e bio)
    Given url url_base
    And path '/users/chrislima'
    When method get
    Then status 200
    And  match response.name == "Chris Lima"
    And  match response.bio == "Professor at Inatel"

Scenario: Verificar o retorno com sucesso da API /users/chrislima com dados VÁLIDOS de requisição (request) e garantir que o retorno tem o JSON inesperado (name e bio)
    Given url url_base
    And path '/users/chrislima'
    When method get
    Then status 200
    And  match response.name != "Lima Chris"
    And  match response.bio != "Professor at Unifei"

Scenario: Verificar o retorno com sucesso da API /users/chrislima/repos com dados VÁLIDOS de request e garantir que o retorno tem o JSON esperado (name) e utilizar este retorno para um novo teste.
    Given url url_base
    And path '/users/chrislima/repos'
    And method get
    And status 200
    And def firstRepoName = $[0].name
    And url url_base
    And path 'repos/chrislima/', firstRepoName
    When method get
    Then status 200
    And response.name == "s206"

Scenario: Verificar o retorno com sucesso da API /users/chrislima/followers com dados VÁLIDOS de request e garantir que o retorno tem o JSON esperado (login).
    Given url url_base
    And path '/users/chrislima/followers'
    And method get
    And status 200
    And def firstFollowerLogin = $[0].login
    And match firstFollowerLogin == "danielpontello"