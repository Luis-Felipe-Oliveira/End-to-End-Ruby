Quando('acesso a url do site') do
    @home = PaginaInicial.new
    @home.load
    sleep(3)
end
  
  Entao('verifico se estou na página inicial') do
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
end