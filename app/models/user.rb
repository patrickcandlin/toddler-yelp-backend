class User < ApplicationRecord
    has_many :reviews
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates :password, :confirmation => true,
                       :allow_blank => true,
                       :on => :update
    validates :password, :confirmation => true,
                       :allow_blank => true,
                       :on => :update
end