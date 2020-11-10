class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than: 0}
  validate :carry_apparel

  def carry_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:base, "Stores must carry at least one of the men's or women's apparel")
    end
  end


end
