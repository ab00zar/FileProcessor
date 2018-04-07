class Treatment < ApplicationRecord
  has_attached_file :file1
  has_attached_file :file2
  has_attached_file :result
  validates :file1, :file2, attachment_presence: true
  do_not_validate_attachment_file_type :file1, :file2
end
