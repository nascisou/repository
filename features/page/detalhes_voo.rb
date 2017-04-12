# encoding: utf-8


        class FlyPage < SitePrism::Page
            set_url '/'
            elements :rd_type, 'input[name=tripType]'
            element :cmb_pass, 'select[name=passCount]'
            element :cmb_dep, 'select[name=fromPort]' 
            element :cmb_on, 'select[name=fromMonth]' 
            element :cmb_day, 'select[name=fromDay]'
            element :cmb_ret, 'select[name=toMonth]' 
            element :cmb_ret_day, 'select[name=toDay]' 
            elements :rd_servclass, 'input[name= servClass]'
            element :cmb_airline, 'select[name= airline]'
            element :bt_continue, 'input[name= findFlights]'    
            
             def detalhes_voo()
                wait_for_rd_type
                rd_type[1].click
                cmb_pass.select("2")
                cmb_dep.select("Paris")
                cmb_on.select("April")
                cmb_day.select("11")
                rd_servclass[2].click 
                cmb_airline.select("Unified Airlines")   
                bt_continue.click   
             end
        end
  