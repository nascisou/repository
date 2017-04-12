# encoding: utf-8
require 'pry'

        class BookFlyPage < SitePrism::Page
            set_url '/'
            element :txt_passfirst, 'input[name=passFirst0]'
            element :txt_passlast, 'input[name=passLast0]'
            element :txt_passfirst1, 'input[name=passFirst1]'
            element :txt_passlast1, 'input[name=passLast1]'
            elements :cmb_meal, 'select[name=pass.0.meal]'
            elements :ckc_adress, 'input[name=ticketLess]'
            element :bt_buy, 'input[name=buyFlights]'
            element :cmb_cred, 'select[name=creditCard]'
            element :txt_number, 'input[name=creditnumber]'
            element :cmb_mes, 'select[name=cc_exp_dt_mn]'
            element :cmb_year, 'select[name=cc_exp_dt_yr]'
            element :txt_namecred, 'input[name=cc_frst_name]'
            
             def book_flight(passFirst0, passLast0, passFirst1, passLast1, creditnumber,cc_frst_name)
                # wait_for_rd_reserva
                txt_passfirst.set(passFirst0)
                txt_passlast.set(passLast0)
                txt_passfirst1.set(passFirst1)
                txt_passlast1.set(passLast1)
                #binding.pry
                #cmb_meal.select("HNML")
                select('Bland', :from =>'pass.0.meal')
                select('Hindu', :from =>'pass.1.meal')
                cmb_cred.select("Visa")
                ckc_adress.first.set(true)
                txt_number.set(creditnumber)
                cmb_mes.select("12")
                cmb_year.select("2005")
                txt_namecred.set(cc_frst_name)
                bt_buy.click

             end
        end