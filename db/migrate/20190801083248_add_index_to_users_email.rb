class AddIndexToUsersEmail < ActiveRecord::Migration[5.2]
  def change
    add_index :users, :email, unique: true
    #them chi muc cho cot email cua bang Users, tuy chon unique
  end
end
