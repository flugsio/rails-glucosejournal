class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.references :user
      t.float :glucose, :carbohydrates, :dose
      t.datetime :at
      t.timestamps
    end
  end
end
