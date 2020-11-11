# frozen_string_literal: true

class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :carry_apparel

  before_destroy :check_store

  def carry_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:base, "Stores must carry at least one of the men's or women's apparel")
    end
  end

  def check_store
    false unless employees.empty?
  end
end
