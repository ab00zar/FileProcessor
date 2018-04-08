class RenameCreatedByToUserId < ActiveRecord::Migration[5.1]
  def change
    rename_column :treatments, :created_by, :user_id
  end
end
