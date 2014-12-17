class Post < ActiveRecord::Base
  validates :title, presence: true, length: {minimun: 5}
  validates :content, presence: true, length: {minimun: 10}
end
