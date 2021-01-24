import {When} from "cypress-cucumber-preprocessor/steps";
import buttonPage from "../Marc/Pageobjects/Button";

When('Klik op de button {string}', button => {
    buttonPage.getButton(button).click();
})