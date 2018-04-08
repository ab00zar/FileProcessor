class Treatment < ApplicationRecord
  has_attached_file :file1
  has_attached_file :file2
  has_attached_file :result
  validates :file1, :file2, attachment_presence: true
  do_not_validate_attachment_file_type :file1, :file2

  after_commit :generate_result


  def generate_result
    input1 = {}
    File.open(self.file1.path).each_line do |line|
      input1[line] = ""
    end

    open('public/' + self.id.to_s, 'w') do |f|
      File.open(self.file2.path).each_line do |line|
        if input1.key?(line)
          f << line
        end
      end
    end

  end


end