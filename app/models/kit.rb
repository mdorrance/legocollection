class Kit < ActiveRecord::Base
  attr_accessible :date, :name, :photo_url, :set_num, :theme_id, :user_id, :value

  validates_presence_of :name, :theme_id, :user_id, :set_num, :photo_url, :value

  belongs_to :user
  belongs_to :theme
end
