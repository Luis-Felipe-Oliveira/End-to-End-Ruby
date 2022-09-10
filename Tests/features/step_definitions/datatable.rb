Dado('que eu tenho umas laranjas') do |table|
   @laranja = table.rows_hash['laranja'].to_i

    end
  
Quando('eu corto {int} laranjas') do |int|
    @cortar = int
    @total = @laranja - @cortar
    end
  
Entao('eu verifico quantas laranjas sobraram inteiras') do
    expect(@total).to eql 8
    end
  
