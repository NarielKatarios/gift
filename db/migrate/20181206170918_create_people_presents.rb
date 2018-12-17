class CreatePeoplePresents < ActiveRecord::Migration[5.1]
  def change
    create_table :people_presents do |t|
      t.references :person
      t.references :present

      t.timestamps
    end
  end
end
