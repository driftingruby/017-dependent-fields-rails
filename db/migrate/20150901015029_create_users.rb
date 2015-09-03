class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :extended_profile
      t.string :twitter_handle
      t.string :facebook_handle
      t.string :github_handle

      t.timestamps null: false
    end
  end
end
