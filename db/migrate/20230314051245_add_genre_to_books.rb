class AddGenreToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :genre,
    :string
  end
end
