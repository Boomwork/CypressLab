// ***********************************************
// This example commands.js shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************
//
//
// -- This is a parent command --
// Cypress.Commands.add("login", (email, password) => { ... })
//
//
// -- This is a child command --
// Cypress.Commands.add("drag", { prevSubject: 'element'}, (subject, options) => { ... })
//
//
// -- This is a dual command --
// Cypress.Commands.add("dismiss", { prevSubject: 'optional'}, (subject, options) => { ... })
//
//
// -- This will overwrite an existing command --
// Cypress.Commands.overwrite("visit", (originalFn, url, options) => { ... })


// -- Open url --
Cypress.Commands.add("openUrl", (url) => {
    cy.visit('baseUrl')
})


// --  Inloggen --
Cypress.Commands.add("typeLogin", (user) => {
    cy.get('#email')
        .type(user.email)

    cy.get('#passwd')
        .type(user.password)
})

// -- Klik op button -- //
Cypress.Commands.add("klikopButton", (button) => {
    cy.get(button).click();
})