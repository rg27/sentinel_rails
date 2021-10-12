class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :deptname
      t.boolean :deptstatus
      t.date :deptcreateddate
      t.string :deptcreatedby
      t.string :deptcode

      t.timestamps
    end
  end
end
