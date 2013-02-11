class User < ActiveRecord::Base
  attr_accessible :age, :name

  validates_presence_of :age, :name

  has_many :kits



end
