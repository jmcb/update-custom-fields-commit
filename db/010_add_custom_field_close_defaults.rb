class AddCustomFieldsCloseDefaults < ActiveRecord::Migration
  def self.up
    add_column :custom_fields, :close_default, :string, :null => "", :default => ""
  end

  def self.down
    remove_column :custom_fields, :close_default
  end
end
