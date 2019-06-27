require_relative '../core/page_base.rb'

class AbrirContaPage < PageBase

    

    def clicar_trocar_de_conta       
        click_text(:xpath, "//*[@text='Trocar conta']")
    end
    
    def clicar_acessar
        click_text(:xpath, "//*[@text='ACESSAR']")
    end

    def retorna_texto
        
    end

    def clicar_abrir_conta
        click_text(:xpath,"//*[@text='ABRIR CONTA']")

    end

    def digitar_cpf(texto)    
        send_key(:xpath,"//*[@class='UIATextField']", texto)
    end

    def clicar_next
        click_text(:xpath,"//*[@text='nextBt']")
    end

    def clicar_ok
        click(:xpath,"//*[@text='Toolbar Done Button']")
    end

    def recuperar_msg 
        get_text(:xpath , "//*[@text='CPF inválido, tente novamente']")
    end

    def exit_app
        kill_drivers
    end


    
end
