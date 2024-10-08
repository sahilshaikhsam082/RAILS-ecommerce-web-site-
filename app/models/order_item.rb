# frozen_string_literal: true

class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
  validates :quantity, presence: true, numericality: { greater_than: 0 }
end
