require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name].reverse
    @name
  end

  get '/square/:number' do
    @squared_number = params[:number].to_i*params[:number].to_i
    @squared_number.to_s
  end

  get '/say/:number/:phrase' do
    @content = ''
    @number = params[:number]
    @phrase = params[:phrase]

    @number.to_i.times do
      @content += @phrase.to_s
    end

    @content
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    @mumbojumbo = @word1.concat(" ", @word2, " ", @word3, " ", @word4, " ", @word5, ".",)

    @mumbojumbo.to_s
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    @result = 0

    if @operation == 'add'
      @result = @number1+@number2
    elsif @operation == 'subtract'
      @result = @number1-@number2
    elsif @operation == 'multiply'
      @result = @number1*@number2
    elsif @operation == 'divide'
      @result = @number1/@number2
    else
      # @result
      @result = 'Operation not possible.'
    end
    
    @result.to_s
  end

end