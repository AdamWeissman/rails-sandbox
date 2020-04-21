class Call < ApplicationRecord
  enum status: [:incoming, :answered, :ended]
end
