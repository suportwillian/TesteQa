*** Settings ***
Resource    ../packge.resource

*** Variables ***
${url}    https://reqres.in

*** Keywords ***

Realizar requisição POST
    [Arguments]    ${endpoint}    ${json}    ${status}
    ${resposta}=    POST    ${url}/${endpoint}    ${json}    ${status}
    Set Global Variable    ${resposta}

Realizar requisição GET por ID
    [Arguments]    ${endpoint}    ${parametro}
    ${resposta}=    GET    ${url}/${endpoint}/${parametro}
    Set Global Variable    ${resposta}

Realizar requisição PUT
    [Arguments]    ${endpoint}    ${id}    ${json}    ${status}
    ${resposta}=    PUT    ${url}/${endpoint}/${id}    ${json}    ${status}
    Set Global Variable    ${resposta}