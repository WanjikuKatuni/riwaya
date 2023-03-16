class RemoveDescriptionFromBooks < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :description
  end
end
