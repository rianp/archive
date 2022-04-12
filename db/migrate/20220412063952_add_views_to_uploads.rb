class AddViewsToUploads < ActiveRecord::Migration[7.0]
  def change
    add_column :uploads, :views, :integer, default: 0
  end
end
