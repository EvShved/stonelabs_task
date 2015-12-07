class Answer < ActiveRecord::Base
  validates :context, presence: true
end
