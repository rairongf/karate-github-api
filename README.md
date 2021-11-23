# karate-github-api

Projeto criado para a disciplina de Qualidade de Software - S206.

Instituto Nacional de Telecomunicações - INATEL.

## Iniciar o repositório com o Arquétipo do Karate
```powershell
mvn archetype:generate "-DarchetypeGroupId=com.intuit.karate" "-DarchetypeArtifactId=karate-archetype" "-DarchetypeVersion=1.0.1" "-DgroupId=github-api" "-DartifactId=github-api"
```

## Executar os testes
```powershell
Executar um teste a partir do Runner ou suíte:
mvn test –Dtest=Runner

Executar testes separados por tags:
mvn test -Dkarate.options="--tags @tag"

Para ignorar alguma tag:
mvn test -Dkarate.options="--tags ~@tag" 
```