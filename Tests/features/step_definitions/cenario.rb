    Dado('que eu tenha {int} laranjas') do |v1|
        @laranjas = v1
    end
    
    Quando('eu comer {int} laranjas') do |v2|
        @laranjas = @laranjas - v2
    end
    
    Então('eu vejo quantas laranjas sobraram') do
        expect(@laranjas).to eql 8
    end

    Quando('eu compro {int} laranjas') do |v3|
        @laranjas = @laranjas + v3
    end

    Então('eu vejo quantas laranjas tenho') do
        expect(@laranjas).to eql 15
    end