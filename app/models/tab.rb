class Tab < ApplicationRecord
  belongs_to :user
  has_many :tab_drinks, dependent: :destroy

  def finished?
    end_datetime.present?
  end
end
