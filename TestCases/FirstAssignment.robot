*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.saucedemo.com
${header}   xpath://div[@class='login_logo']
${expectedText}     Swag Labs
${username}         id:user-name
${password}         id:password
${usernameText}        standard_user
${passwordText}        secret_sauce
${loginButton}      xpath:(//input[@id='login-button'])[1]
${keyName}          ENTER
${shoppingCartIcon}   id:shopping_cart_container

*** Test Cases ***
Verify Successful Login Screen
    open browser        ${url}       ${browser}
    element should contain      ${header}  ${expectedText}

Verify user is successfully logged in to application
    Enter username and password
    element should be visible    ${shoppingCartIcon}
    close browser

*** Keywords ***
Enter username and password
    input text      ${username}     ${usernametext}
    input text      ${password}     ${passwordtext}
    click button    ${LoginButton}