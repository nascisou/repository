# encoding: utf-8


        class DataFlyPage < SitePrism::Page
            set_url '/'
            elements :rd_datavoo, 'input[name = outFlight]'
            elements :rd_retvoo, 'input[name = inFlight]'
            element :bt_cont, 'input[name = reserveFlights]'
            
             def reserva_voo()
                # wait_for_rd_reserva
                rd_datavoo[3].click
                rd_retvoo[2].click
                bt_cont.click 
             end
        end