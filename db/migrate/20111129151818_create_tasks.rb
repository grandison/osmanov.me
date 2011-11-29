class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :text
      t.string :title
      t.date :started_at
      t.date :ended_at

      t.timestamps
    end
  end
end
