require_relative '../page/sou_visitante_page.rb'
require_relative '../spec/spec_helper.rb'

class VistanteTest
    
    describe 'Sou visitante' do
        context 'Quando eu entro como convidado' do
            it 'Deverar ir ate o final do credito' do      
                
                visitante = SouVisitantePage.new
                
                visitante.clicar_visitante
                visitante.clicar_credito_consignado
                visitante.clicar_faca_simulacao
                sleep(2)
                visitante.set_valor_simulacao(1000000)
                visitante.clicar_bttn_ok
                visitante.clicar_bttn_simulador
                sleep(2)
                visitante.clicar_tipo_convenio
                visitante.escolher_convenio
                visitante.clicar_convenio
                visitante.escolher_profissao
                visitante.clicar_orgao
                visitante.selecionar_orgao
                visitante.clicar_salvar
                tipo_convenio =  visitante.recuperar_tipo_convenio
                convenio = visitante.recuperar_convenio
                orgao = visitante.recuperar_orgao                                
                expect(tipo_convenio).to eq('Municipal')
                expect(convenio).to eq('Pref Belo Horizonte')
                expect(orgao).to eq('Pref Belo Horizonte')
                
                
                visitante.kill_drivers
            end
        end
    end
end