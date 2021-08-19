class TitleValidator < ActiveModel::Validator
  def validate(record)
    unless record.title && record.title.match(/Won't Believe|Secret|Guess|Top [0-9]+/)
      record.errors[:title] << "Title is not clickbait"
    end
  end
end