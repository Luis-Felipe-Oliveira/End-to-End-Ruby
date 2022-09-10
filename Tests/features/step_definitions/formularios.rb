Quando('eu faco cadastro') do

  # preencher com fill_in
  visit '/users/new'
  fill_in(id:'user_name', with: 'Luis')
  fill_in(id:'user_lastname', with: 'Felipe')
  fill_in(id:'user_email', with: 'Teste@gmail.com')

  # preencher com find
  find('#user_address').set('Rua Teste numero 100')
  find('#user_university').set('Rua Teste numero 100')

  # preencher com send_keys
  find('#user_profile').send_keys('Padeiro')
  find('#user_gender').send_keys('Masculino')
  find('#user_age').send_keys('26 anos')

  find('input[name=commit]').click
end
  
  Então('verifico se fui cadastrado') do
    
    texto = find('#notice')

    expect(texto.text).to eql 'Usuário Criado com sucesso'
end
  