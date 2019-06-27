require_relative '../core/driver_factory.rb'

class PageBase

    def send_key(by , text, texto)
             
        DriverFactory.get_Driver.find_element(by,text).send_keys(texto)  
    end  

    def click(by , text)
        DriverFactory.get_Driver.find_element(by,text).click
    end

    def get_text (by , text)
        return DriverFactory.get_Driver.find_element(by,text).text
    end

    def click_text (by , text)
       
        DriverFactory.get_Driver.find_element(by,text).click
    end

    def kill_drivers
        DriverFactory.kill_Driver
    end
end
