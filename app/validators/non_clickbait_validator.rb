# class NonClickbaitValidator < ActiveModel::Validator
#     def validate(record)
#         words = ["Won't Believe","Secret","Top [number]", "Guess"]
#         if words.include?(record.title)
#             record.errors.add :title, false
#         else
#             false
#         end
#     end
# end