*** Settings ***
Resource    ../packge.resource


*** Keywords ***
Dado que realizo uma requisição POST para api https://reqres.in/ contendo um json com os dados de cadastro do usuário
    Set Test Variable    ${endpoint}    api/users
    Set Test Variable    ${json}    {"name": "morpheus", "job": "leader"}
    Realizar requisição POST    ${endpoint}    ${json}    201
Então o cadastro é realizado com sucesso
    Status Should Be     201    ${resposta}

Dado que realizo uma requisição GET para api https://reqres.in/ contendo o id do usuário
    Set Test Variable    ${endpoint}    api/users
    Realizar requisição GET por ID    ${endpoint}    2
Então a api retornar os dados do usuário com sucesso
    Status Should Be     200    ${resposta}

Dado que realizo uma requisição PUT para api https://reqres.in/ contendo json com os dados de edição do usuário
    Set Test Variable    ${endpoint}    api/users
    Set Test Variable    ${json}    {"name": "morpheus", "job": "alter"}
    Realizar requisição PUT    ${endpoint}    2    ${json}    200
Então a edição é realizada com sucesso
    Status Should Be     200    ${resposta}

Dado que realizo uma requisição DELETE para api https://reqres.in/ contendo o id do usuário
    Set Test Variable    ${endpoint}    api/users
    Realizar requisição DELETE por ID   ${endpoint}    2
Então o usuário é excluído com sucesso
    Status Should Be     204    ${resposta}