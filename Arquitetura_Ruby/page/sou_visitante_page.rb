require_relative '../core/page_base.rb'


class SouVisitantePage < PageBase

    def clicar_visitante
        click_text(:xpath, "//*[@text='SOU VISITANTE']")
    end

    def clicar_credito_consignado
        click_text(:xpath, "//*[@text='Crédito consignado']")
    end

    def clicar_faca_simulacao
        click_text(:xpath, "//*[@text='FAÇA UMA SIMULAÇÃO']")
    end

    def set_valor_simulacao (valor)
        send_key(:xpath, "//*[@placeholder='0,00']", valor)
    end

    def clicar_bttn_simulador
        click_text(:xpath, "//*[@text='SIMULAR']")
    end

    def clicar_bttn_ok
        click_text(:xpath, "//*[@text='Toolbar Done Button']")
    end

    def clicar_tipo_convenio
        click_text(:xpath, "//*[@text='Tipo de convênio']")
    end

    def escolher_convenio
        click_text(:xpath, "//*[@text='Municipal']")
    end

    def clicar_convenio
        click_text(:xpath,"//*[@text ='Convênio']")
    end

    def escolher_profissao
        click_text(:xpath, "//*[@text='Pref Belo Horizonte']")
    end

    def clicar_salvar
        click_text(:xpath , "//*[@text='CONTINUE']")
    end

    def clicar_orgao
        click_text(:xpath, "//*[@text='Órgão']")
    end

    def selecionar_orgao
        click_text(:xpath , "//*[@text='Pref de Belo Horizonte']")
    end

    def recuperar_tipo_convenio
        get_text(:xpath , "//*[@text='Municipal']")
    end

    def recuperar_convenio
        get_text(:xpath , "//*[@text='Pref Belo Horizonte']")
    end
    
    def recuperar_orgao
        get_text(:xpath, "//*[@text='Pref Belo Horizonte']")
    end

    def kill_driver
        kill_drivers
    end




        
end