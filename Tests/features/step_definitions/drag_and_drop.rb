Dado('que eu estou na tela de DragDrop') do
    visit '/iteracoes/draganddrop'  
end
  
  Entao('movo o dragdrop') do
    @primeiro_elemento = find('#winston')
    @segundo_elemento = find('#dropzone')

    @primeiro_elemento.drag_to(@segundo_elemento)
    sleep(4)
end