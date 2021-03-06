


class Event < ActiveRecord::Base
  has_many :shares
  has_many :categories, through: :shares

  def self.pullAPI
    #classical = HTTParty.get('http://api.nytimes.com/svc/events/v2/listings.json?&filters=category:Classical&api-key=69462cbe1e0c66627933f3d16c4325c0:7:1730473&limit=5000')
    #classical = HTTParty.get('http://api.nytimes.com/svc/events/v2/listings.json?&filters=category:Classical&api-key='+API_KEYS[:KEY1]+'&limit=5000')
    #classical = HTTParty.get('http://api.nytimes.com/svc/events/v2/listings.json?&filters=category:Theater&api-key='+KEY1+'&limit=5000')
    classical = HTTParty.get('http://api.nytimes.com/svc/events/v2/listings.json?&filters=category:(-Movies)&api-key='+KEY1+'&limit=5000')
    get_uniq_results = {}
    classical["results"].each do |event|
      get_uniq_results[event["event_id"]] = event
    end

    return get_uniq_results.values
    #binding.pry
  end


end
