*** Settings ***
Resource    ../packge.resource

*** Test Cases ***
Cenário 1: Criar usuário com sucesso
    Dado que realizo uma requisição POST para api https://reqres.in/ contendo um json com os dados de cadastro do usuário
    Então o cadastro é realizado com sucesso

Cenário 2: Consultar usuário com sucesso
    Dado que realizo uma requisição GET para api https://reqres.in/ contendo o id do usuário
    Então a api retornar os dados do usuário com sucesso

Cenário 3: Editar usuário com sucesso
    Dado que realizo uma requisição PUT para api https://reqres.in/ contendo json com os dados de edição do usuário
    Então a edição é realizada com sucesso

Cenário 4: Excluir usuário com sucesso
    Dado que realizo uma requisição DELETE para api https://reqres.in/ contendo o id do usuário
    Então o usuário é excluído com sucesso