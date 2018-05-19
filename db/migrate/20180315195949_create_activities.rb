class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :timeliner_activities do |t|
      t.references :trackable, polymorphic: true
      t.references :user, index: true, foreign_key: true
      t.string :key, null: false, index: true
      t.timestamps
    end
  end
end
