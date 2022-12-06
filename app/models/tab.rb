class Tab < ApplicationRecord
  belongs_to :user
  has_many :tab_drinks

  def finished?
    end_datetime.present?
  end

end
