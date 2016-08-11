class Post < ActiveRecord::Base
    serialize :likesarray, Array
    validates :nickname,presence: true
    validates_length_of :body, :maximum => 180
    validates_length_of :nickname, :maximum => 80

end
