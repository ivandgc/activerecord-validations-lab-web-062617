require 'byebug'
class MyValidator < ActiveModel::Validator

  def validate(record)
    if record.title
      clickbaits = ["Won't Believe", "Secret", "Top[number]","Guess"]
      if clickbaits.find{|t| record.title.include?(t)}.nil?
        record.errors[:title] << 'Need a clickbait title'
      end
    end
  end

end
