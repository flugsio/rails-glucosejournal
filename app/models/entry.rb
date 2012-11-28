class Entry < ActiveRecord::Base
  default_scope order("entries.at DESC, entries.created_at DESC")

  belongs_to :user

  attr_accessible :at, :glucose, :carbohydrates, :dose

  before_create :set_at, :unless => :at?

  def set_at
    self.at = DateTime.now
  end
end
