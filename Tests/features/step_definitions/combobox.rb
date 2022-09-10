Quando('interajo com dropdown e select') do
   visit '/buscaelementos/dropdowneselect'
   #dropdwon
   find('.btn.dropdown-button').click
   find('#dropdown3').click

   #select
   select 'Chrome', from: 'dropdown'

end
  
  Quando('preencho o autocomplete') do
    #autocomplete
    visit '/widgets/autocomplete'
    find('#autocomplete-input').set 'Rio de'
    find('ul', text: 'Rio de Janeiro').click
end