class CreateUploads < ActiveRecord::Migration[7.0]
  def change
    create_table :uploads do |t|
      t.string :name
      t.string :description
      t.string :thumbnail

      t.timestamps
    end
  end
end
