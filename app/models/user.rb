class User < ApplicationRecord
    has_many :inventories
    has_many :recipes
end
