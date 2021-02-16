import {When} from "cypress-cucumber-preprocessor/steps";
import buttonPage from "../Marc/Pageobjects/Button";
import tekstboxPage from "../Marc/Pageobjects/Tekstbox";

When("Schrijf de users en passwords weg die gebruikt worden om mee in te loggen", function () {
    const testCases = require('../../fixtures/inloggen')

    describe('Wegschrijven data', function () {

        testCases.forEach((testDatarow) => {
            const data = {
                button1: testDatarow.button1,
                username: testDatarow.username,
                password: testDatarow.password,
                textbox1: testDatarow.textbox1,
                textbox2: testDatarow.textbox2,
                button2: testDatarow.button2,
                errortekst: testDatarow.errortekst
            }

            cy.visit('baseUrl');
            buttonPage.getButton(data.button1).click();
            tekstboxPage.fillTekstinTextbox(data.textbox1).type(data.username);
            tekstboxPage.fillTekstinTextbox(data.textbox2).type(data.password);
            buttonPage.getButton(data.button2).click();
            tekstboxPage.getparagraphTekst(data.errortekst).should('contain', data.errortekst);
            cy.writeFile('./cypress/fixtures/testData.json',
                {
                    button1: data.button1,
                    username: data.username,
                    password: data.password,
                    textbox1: data.textbox1,
                    textbox2: data.textbox2,
                    button2: data.button2,
                    errortekst: data.errortekst
                })
        });
    });
});
