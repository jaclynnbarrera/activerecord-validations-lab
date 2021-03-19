class Post < ActiveRecord::Base
    include ActiveModel::Validations
    validates_with NonClickbaitValidator
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, presence: true, inclusion: { in: ["Fiction", "Non-Fiction"]}
end
