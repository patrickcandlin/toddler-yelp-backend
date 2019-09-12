class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :yelp_id, :yelp_name, :rating, :content
  has_one :user
end
