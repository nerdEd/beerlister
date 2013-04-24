class Beer < ActiveRecord::Base
  attr_accessible :name

  belongs_to :bar

  validates :name, :bar_id, presence: true
end
