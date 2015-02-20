class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_full_name
      t.integer :team_id
      t.string :sport

      t.timestamps null: false
    end
  end
end
