class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.column :user_id, :string
      t.column :date_time, :date_time
      t.column :file_name, :string
      t.column :file_url, :string
    end
    add_foreign_key :photos, :users
  end
end
