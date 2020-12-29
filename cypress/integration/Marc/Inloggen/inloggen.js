import {Given, Then, When} from "cypress-cucumber-preprocessor/steps"

Given('Open de website', () => {
    cy.visit('http://automationpractice.com/index.php')
})

When('Vul dresses in de textbox search _query_top', () => {
    cy.get('#search_query_top').click();
    cy.get('#search_query_top').type('dresses');
})

When('Klik op de button submit_search', () => {
    cy.get('.button-search').click();
    cy.get('#searchbox').submit();
})
Then(/^De tekst dresses wordt getoond$/, function () {
    cy.get('.lighter').should('contain', 'dresses')
});

Then(/^De tekst showing (\d+) \- (\d+) of (\d+) items wordt getoond$/, function () {
    cy.get('.top-pagination-content > .product-count').should('contain', 'Showing 1 - 7 of 7 items')
});