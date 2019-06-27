require_relative '../page/abrir_conta_page.rb'
require_relative '../spec/spec_helper.rb'

class MenuPageTest
  
  describe 'Cadastro' do
    context 'quando digita um CPF inválido'do
       it 'o cpf deverá ser invalido' do
        
      abrir_conta = AbrirContaPage.new   
      abrir_conta.clicar_abrir_conta
      abrir_conta.digitar_cpf("73503308633")#73503308636 certo
      abrir_conta.clicar_ok
      abrir_conta.clicar_next
      msg = abrir_conta.recuperar_msg
      
      expect(msg).to eq('CPF inválido, tente novamente')
      abrir_conta.exit_app
       end
     end  
   end   
  end





