class CreateResources < ActiveRecord::Migration[7.0]
  def change
    create_table :resources do |t|
      t.string :name, default: "Resource Name"
      t.string :link, default: "https://resource-address.com"

      t.timestamps
    end
  end
end
