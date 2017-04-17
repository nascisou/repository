require 'pry'

Dado(/^que esteja no link do site$/) do
  visit 'http://opensource.demo.orangehrmlive.com/'
end

Quando(/^logar com a senha, acesso a pagina$/) do
   fill_in "txtUsername", :with => "Admin"
   fill_in 'txtPassword', :with => "admin"
   click_button('btnLogin')
end

Entao(/^validar login e senha$/) do
  find(:id, "menu_pim_viewPimModule").hover
  find(:id, "menu_pim_addEmployee").click
  fill_in 'firstName', :with => "Camila"
  fill_in 'middleName', :with => "Sottssza"
  fill_in 'lastName', :with => "Nascimento"
  click_button('btnSave')
end
