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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150902011534) do

  create_table "banners", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "link"
    t.string   "image"
    t.string   "descriptor"
  end

  add_index "banners", ["created_at"], name: "index_banners_on_created_at"
  add_index "banners", ["link"], name: "index_banners_on_link"
  add_index "banners", ["title"], name: "index_banners_on_title"
  add_index "banners", ["updated_at"], name: "index_banners_on_updated_at"

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "dynamic_project_pages", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "query"
    t.string   "meta_title"
    t.string   "meta_description"
    t.string   "meta_keywords"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "project_category_id"
    t.string   "url"
    t.string   "slug"
  end

  add_index "dynamic_project_pages", ["description"], name: "index_dynamic_project_pages_on_description"
  add_index "dynamic_project_pages", ["meta_description"], name: "index_dynamic_project_pages_on_meta_description"
  add_index "dynamic_project_pages", ["meta_keywords"], name: "index_dynamic_project_pages_on_meta_keywords"
  add_index "dynamic_project_pages", ["meta_title"], name: "index_dynamic_project_pages_on_meta_title"
  add_index "dynamic_project_pages", ["query"], name: "index_dynamic_project_pages_on_query"
  add_index "dynamic_project_pages", ["title"], name: "index_dynamic_project_pages_on_title"

  create_table "event_attacments", force: :cascade do |t|
    t.integer  "event_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_attacments", ["event_id"], name: "index_event_attacments_on_event_id"
  add_index "event_attacments", ["image"], name: "index_event_attacments_on_image"

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "avatar"
    t.datetime "date"
    t.text     "lead"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "events", ["avatar"], name: "index_events_on_avatar"
  add_index "events", ["date"], name: "index_events_on_date"
  add_index "events", ["description"], name: "index_events_on_description"
  add_index "events", ["lead"], name: "index_events_on_lead"
  add_index "events", ["title"], name: "index_events_on_title"

  create_table "managers", force: :cascade do |t|
    t.string   "avatar"
    t.string   "name"
    t.string   "description"
    t.string   "skype"
    t.string   "languages"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.boolean  "elect"
    t.boolean  "company_info", default: false
  end

  add_index "managers", ["avatar"], name: "index_managers_on_avatar"
  add_index "managers", ["description"], name: "index_managers_on_description"
  add_index "managers", ["email"], name: "index_managers_on_email"
  add_index "managers", ["languages"], name: "index_managers_on_languages"
  add_index "managers", ["name"], name: "index_managers_on_name"
  add_index "managers", ["phone"], name: "index_managers_on_phone"
  add_index "managers", ["skype"], name: "index_managers_on_skype"

  create_table "managers_projects", force: :cascade do |t|
    t.integer "project_id"
    t.integer "manager_id"
  end

  add_index "managers_projects", ["manager_id"], name: "index_managers_projects_on_manager_id"
  add_index "managers_projects", ["project_id"], name: "index_managers_projects_on_project_id"

  create_table "menu_items", force: :cascade do |t|
    t.integer  "menu_id"
    t.integer  "menu_item_id"
    t.string   "title"
    t.string   "link"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "position"
    t.string   "descriptor"
    t.boolean  "sub_two"
  end

  add_index "menu_items", ["link"], name: "index_menu_items_on_link"
  add_index "menu_items", ["menu_id"], name: "index_menu_items_on_menu_id"
  add_index "menu_items", ["menu_item_id"], name: "index_menu_items_on_menu_item_id"
  add_index "menu_items", ["title"], name: "index_menu_items_on_title"

  create_table "menus", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "place"
    t.string   "descriptor"
  end

  add_index "menus", ["place"], name: "index_menus_on_place"
  add_index "menus", ["title"], name: "index_menus_on_title"

