import {Given} from "cypress-cucumber-preprocessor/steps"

Given('Open de website {string}', baseUrl => {
    describe('Inloggen', () => {
        it('Inloggen van verkeerde user', () => {
            const email = 'Test123@atos.net'
            const password = 'Test123'

            cy.visit(baseUrl);
            cy.contains('Sign in').click();

            cy.get('data-validate=isEmail').click();
            cy.get('data-validate=isEmail').type(email);
            cy.get('data-validate=isPasswd').type(password);
            cy.get('id=SubmitLogin').click();

            // cy.contains('Authentication failed.');
            cy.location('pathname').should('equal', '/index.php?controller=authentication');
            cy.contains('class=alert alert-danger', 'Authentication failed.');
        })
    });
});

