class FestivalSerializer < ActiveModel::Serializer
  attributes :id, :cost, :start, :finish, :minimum_age, :location, :details, :image, :user_ids, :festival_name, :longitude, :latitude
  
  has_many :comments
  has_many :users
end
