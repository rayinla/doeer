class Review < ApplicationRecord
 belongs_to :reviewable, :polymorphic => true
 validates :body, :stars, :presence => true
end