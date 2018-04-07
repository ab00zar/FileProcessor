class CreateTreatments < ActiveRecord::Migration[5.1]
  def change
    create_table :treatments do |t|
      t.attachment :file1
      t.attachment :file2
      t.attachment :result
      t.integer :created_by

      t.timestamps
    end
  end
end
