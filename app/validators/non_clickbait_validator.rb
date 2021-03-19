class NonClickbaitValidator < ActiveModel::Validator
    def validate(record)
        words = ["Won't Believe","Secret","Top [number]", "Guess"]
        unless words.include?(record.title)
            record.errors.add :name, false
        end
    end
end

# def validate(record)
    #     words = ["Won't Believe","Secret","Top [number]", "Guess"]
    #     if words.any?(record.title)
    #         errors.add(:title, false)
    #     else
    #         true
    #     end
    # end   