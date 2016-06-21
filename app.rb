require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/home' do
    @error = params['error']
    erb :home
  end

  post '/subscribe' do
    @full_name = params[:full_name]
    @email = params[:email]
    @city = params[:city]

    if !@email.match(/.+@.+/)
      redirect to('/?error=email')
    end

    erb :subscribe
  end

  get '/youtube' do
    erb :youtube
  end

  get '/reddit' do
    # TODO: we can probably get the listings with something like:
    # JSON.parse(RestClient.get('http://reddit.com/.json'))
    # http://www.reddit.com/r/subreddit/new.json?sort=new

    @listings = []

    erb :reddit
  end

  get '/schedule' do
    @today = [
      ['7:00am', 'Wake up'],
      ['8:00am', 'Work Out'],
      ['9:00am', 'Product Meeting'],
      ['11:00am', 'Ping Pong Break'],
      ['1:00pm', 'Lunch'],
      ['3:00pm', 'Coffee Time'],
      ['6:30pm', 'Call it a day'],
    ]

    @tomorrow = [
      ['7:00am', 'Wake up'],
      ['8:00am', 'Work Out'],
      ['9:00am', 'Inbox Zero'],
      ['11:00am', 'Ping Pong Break'],
      ['1:00pm', 'Lunch'],
      ['3:00pm', 'Coffee Time'],
      ['6:30pm', 'Meetup Presentation'],
    ]

    erb :schedule
  end
end

class App < Sinatra::Base
  get '/fib/:n' do
    fib(4)
  end

  get '/team-randomizer' do
    # TODO: provide a form with a textarea that asks for a list of comma
    # separated names. Randomize this list of names and display it as an
    # ordered list (<ol>). 5 points
  end

  def fib(n)
    if n == 0
      if n == 1
        n
      else
        fib(n-1) + fib(n-2)
      end
    end
  end
end
