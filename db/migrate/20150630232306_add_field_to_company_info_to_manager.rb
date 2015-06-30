class AddFieldToCompanyInfoToManager < ActiveRecord::Migration
  def change
  	add_column :managers, :company_info, :boolean, index: true, default: false
  end
end
