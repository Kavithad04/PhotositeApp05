class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.column :comment, :string
      t.column :date_time, :date_time
      t.column :user_id, :string
      t.column :photo_id, :string

      t.timestamps
    end
  end
end
