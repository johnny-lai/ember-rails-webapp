# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130424134772) do

  create_table "jsdoc_borrowed_functions", :force => true do |t|
    t.integer  "borrowed_to_id"
    t.integer  "borrowed_from_id"
    t.integer  "function_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "jsdoc_borrowed_functions", ["borrowed_from_id"], :name => "index_jsdoc_borrowed_functions_on_borrowed_from_id"
  add_index "jsdoc_borrowed_functions", ["borrowed_to_id"], :name => "index_jsdoc_borrowed_functions_on_borrowed_to_id"
  add_index "jsdoc_borrowed_functions", ["function_id"], :name => "index_jsdoc_borrowed_functions_on_function_id"

  create_table "jsdoc_borrowed_properties", :force => true do |t|
    t.integer  "borrowed_to_id"
    t.integer  "borrowed_from_id"
    t.integer  "property_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "jsdoc_borrowed_properties", ["borrowed_from_id"], :name => "index_jsdoc_borrowed_properties_on_borrowed_from_id"
  add_index "jsdoc_borrowed_properties", ["borrowed_to_id"], :name => "index_jsdoc_borrowed_properties_on_borrowed_to_id"
  add_index "jsdoc_borrowed_properties", ["property_id"], :name => "index_jsdoc_borrowed_properties_on_property_id"

  create_table "jsdoc_examples", :force => true do |t|
    t.integer  "example_for_id"
    t.string   "example_for_type"
    t.text     "code"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "jsdoc_examples", ["example_for_id"], :name => "index_jsdoc_examples_on_example_for_id"
  add_index "jsdoc_examples", ["example_for_type"], :name => "index_jsdoc_examples_on_example_for_type"

  create_table "jsdoc_functions", :force => true do |t|
    t.string   "name"
    t.string   "alias"
    t.string   "member_of"
    t.integer  "symbol_id"
    t.string   "function_type"
    t.string   "version"
    t.text     "description"
    t.string   "defined_in"
    t.string   "since"
    t.string   "author"
    t.boolean  "is_private"
    t.boolean  "is_inner"
    t.boolean  "is_static"
    t.boolean  "is_deprecated"
    t.text     "deprecated_description"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "jsdoc_functions", ["alias"], :name => "index_jsdoc_functions_on_alias"
  add_index "jsdoc_functions", ["function_type"], :name => "index_jsdoc_functions_on_function_type"
  add_index "jsdoc_functions", ["member_of"], :name => "index_jsdoc_functions_on_member_of"
  add_index "jsdoc_functions", ["name"], :name => "index_jsdoc_functions_on_name"
  add_index "jsdoc_functions", ["symbol_id"], :name => "index_jsdoc_functions_on_symbol_id"

  create_table "jsdoc_params", :force => true do |t|
    t.integer  "function_id"
    t.integer  "order"
    t.string   "name"
    t.string   "default"
    t.boolean  "is_optional"
    t.string   "param_type"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "jsdoc_params", ["function_id"], :name => "index_jsdoc_params_on_function_id"
  add_index "jsdoc_params", ["name"], :name => "index_jsdoc_params_on_name"
  add_index "jsdoc_params", ["order"], :name => "index_jsdoc_params_on_order"
  add_index "jsdoc_params", ["param_type"], :name => "index_jsdoc_params_on_param_type"

  create_table "jsdoc_projects", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "jsdoc_projects", ["slug"], :name => "index_jsdoc_projects_on_slug"

  create_table "jsdoc_properties", :force => true do |t|
    t.string   "name"
    t.string   "alias"
    t.string   "member_of"
    t.integer  "symbol_id"
    t.string   "property_type"
    t.string   "version"
    t.text     "description"
    t.string   "defined_in"
    t.string   "since"
    t.string   "author"
    t.string   "default"
    t.boolean  "is_private"
    t.boolean  "is_inner"
    t.boolean  "is_static"
    t.boolean  "is_constant"
    t.boolean  "is_deprecated"
    t.boolean  "is_readable"
    t.boolean  "is_writable"
    t.text     "deprecated_description"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "jsdoc_properties", ["alias"], :name => "index_jsdoc_properties_on_alias"
  add_index "jsdoc_properties", ["member_of"], :name => "index_jsdoc_properties_on_member_of"
  add_index "jsdoc_properties", ["name"], :name => "index_jsdoc_properties_on_name"
  add_index "jsdoc_properties", ["property_type"], :name => "index_jsdoc_properties_on_property_type"
  add_index "jsdoc_properties", ["symbol_id"], :name => "index_jsdoc_properties_on_symbol_id"

  create_table "jsdoc_requires", :force => true do |t|
    t.integer  "function_id"
    t.text     "require"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "jsdoc_requires", ["function_id"], :name => "index_jsdoc_requires_on_function_id"

  create_table "jsdoc_returns", :force => true do |t|
    t.integer  "function_id"
    t.string   "return_type"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "jsdoc_returns", ["function_id"], :name => "index_jsdoc_returns_on_function_id"
  add_index "jsdoc_returns", ["return_type"], :name => "index_jsdoc_returns_on_return_type"

  create_table "jsdoc_sees", :force => true do |t|
    t.integer  "see_for_id"
    t.string   "see_for_type"
    t.text     "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "jsdoc_sees", ["see_for_id"], :name => "index_jsdoc_sees_on_see_for_id"
  add_index "jsdoc_sees", ["see_for_type"], :name => "index_jsdoc_sees_on_see_for_type"

  create_table "jsdoc_symbols", :force => true do |t|
    t.string   "name"
    t.string   "alias"
    t.string   "member_of"
    t.integer  "constructor_id"
    t.string   "symbol_type"
    t.string   "version"
    t.text     "description"
    t.string   "defined_in"
    t.string   "since"
    t.string   "author"
    t.string   "extends"
    t.boolean  "is_deprecated"
    t.text     "deprecated_description"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "version_id"
  end

  add_index "jsdoc_symbols", ["alias"], :name => "index_jsdoc_symbols_on_alias"
  add_index "jsdoc_symbols", ["constructor_id"], :name => "index_jsdoc_symbols_on_constructor_id"
  add_index "jsdoc_symbols", ["member_of"], :name => "index_jsdoc_symbols_on_member_of"
  add_index "jsdoc_symbols", ["name"], :name => "index_jsdoc_symbols_on_name"
  add_index "jsdoc_symbols", ["symbol_type"], :name => "index_jsdoc_symbols_on_symbol_type"
  add_index "jsdoc_symbols", ["version_id"], :name => "index_jsdoc_symbols_on_version_id"

  create_table "jsdoc_throws", :force => true do |t|
    t.integer  "function_id"
    t.string   "throw_type"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "jsdoc_throws", ["function_id"], :name => "index_jsdoc_throws_on_function_id"
  add_index "jsdoc_throws", ["throw_type"], :name => "index_jsdoc_throws_on_throw_type"

  create_table "jsdoc_versions", :force => true do |t|
    t.integer  "project_id"
    t.string   "version_number"
    t.text     "description"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "jsdoc_versions", ["project_id", "version_number"], :name => "index_jsdoc_versions_on_project_id_and_version_number"

end
