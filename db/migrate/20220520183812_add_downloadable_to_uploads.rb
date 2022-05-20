class AddDownloadableToUploads < ActiveRecord::Migration[7.0]
  def change
    add_column :uploads, :downloadable, :boolean, default: false
  end
end
