Quando('eu clico em botoes') do
    visit '/'
    #clicar com link
    click_on('Começar Automação Web')
    #clicar com o button
    visit '/buscaelementos/botoes'
    find('a[onclick="ativaedesativa2()"]').click
    find('a[onclick="ativaedesativa2()"]').double_click
    find('a[onclick="ativaedesativa2()"]').right_click
    

end