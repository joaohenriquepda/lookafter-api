# LookAfter-API

## Ambiente de desenvolvimento 

O ambiente de desenvolvimento consta com suas dependências em containers do Docker. Caso precise instalar o docker na raíz do projeto já tem dois scripts de instalação do Docker e Docker compose para ambientes Linux.

Para utilizar o docker para executar o projeto basta executar o comando abaixo na raíz do projeto
```
$ docker-compose up
```
O Docker irá realizar o download de todas as dependências necessárias e ao final do processo o projeto estará disponível para acesso em **https://localhost:3000**

### Dependências 
- PostgreSQL 9.3

O projeto já está configurado para usar o banco, caso opte por usar o docker essa dependência já estará resolvida.


## Comandos úteis

### server local
Caso não queria usar o Docker para gerenciar as dependências do projeto e já tenha sua máquina configurada com Node e o Angular CLI, poderá usar o comando a seguir para colocar o sistema em funcionamento

```
$ rails server
```

Se tudo ocorrer conforme o esperado poderá acessar o projeto em **https://localhost:3000**


## Processo de deploy e CI/CD

 Atualmente o projeto não conta com integração contínua e deploy contínuo integrado, o processo ainda é manual. Segue abaixo as instruçõe para realizar o deploy no  servidor **HEROKU**. Para seguir com o deploy no heroku é preciso que a branch master do repositório esteja atualiza, caso positivo basta somente executar o comando a seguir

 ```
$ git push heroku master
```
O processo de deploy irá iniciar e várias mensagens de log vão aparecer na tela, caso não ocorra problemas irá ser notificado na tela que o deploy ocorreu sem problemas 


### Pontos de destaque sobre regra de negócios
Algumas das soluções apresentadas aqui foram desenvolvidas pensando na continuidade do desenvolvimento.

- O sistema gera um token de acesso (JWT) que é usado para verificar o usuário.
- A API para algumas consultas é necessário passar o token de acesso;

### Pontos de Melhoria

O projeto está em desenvolvimento e alguns pontos já foram desenvolvidos pensando na evolução futura.

- Versionamento da API
- Serialização dos dados de retorno;


## Links de acesso
 
 O projeto está hospedado no Heroku e pode ser acessado em 
 
https://lookafter-api.herokuapp.com/

O projeto ainda conta com frontend desenvolvido em Angular que deve está funcionando para que o sistema tenha as funções básicas realizadas.
o projeto do frontend está hospedado no firebase e pode ser acessado em https://lookafter-frontend.firebaseapp.com/landing


# Licença de Software

O projeto se encontra licenciado pela MIT License

**MIT License**

Copyright (c) 2020 João Henrique Pereira de Almeida 

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

