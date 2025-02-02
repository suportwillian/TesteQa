*** Settings ***
Resource    ../packge.resource

*** Variables ***
${url}    https://reqres.in

*** Keywords ***

Realizar requisição POST
    [Arguments]    ${endpoint}    ${json}    ${status}
    ${resposta}=    POST    ${url}/${endpoint}    ${json}    ${status}
    Set Global Variable    ${resposta}