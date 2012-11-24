class Entry < ActiveRecord::Base
  default_scope order("entries.at DESC, entries.created_at DESC")

  belongs_to :user

  attr_accessible :at, :glucose, :carbohydrates, :dose
end
