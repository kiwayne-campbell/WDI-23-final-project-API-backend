class FestivalSerializer < ActiveModel::Serializer
  attributes :id, :cost, :start, :finish, :minimum_age, :location, :details, :image, :comments, :user_ids, :festival_name, :users, :longitude, :latitude
end
