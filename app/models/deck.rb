class Deck < ApplicationRecord
  has_many :slides
  has_many :chats
end
