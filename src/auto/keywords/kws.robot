*** Settings ***
Documentation       Keywords referente a execução de testes

Library    SeleniumLibrary
Library    FakerLibrary

Resource            ../elements/locs.robot


*** Keywords ***

Dado que o usuário esteja no site
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window       
    Wait Until Element Is Visible    xpath=${HOME.USERNAME}
    Input Text                       xpath=${HOME.USERNAME}    text=Admin
    Input Text                       xpath=${HOME.PASSWORD}    text=admin123
    Click Button                     xpath=${HOME.BOTAOLOG}    
    Wait Until Element Is Visible    xpath=${MENU.MYINFO}
E clicar em “My Info”
    Click Element                    xpath=${MENU.MYINFO}    
    Wait Until Element Is Visible    xpath=${INPUT.FIRST_NAME}    
    Sleep     3s

E Realizar o preenchimento do campos com dados aleatórios

    ${NOME}              FakerLibrary.First Name
    Click Element        xpath=${INPUT.FIRST_NAME}
    Press Keys           xpath=${INPUT.FIRST_NAME}           SHIFT+HOME+${NOME}

    ${MIDDLE_NAME}       FakerLibrary.Last Name
    Click Element        xpath=${INPUT.MIDDLE_NAME}
    Press Keys           xpath=${INPUT.MIDDLE_NAME}          SHIFT+HOME+${MIDDLE_NAME}
    
    ${LAST_NAME}         FakerLibrary.Last Name
    Click Element        xpath=${INPUT.LAST_NAME}
    Press Keys           xpath=${INPUT.LAST_NAME}            SHIFT+HOME+DELETE
    Input Text           xpath=${INPUT.LAST_NAME}            ${LAST_NAME}

    ${NICK_NAME}         FakerLibrary.Color Name
    Click Element        xpath=${INPUT.NICK_NAME} 
    Press Keys           xpath=${INPUT.NICK_NAME}            SHIFT+HOME+${NICK_NAME}

    Click Element        xpath=${INPUT.EMPLOYEE_ID}
    Press Keys           xpath=${INPUT.EMPLOYEE_ID}          SHIFT+HOME+DELETE
    Input Text           xpath=${INPUT.EMPLOYEE_ID}          1455

    Click Element        xpath=${INPUT.OTHER_ID}
    Press Keys           xpath=${INPUT.OTHER_ID}             SHIFT+HOME+DELETE
    Input Text           xpath=${INPUT.OTHER_ID}             1137

    Click Element        xpath=${INPUT.DRIVER_LICENSE_NUMBER}
    Press Keys           xpath=${INPUT.DRIVER_LICENSE_NUMBER}             SHIFT+HOME+DELETE
    Input Text           xpath=${INPUT.DRIVER_LICENSE_NUMBER}             4071

    Press Keys           xpath=${CALENDAR.LICENSE_EXPIRE}    SHIFT+HOME+DELETE
    Input Text           xpath=${CALENDAR.LICENSE_EXPIRE}    2014-04-08    
    
    Click Element        xpath=${INPUT.SSN_NUMBER}
    Press Keys           xpath=${INPUT.SSN_NUMBER}           SHIFT+HOME+DELETE
    Input Text           xpath=${INPUT.SSN_NUMBER}           3369  

    Click Element        xpath=${INPUT.SIN_NUMBER} 
    Press Keys           xpath=${INPUT.SIN_NUMBER}           SHIFT+HOME+DELETE
    Input Text           xpath=${INPUT.SIN_NUMBER}           5879

    Press Keys           xpath=${CALENDAR.DATE_BIRTH}        SHIFT+HOME+DELETE
    Input Text           xpath=${CALENDAR.DATE_BIRTH}        1994-09-15

    Click Element        xpath=${BOTON.GENDER_MALE}

    Click Element        xpath=${INPUT.MILITARY_SERVICE}
    Press Keys           xpath=${INPUT.MILITARY_SERVICE}     SHIFT+HOME+DELETE
    Input Text           xpath=${INPUT.MILITARY_SERVICE}     No

E Realizar a add de um anexo

    Click Element               xpath=${BOTON.ADD}
    Scroll Element Into View    xpath=${BOTON.BROWSE}
    Choose File                 xpath=${INPUT.FILE_INPUT}  ${EXECDIR}${/}src${/}image${/}img.png
    Sleep    2

Quando clicar em “Save” de cada etapa
    
    Click Element               xpath=${BOTON.SAVE_1}    
    Click Element               xpath=${BOTON.SAVE_2}    

Então o sistema deve apresentar a mensagem “Success Successfully”
    Wait Until Page Contains    Successfully Updated
    Capture Page Screenshot
    Sleep    5s