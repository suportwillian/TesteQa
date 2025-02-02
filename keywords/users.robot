*** Settings ***
Resource    ../packge.resource


*** Keywords ***
Dado que realizo um requisição POST para api https://reqres.in/ contendo json com os dados de cadastro do usuário
    Set Test Variable    ${endpoint}    api/users
    Set Test Variable    ${json}    {"name": "morpheus", "job": "leader"}
    Realizar requisição POST    ${endpoint}    ${json}    201
Então o cadastro é realizado com sucesso
    Status Should Be     201    ${resposta}