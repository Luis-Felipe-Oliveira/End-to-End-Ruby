Quando('clico no botao') do
    visit'/buscaelementos/botoes'
    find('#teste').click
    sleep(3)
end
  
  Entao('verifico se o texto apareceu na tela com sucesso') do
    #verificando elementos
    page.assert_text(text, 'Você Clicou no Botão!')
    page.has_text?('Você Clicou no Botão!')
    have_text('Você Clicou no Botão!')
    
    #verificando elementos não visiveis
    assert_no_test(text,'Você Clicou no Botão!')
    have_no_text('Você Clicou no Botão!')
end