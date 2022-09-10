Quando('seleciono o mouse hover') do
 visit '/iteracoes/mousehover'
 find('.card-content').hover
 
 
 sleep(3) 
end