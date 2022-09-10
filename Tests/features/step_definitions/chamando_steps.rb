Dado('eu tendo {int} laranjas no estoque') do |v1|                          
@laranjas= v1
end                                                                          
                                                                                 
Quando('eu amasso {int} laranjas') do |amassei| 
    @laranjas = @laranjas -  amassei                                
end                                                                          
                                                                                 
Entao('eu verifico quantas laranjas sobraram no estoque') do                 
    expect(@laranjas).to eql 8
end                                                                          
                                                                                 
Quando('revendo {int} laranjas') do |v2|                                    
    steps %Q{
        Dado eu tendo 10 laranjas no estoque
    }
    @resultado = @laranjas - v2
end                                                                          
                                                                                 
Então('eu verifico com quantas laranjas eu fiquei') do   
    expect(@resultado).to eql 8                    
      
end                                                                          