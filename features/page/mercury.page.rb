# encoding: utf-8


        class MercuryPage < SitePrism::Page
            set_url '/'
            element :text_user, 'input[name= userName]'
            element :text_password, 'input[name= password]'
            element :bt_sign, 'input[name= login]'
            
            def log_mercury(username, password)    
                text_user.set(username)
                text_password.set(password)
                bt_sign.click
     
            end
            
        end
  