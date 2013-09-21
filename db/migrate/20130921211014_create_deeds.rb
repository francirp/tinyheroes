class CreateDeeds < ActiveRecord::Migration
  def change
    create_table :deeds do |t|
      t.text :what
      t.integer :from_id
      t.integer :to_id
      t.datetime :when
      t.integer :classroom_id
      t.integer :teacher_id
      t.integer :school_id

      t.timestamps
    end
  end
end
