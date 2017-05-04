class Answer < ApplicationRecord
  self.table_name = "answers"

  belongs_to :question

end
