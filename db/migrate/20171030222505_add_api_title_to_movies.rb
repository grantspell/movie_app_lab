class AddApiTitleToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :api_title, :string
  end
end
