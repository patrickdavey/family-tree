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

ActiveRecord::Schema.define(:version => 20120509131848) do

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "date_of_birth"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "relationship_types", :force => true do |t|
    t.string   "name"
    t.string   "backward_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "relationships", :force => true do |t|
    t.integer  "relationship_type_id"
    t.integer  "person_id"
    t.integer  "related_person_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "relationships", ["person_id"], :name => "index_relationships_on_person_id"
  add_index "relationships", ["related_person_id"], :name => "index_relationships_on_related_person_id"
  add_index "relationships", ["relationship_type_id"], :name => "index_relationships_on_relationship_type_id"

end
