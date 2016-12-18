class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :Name
      t.string :Comment
      t.string :ContactInfo

      t.timestamps
    end
  end
end
