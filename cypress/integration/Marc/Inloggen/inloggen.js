import {Given, Then, When} from "cypress-cucumber-preprocessor/steps"

Given('Open de website {string}', baseUrl => {
    cy.openUrl(baseUrl)
})

When('Klik op de button {string}', button => {
    cy.klikopButton(button)
})

When('Login op de site met email {string} en password {string}', (email, password) => {
    cy.typeLogin({email: email, password: password})
})

Then('De tekst showing {string} wordt getoond in de balk {string}', (tekst, locatie) => {
    cy.get(locatie).should('contain', tekst)
})

Then('De error tekst showing {string} wordt getoond op de locatie {string}', (tekst, locatie) => {
    cy.get(locatie).should('contain', tekst)
})