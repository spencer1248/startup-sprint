require_relative '../config/environment'

describe "Sample test" do 

  it 'Html Test' do
    # $stdout represents the output of your program, don't worry about how
    # we are testing this, focus on simply coding your solution.
    res = RestClient.get('http://localhost:9292/')
    puts res.headers
    expect(res.headers[:content_type]).to include("html")
  end

end