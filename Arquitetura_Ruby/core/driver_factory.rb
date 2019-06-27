require 'appium_lib'

class DriverFactory
    @caps = {}
    @opts = {}

    @plat = 'ios'

    def self.get_Driver 
        if(@driver == nil)
            create_Driver();
        end
        return @driver    
    end 
    private 
    def self.create_Driver
         if(@plat =='ios') 
        
    
@caps["reportDirectory"] = "/Users/diego/Desktop/Arquitetura_Ruby/log/reports"
@caps["reportFormat"] = "html"
@caps["testName"] = "IOSTestName"
@caps["testName"] = "Untitled"
@caps["bundleId"] = "br.com.intermedium"
@caps["udid"]= "ece1b58afc3dad833d0ee245cbd5cf31138a5ce6"
@caps["platformName"] = "ios"  
@opts["sauce_username"] = "nil" 
@opts["server_url"] ="http://127.0.0.1:4723/wd/hub"
         end
        if @plat == 'android'
            puts "entrou no driver andoid"
            @caps["platformName"] = "Android"
            @caps["deviceName"] = "emulador-5555"
            @caps["automationName"] = "uiautomator2"
            @caps["appPackage"] = "br.com.intermedium"
            @caps["appActivity"] = "br.com.intermedium.SplashActivity"
            @opts["sauce_username"] = "nil" 
            @opts["server_url"] ="http://127.0.0.1:4723/wd/hub"
            puts "Pecorreu O metodo"
        end
        @driver = Appium::Driver.new({caps: @caps, appium_lib: @opts}).start_driver
    end
    
    def self.kill_Driver
    if(@driver!=nil)
        @driver.quit()
        @driver = nil
    end
end

end