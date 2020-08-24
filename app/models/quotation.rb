class Quotation < ApplicationRecord
    validates :quote, presence: true
    validates :author, presence: true
end
