class Game < ActiveRecord::Base
  validates :title, :image, :desc, :mode, :genre, :download, presence: true
  validates :image, :desc, :download, uniqueness: true
end