# Could not dump table "post_categories" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "posts", force: :cascade do |t|
    t.integer  "post_category_id"
    t.string   "title"
    t.text     "text"
    t.text     "lead"
    t.string   "meta_title"
    t.string   "meta_description"
    t.string   "meta_keywords"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.boolean  "to_main_page",     default: false
    t.string   "mini_lead"
    t.string   "avatar"
    t.string   "slug"
  end

  add_index "posts", ["lead"], name: "index_posts_on_lead"
  add_index "posts", ["meta_description"], name: "index_posts_on_meta_description"
  add_index "posts", ["meta_keywords"], name: "index_posts_on_meta_keywords"
  add_index "posts", ["meta_title"], name: "index_posts_on_meta_title"
  add_index "posts", ["post_category_id"], name: "index_posts_on_post_category_id"
  add_index "posts", ["title"], name: "index_posts_on_title"

  create_table "project_application_mails", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "project_application_mails", ["email"], name: "index_project_application_mails_on_email"
  add_index "project_application_mails", ["name"], name: "index_project_application_mails_on_name"
  add_index "project_application_mails", ["project_id"], name: "index_project_application_mails_on_project_id"

  create_table "project_attacments", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "image"
    t.string   "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_categories", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "avatar"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "meta_title"
    t.string   "meta_description"
    t.string   "meta_keywords"
    t.integer  "position"
    t.string   "slug"
  end

  add_index "project_categories", ["avatar"], name: "index_project_categories_on_avatar"
  add_index "project_categories", ["description"], name: "index_project_categories_on_description"
  add_index "project_categories", ["title"], name: "index_project_categories_on_title"

  create_table "project_category_attacments", force: :cascade do |t|
    t.integer  "project_category_id"
    t.string   "image"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "sku"
    t.text     "description"
    t.string   "type_deal"
    t.string   "rooms"
    t.integer  "area"
    t.string   "condition"
    t.integer  "to_center"
    t.integer  "mount_build"
    t.integer  "year_build"
    t.boolean  "has_conditioning",        default: false
    t.boolean  "has_white_goods",         default: false
    t.boolean  "has_furniture",           default: false
    t.boolean  "has_water_heater",        default: false
    t.boolean  "has_tapu",                default: false
    t.boolean  "has_iskana",              default: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "avatar"
    t.string   "type_object"
    t.integer  "to_airport"
    t.string   "meta_title"
    t.string   "meta_description"
    t.string   "meta_keywords"
    t.integer  "project_category_id"
    t.integer  "some_manager"
    t.boolean  "custom_sku",              default: false
    t.integer  "start_pice",              default: 0
    t.integer  "final_pice",              default: 0
    t.integer  "to_sea"
    t.boolean  "elect"
    t.string   "start_price"
    t.string   "slug"
    t.string   "url"
    t.integer  "bedrooms"
    t.integer  "bathroom"
    t.boolean  "balcony",                 default: false
    t.boolean  "cabel_tv",                default: false
    t.boolean  "internet",                default: false
    t.boolean  "parking",                 default: false
    t.boolean  "elevator",                default: false
    t.boolean  "garden",                  default: false
    t.boolean  "pool",                    default: false
    t.integer  "final_price"
    t.boolean  "to_our_projects_page",    default: false
    t.integer  "our_projects_page_order", default: 1
  end

  add_index "projects", ["area"], name: "index_projects_on_area"
  add_index "projects", ["condition"], name: "index_projects_on_condition"
  add_index "projects", ["description"], name: "index_projects_on_description"
  add_index "projects", ["has_conditioning"], name: "index_projects_on_has_conditioning"
  add_index "projects", ["has_furniture"], name: "index_projects_on_has_furniture"
  add_index "projects", ["has_iskana"], name: "index_projects_on_has_iskana"
  add_index "projects", ["has_tapu"], name: "index_projects_on_has_tapu"
  add_index "projects", ["has_water_heater"], name: "index_projects_on_has_water_heater"
  add_index "projects", ["has_white_goods"], name: "index_projects_on_has_white_goods"
  add_index "projects", ["mount_build"], name: "index_projects_on_mount_build"
  add_index "projects", ["name"], name: "index_projects_on_name"
  add_index "projects", ["project_category_id"], name: "index_projects_on_project_category_id"
  add_index "projects", ["rooms"], name: "index_projects_on_rooms"
  add_index "projects", ["sku"], name: "index_projects_on_sku"
  add_index "projects", ["to_center"], name: "index_projects_on_to_center"
  add_index "projects", ["type_deal"], name: "index_projects_on_type_deal"
  add_index "projects", ["year_build"], name: "index_projects_on_year_build"

  create_table "questions", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "skype"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "questions", ["email"], name: "index_questions_on_email"
  add_index "questions", ["message"], name: "index_questions_on_message"
  add_index "questions", ["name"], name: "index_questions_on_name"
  add_index "questions", ["phone"], name: "index_questions_on_phone"
  add_index "questions", ["skype"], name: "index_questions_on_skype"

  create_table "reviews", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "content"
    t.boolean  "published",  default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "reviews", ["content"], name: "index_reviews_on_content"
  add_index "reviews", ["email"], name: "index_reviews_on_email"
  add_index "reviews", ["name"], name: "index_reviews_on_name"
  add_index "reviews", ["published"], name: "index_reviews_on_published"

  create_table "site_variables", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "value"
    t.integer  "static_page_id"
    t.string   "descriptor"
  end

  add_index "site_variables", ["name"], name: "index_site_variables_on_name"
  add_index "site_variables", ["value"], name: "index_site_variables_on_value"

  create_table "sliders", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "descriptor"
  end

  add_index "sliders", ["title"], name: "index_sliders_on_title"

  create_table "slides", force: :cascade do |t|
    t.integer  "slider_id"
    t.string   "title"
    t.string   "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "price"
    t.string   "description"
    t.string   "link"
    t.string   "image"
  end

  add_index "slides", ["content"], name: "index_slides_on_content"
  add_index "slides", ["slider_id"], name: "index_slides_on_slider_id"
  add_index "slides", ["title"], name: "index_slides_on_title"

  create_table "static_pages", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "meta_title"
    t.string   "meta_description"
    t.string   "meta_keywords"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "descriptor"
    t.string   "meta_copyright"
    t.string   "url"
    t.string   "slug"
  end

  add_index "static_pages", ["content"], name: "index_static_pages_on_content"
  add_index "static_pages", ["meta_description"], name: "index_static_pages_on_meta_description"
  add_index "static_pages", ["meta_keywords"], name: "index_static_pages_on_meta_keywords"
  add_index "static_pages", ["meta_title"], name: "index_static_pages_on_meta_title"
  add_index "static_pages", ["title"], name: "index_static_pages_on_title"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
