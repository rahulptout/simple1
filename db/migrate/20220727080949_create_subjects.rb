class CreateSubjects < ActiveRecord::Migration[7.0]
  def up
    create_table :subjects do |t|
      t.string "name"
      t.string "position"
      t.boolean "visible" , :default =>false
      t.timestamps
    end
  end

  def down
    drop_table :subjects
  end

  end

