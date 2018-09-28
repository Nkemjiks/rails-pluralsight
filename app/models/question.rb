class Question < ApplicationRecord
  include HasGravatar

  has_many :answer
end
