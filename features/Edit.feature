#language: pt
#uft-8

@edit
Funcionalidade: Editar o funcionario
Eu como usuario
Quero acessar a pagina do cadastro
Para alterar o cadastro do funcionário

@edit
Cenario: Editar o cadastro do funcionario
    Dado que esteja com os dados do funcionario cadastrado
    Quando localizar o funcionario
    Entao validar alteracao dos dados do funcionario