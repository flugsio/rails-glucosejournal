class User < ActiveRecord::Base
  include Clearance::User

  has_many :entries

  attr_accessible :email, :password
end
