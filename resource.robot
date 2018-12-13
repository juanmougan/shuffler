*** Settings ***
Documentation     An example resource file
Library           SeleniumLibrary

*** Variables ***
${HOST}           localhost:3000
${INDEX URL}      http://${HOST}/
${BROWSER}        Chrome