class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :name
      t.string :idea
      t.string :tag

      t.timestamps
    end
  end
end
