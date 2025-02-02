*** Settings ***
Resource    ../packge.resource

*** Test Cases ***
Cenário 1: Criar usuário com sucesso
    Dado que realizo um requisição POST para api https://reqres.in/ contendo json com os dados de cadastro do usuário
    Então o cadastro é realizado com sucesso