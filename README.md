# karate-github-api

Projeto criado para a disciplina de Qualidade de Software - S206.

Instituto Nacional de Telecomunicações - INATEL.

<!-- ## Iniciar o repositório com o Arquétipo do Karate
```powershell
mvn archetype:generate "-DarchetypeGroupId=com.intuit.karate" "-DarchetypeArtifactId=karate-archetype" "-DarchetypeVersion=1.0.1" "-DgroupId=github-api" "-DartifactId=github-api"
``` -->
## Ambiente de Desenvolvimento
- [Maven](https://maven.apache.org/)
- [Git (Bash)](https://gitforwindows.org/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [JDK (Java)](https://www.oracle.com/java/technologies/javase-downloads.html)
## Como executar os testes
```cmd
// Acessar o diretório do `pom.xml`:
cd github-api

// Executar um teste a partir do Runner:
mvn test –Dtest=ApiTestRunner
```

Após executar os testes, poderá encontrar o relatório HTML no diretório `target/karate-reports/karate-summary.html`.