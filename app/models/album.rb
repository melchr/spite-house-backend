class Album < ApplicationRecord
    has_many :reviews, :dependent => :destroy
    has_many :reviewers, through: :reviews, source: :user
    belongs_to :user
    
    has_one_attached :avatar
    accepts_nested_attributes_for :reviews
    validates_presence_of :artist
    validates_presence_of :title
    validate :unique_title_by_artist
end
