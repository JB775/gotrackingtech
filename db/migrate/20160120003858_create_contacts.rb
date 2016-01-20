class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :fname
      t.string :lname
      t.string :company
      t.string :email
      t.string :job_title
      t.string :phone
      t.string :city
      t.string :state
      t.string :num_employees
      t.string :message

      t.timestamps null: false
    end
  end
end
