class Contact < ApplicationRecord
  belongs_to :company, optional: true
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :offers
  has_many :notes

  validates_presence_of :family_name,
                        :given_name
end
