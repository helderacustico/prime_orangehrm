*** Settings ***
Documentation        Mapeamento de elementos

*** Variables ***

&{HOME}
...    USERNAME=//input[@name='username']
...    PASSWORD=//input[@name='password']
...    BOTAOLOG=//button[@type='submit']

&{MENU}
...    MYINFO=//span[contains(.,'My Info')]

&{INPUT}
...    FIRST_NAME=//input[@name='firstName']
...    MIDDLE_NAME=//input[@name='middleName']
...    LAST_NAME=//input[@name='lastName']
...    NICK_NAME=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div[2]/div/div/div[2]/input
...    EMPLOYEE_ID=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[2]/div[1]/div[1]/div/div[2]/input
...    OTHER_ID=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[2]/div[1]/div[2]/div/div[2]/input
...    DRIVER_LICENSE_NUMBER=/html[1]/body[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/div[2]/div[1]/div[1]/div[2]/input[1]
...    SSN_NUMBER=/html[1]/body[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[2]/div[3]/div[1]/div[1]/div[2]/input[1]
...    SIN_NUMBER=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[2]/div[3]/div[2]/div/div[2]/input
...    MILITARY_SERVICE=//html[1]/body[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[4]/div[1]/div[1]/div[1]/div[2]/input[1]    
...    FILE_INPUT=//input[(@class="oxd-file-input")]



&{CALENDAR}    
...    LICENSE_EXPIRE=(//input[@placeholder='yyyy-mm-dd'])[1]
...    DATE_BIRTH=(//input[@placeholder='yyyy-mm-dd'])[2]

&{BOTON}
...    GENDER_MALE=(//span[contains(@class,'oxd-radio-input oxd-radio-input--active --label-right oxd-radio-input')])[1]
...    ADD=//button[@type='button'][contains(.,'Add')]
...    BROWSE=//div[(@class="oxd-file-button")][contains(.,'Browse')]    
...    SAVE_1=(//button[@type='submit'])[1]
...    SAVE_2=(//button[@type='submit'])[2]


