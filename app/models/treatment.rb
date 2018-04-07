class Treatment < ApplicationRecord
  has_attached_file :file1
  has_attached_file :file2
  has_attached_file :result
end
