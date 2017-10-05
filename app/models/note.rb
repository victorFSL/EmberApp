class Note < ApplicationRecord

  belongs_to :notable, polymorphic: true, optional: true
  belongs_to :contact, optional: true
end
