class ChangeApiTitleToApiId < ActiveRecord::Migration[5.1]
  def change
    rename_column :movies, :api_title, :api_id
  end
end
