class City < ActiveRecord::Base
  validates :name, :short_name, presence: true
  validates :name, :short_name, uniqueness: true
  validates :short_name, length: { is: 2 }

  has_many :users

end
