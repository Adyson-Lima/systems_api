class System < ApplicationRecord
  validates :name, :manufacturer, presence: true
end
