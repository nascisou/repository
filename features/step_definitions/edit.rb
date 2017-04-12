require 'pry'

Dado(/^que esteja com os dados do funcionario cadastrado$/) do
 visit 'http://opensource.demo.orangehrmlive.com/'
end

Quando(/^localizar o funcionario$/) do
  fill_in "txtUsername", :with => "Admin"
  fill_in 'txtPassword', :with => "admin"
  find_button('LOGIN').click

  find(:xpath, ".//*[@id='menu_pim_viewPimModule']").hover
  find(:xpath, ".//*[@id='menu_pim_viewEmployeeList']").click
  fill_in 'empsearch[employee_name][empName]', :with => "Camila"
  find_button('Search').click
  page.all(:xpath, '//*[@id="resultTable"]/tbody/tr[1]/td[2]/a').first.click
end

Entao(/^altero os dados e clico o botao para salvar$/) do
   
  click_button('btnSave')
  fill_in 'personal_txtEmpMiddleName', :with => "Souza"
  choose('personal_optGender_2')
  select('Single', :from =>'personal_cmbMarital')
  fill_in "personal_DOB", :with => "2000-01-01"
  click_button('btnSave')
 
end