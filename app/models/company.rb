class Company < ApplicationRecord
  has_many :contacts
  validates_presence_of :name
end
