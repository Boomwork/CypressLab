import {Given, Then, When} from "cypress-cucumber-preprocessor/steps"

Given('Open de website {string}', baseUrl => {
    cy.openUrl(baseUrl)
})

When('Vul {string} in de textbox search _query_top', artikel => {
    cy.get('#search_query_top').click();
    cy.get('#search_query_top').type(artikel);
})

When('Klik op de button {string}', button => {
    cy.klikopButton(button)
})

Then('De tekst {string} wordt getoond', zoekContent => {
    cy.get('.lighter').should('contain', zoekContent)
})

Then('De tekst showing {string} items wordt getoond', aantalItems => {
    cy.get('.top-pagination-content > .product-count').should('contain', aantalItems)
})
