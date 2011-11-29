class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text
      t.string :file

      t.timestamps
    end
  end
end
