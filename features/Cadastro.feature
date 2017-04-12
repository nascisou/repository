#language: pt
#uft-8

@login @cadastro
Funcionalidade: Acessar o site
Eu como usuario
Quero acessar o site e logar
Para cadastrar os funcionários

@login
Cenario: Logar no site
    Dado que esteja no link do site
    Quando logar com a senha, acesso a pagina
    Entao clico o link PIM e cadastro um novo funcionario