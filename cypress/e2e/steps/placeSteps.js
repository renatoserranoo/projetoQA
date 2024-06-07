/// <reference types="cypress" />
import { Given, When, Then, And} from "cypress-cucumber-preprocessor/steps"

Given("que acesso o site", () => {
    cy.visit('https://www.ibge.gov.br/cidades-e-estados/')
})

When("eu informo a UF ou município {string}", (local) => {
        cy.get('#autoComplete').type(local)
})

And("clico em pesquisar", () => {
    cy.get('.busca-localidade').type('{enter}')
})

Then("exibe o local {string}", (texto) => {
    cy.get('.quick-facts-titulo > h1').contains(texto)
})

Then("exibe a área territorial {string}", (texto) => {
    cy.get('.resultados-padrao > :nth-child(1) > .indicador > .ind-value').contains(texto)
})

//Then("exibe a {string} de erro", (texto) => {
//    cy.get('[data-test="error"]').should('have.text',texto) 
//})