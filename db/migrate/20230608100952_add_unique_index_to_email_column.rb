class AddUniqueIndexToEmailColumn < ActiveRecord::Migration[7.0]
  def change
    add_index :your_table_name, :email, unique: true
  end
end
