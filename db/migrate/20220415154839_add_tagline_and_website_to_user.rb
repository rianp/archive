class AddTaglineAndWebsiteToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :tagline, :string
    add_column :users, :website, :string
  end
end
