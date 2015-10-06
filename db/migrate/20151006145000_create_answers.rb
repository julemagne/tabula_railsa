class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :name
      t.boolean :chocolate
      t.boolean :puppies
      t.boolean :rainbows
      t.boolean :cold_hard_cash

      t.timestamps null: false
    end
  end
end
