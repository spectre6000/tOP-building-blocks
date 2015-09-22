require 'rspec'
require_relative '../lib/blocks'

describe 'substring' do 

  it 'returns a hash with a word count' do
    dictionary = [ "below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit" ]
    result = {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}

    call = substring( "Howdy partner, sit down! How's it going?", dictionary )
    
    expect(call).to eql(result)
  end

end

describe 'stock_picker' do

  it 'returns a string indicating high, low, and delta' do
    days = [ 17, 3, 6, 9, 15, 8, 16, 1, 10 ]

    call = stock_picker( days )

    expect(call).to eql("buy day is 1, sell day is 6, profit is 13")
  end

end

describe 'caesar_cipher' do

  it 'shifts a string by a set number of characters' do
    string = 'this is a string'

    call = caesar_cipher(string, 5)

    expect(call).to eql('ymnx nx f xywnsl')

  end

end