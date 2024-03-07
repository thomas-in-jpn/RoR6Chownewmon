class Person < ApplicationRecord
    validate :name, presence: true
    validate :age, numericality: true
end
