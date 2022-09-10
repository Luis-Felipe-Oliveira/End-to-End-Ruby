Quando('acesso a url de botoes') do
  visit '/buscaelementos/botoes'
end
  
  Entao('verifico se encontrei os elementos') do
   #all busca todos os elementos que contenham  o all
   page.all(:css, '.waves-light btn')
   #busca um elemento mapeado
   find('#teste')
   #busca pelo id
   find_by_id('teste')
   #busca link
   find_link(href: '/home/index')
  

end