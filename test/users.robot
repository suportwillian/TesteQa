*** Settings ***
Resource    ../packge.resource

*** Test Cases ***
Cenário 1: Criar usuário com sucesso
    Dado que realizo um requisição POST para api https://reqres.in/ contendo json com os dados de cadastro do usuário
    Então o cadastro é realizado com sucesso

Cenário 2: Consultar usuário com sucesso
    Dado que realizo um requisição GET para api https://reqres.in/ contendo id do usuário
    Então a api retornar os dados do usuário com sucesso

Cenário 3: Editar usuário com sucesso
    Dado que realizo um requisição PUT para api https://reqres.in/ contendo json com os dados de edição do cadastro do usuário
    Então a edição é realizada com sucesso