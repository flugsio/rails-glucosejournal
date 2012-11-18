class Entry < ActiveRecord::Base

  belongs_to :user

  attr_accessible :at, :glucose, :carbohydrates, :dose
end
