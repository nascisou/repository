require 'pry'

Dado(/^que esteja com os dados do funcionario cadastrado$/) do
 visit 'http://opensource.demo.orangehrmlive.com/'
end

Quando(/^localizar o funcionario$/) do
  fill_in "txtUsername", :with => "Admin"
  fill_in 'txtPassword', :with => "admin"
  find_button('LOGIN').click
  find(:id, "menu_pim_viewPimModule").hover
  find(:id, "menu_pim_viewEmployeeList").click
  fill_in 'empsearch_employee_name_empName', :with => "Camila Sottssza Nascimento"
  find_button('searchBtn').click
  page.all(:xpath, '//*[@id="resultTable"]/tbody/tr[1]/td[2]/a').first.click

end

Entao(/^validar alteracao dos dados do funcionario$/) do
 
  click_button('btnSave')
  fill_in 'personal_txtEmpMiddleName', :with => "Souza"
  choose('personal_optGender_2')
  select('Single', :from =>'personal_cmbMarital')
  fill_in "personal_DOB", :with => "2000-01-01"
  click_button('btnSave')
 
end