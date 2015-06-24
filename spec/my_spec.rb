require_relative './spec_helper.rb'
require_relative '../app.rb'

describe "app" do
  it 'returns "even number" if number is even' do
    even_num = myMethod(4)

    expect(even_num).to eq("even number")
  end
  it 'returns "odd number" if number is even' do
    even_num = myMethod(5)

    expect(even_num).to eq("odd number")
  end
end