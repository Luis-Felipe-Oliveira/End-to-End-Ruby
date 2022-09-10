Quando('eu multiplico minhas {int} pelo {float}') do |laranja, valor|
   @mult = laranja * valor 
end
    
    Então('eu vejo qual o {float}') do |resultado|
     expect(@mult).to eql resultado
end
