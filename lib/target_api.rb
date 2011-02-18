require 'httparty'

class TargetApi
  include HTTParty
  @@API_KEY = ENV["TARGET_API_KEY"]

  def self.get_base_url
    "http://api.targetapi.com/#{@@API_KEY}/"
  end

  def self.API_KEY=(value)
    @@API_KEY = value
  end

  def self.save_person(id, options={})
    post("#{get_base_url}person/#{id}", :body => options)
  end
  
  def self.get_persons
    get("#{get_base_url}persons")
  end

  def self.get_profile(id)
    get("#{get_base_url}person/#{id}/profile")
  end

  def self.save_item(id, options={})
    post("#{get_base_url}item/#{id}", :body => options) 
  end

  def self.get_item(id)
    get("#{get_base_url}item/#{id}")
  end

  def self.get_items
    get("#{get_base_url}items")
  end

  def self.get_recommendations(id)
    get("#{get_base_url}person/#{id}/recommendations")
  end

  def self.submit_feedback(person_id, item_id, rating_value)
    post("#{get_base_url}person/#{person_id}/rating/#{item_id}", :body => { :rating_value => rating_value })
  end

  def self.get_ratings_for_person(person_id)
    get("#{get_base_url}person/#{person_id}/ratings")
  end
end
