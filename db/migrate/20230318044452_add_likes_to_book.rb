class AddLikesToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :likes, :integer, null: false, default: 0
  end
end
