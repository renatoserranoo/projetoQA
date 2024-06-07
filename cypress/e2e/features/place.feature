#language: pt

Funcionalidade: Cidades e Estados IBGE
    Descrição: aqui testamos a Aba Cidades e Estados

Contexto:
        Dado que acesso o site

Esquema do Cenário: Pesquisa de Cidades e Estados
    Quando eu informo a UF ou município <lugar>
    E clico em pesquisar
    Então exibe o local <mensagem>
    Então exibe a área territorial <area>
    Exemplos:
    | lugar                    | mensagem             | area                |
    | "Paraíba"                | "Paraíba"            | "56.467,242"        |
    | "2500502"                | "Alagoinha"          | "111,361"           |
    | "Cabedelo"               | "Cabedelo"           | "29,873"            |
    | "Alagoinha 2500502"      | "Alagoinha"          | "111,361"           |
    | "Brasil"                 | "Brasil"             | "8.510.417,771"     |

Cenário: Pesquisa com Estado
    Quando eu informo a UF ou município "Paraíba"
    E clico em pesquisar
    Então exibe o local "Paraíba"
    E exibe a área territorial "56.467,242"

Cenário: Pesquisa com Código
    Quando eu informo a UF ou município "2500502"
    E clico em pesquisar
    Então exibe o local "Alagoinha"
    E exibe a área territorial "111,361"

Cenário: pesquisa com Cidade
    Quando eu informo a UF ou município "Cabedelo"
    E clico em pesquisar
    Então exibe o local "Cabedelo"
    E exibe a área territorial "29,873"

Cenário: Pesquisa com Cidade e Código
    Quando eu informo a UF ou município "Alagoinha 2500502"
    E clico em pesquisar
    Então exibe o local "Alagoinha"
    E exibe a área territorial "111,361"

Cenário: Pesquisa com o País
    Quando eu informo a UF ou município "Brasil"
    E clico em pesquisar
    Então exibe o local "Brasil"
    E exibe a área territorial "8.510.417,771"

Cenário: Pesquisa com o Estado e Código
    Quando eu informo a UF ou município "Rio de janeiro"
    E clico em pesquisar
    Então exibe o local "Rio de janeiro"
    E exibe a área territorial "43.750,425"
