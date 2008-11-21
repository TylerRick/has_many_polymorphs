# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20081121063246) do

  create_table "double_sti_parent_relationships", :force => true do |t|
    t.string  "the_bone_type", :null => false
    t.integer "the_bone_id",   :null => false
    t.string  "parent_type",   :null => false
    t.integer "parent_id",     :null => false
  end

  create_table "double_sti_parents", :force => true do |t|
    t.string "name"
  end

  create_table "library_models", :force => true do |t|
    t.string "name"
  end

  create_table "organic_substances", :force => true do |t|
    t.string "type"
  end

  create_table "single_sti_parent_relationships", :force => true do |t|
    t.string  "the_bone_type",        :null => false
    t.integer "the_bone_id",          :null => false
    t.integer "single_sti_parent_id", :null => false
  end

  create_table "single_sti_parents", :force => true do |t|
    t.string "name"
  end

  create_table "sticks", :force => true do |t|
    t.string "name"
  end

  create_table "stones", :force => true do |t|
    t.string "name"
  end

  create_table "taggings", :force => true do |t|
    t.integer "tag_id",        :null => false
    t.integer "taggable_id",   :null => false
    t.string  "taggable_type", :null => false
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type"], :name => "index_taggings_on_tag_id_and_taggable_id_and_taggable_type", :unique => true

  create_table "tags", :force => true do |t|
    t.string "name", :null => false
  end

  add_index "tags", ["name"], :name => "index_tags_on_name", :unique => true

end
