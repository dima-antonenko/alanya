User.create!([
  {email: "1@mail.ru", encrypted_password: "$2a$10$2K.HHIYgUGfuM6QlLYgIQOaRZE1KR5onMcWcXiLFR7fPaWQswrrmO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: "2015-06-18 23:06:17", sign_in_count: 61, current_sign_in_at: "2015-06-22 02:06:05", last_sign_in_at: "2015-06-18 23:06:17", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Banner.create!([
  {title: "Баннер 1", avatar_file_name: "banner_img_1.png", avatar_content_type: "image/png", avatar_file_size: 3178, avatar_updated_at: "2015-05-13 05:51:01", link: "#"},
  {title: "Баннер 2", avatar_file_name: "banner_img_1.png", avatar_content_type: "image/png", avatar_file_size: 3178, avatar_updated_at: "2015-05-13 05:50:50", link: "#"}
])
Manager.create!([
  {avatar: "1.png", name: "Менеджер 1", description: "главный бугалтер", skype: "skypename", languages: "English", email: "1@mail.ru", phone: "7 1235 34545"},
  {avatar: "2.png", name: "Менеджер 3", description: "главный бугалтер", skype: "skypename", languages: "English", email: "1@mail.ru", phone: "7 1235 34545"},
  {avatar: "3.png", name: "Менеджер 4", description: "главный бугалтер", skype: "skypename", languages: "English", email: "1@mail.ru", phone: "7 1235 34545"},
  {avatar: "4.png", name: "Менеджер 5", description: "главный бугалтер", skype: "skypename", languages: "English", email: "1@mail.ru", phone: "7 1235 34545"},
  {avatar: "6.png", name: "Менеджер 6", description: "главный бугалтер", skype: "skypename", languages: "English", email: "1@mail.ru", phone: "7 1235 34545"}
])
Manager::HABTM_Projects.create!([
  {project_id: nil, manager_id: 4},
  {project_id: 10, manager_id: 3},
  {project_id: 10, manager_id: 3},
  {project_id: 10, manager_id: 3},
  {project_id: 10, manager_id: 5},
  {project_id: 10, manager_id: 5},
  {project_id: 10, manager_id: 5},
  {project_id: 10, manager_id: 5},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1}
])
ManagersProject.create!([
  {project_id: nil, manager_id: 4},
  {project_id: 10, manager_id: 3},
  {project_id: 10, manager_id: 3},
  {project_id: 10, manager_id: 3},
  {project_id: 10, manager_id: 5},
  {project_id: 10, manager_id: 5},
  {project_id: 10, manager_id: 5},
  {project_id: 10, manager_id: 5},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1}
])
Menu.create!([
  {title: "Главное меню", place: "main_menu", descriptor: nil},
  {title: "Меню в шапке", place: "top_menu", descriptor: nil}
])
MenuItem.create!([
  {menu_id: 1, menu_item_id: 1, title: "Каталог", link: "/product_categories", position: 1, descriptor: nil},
  {menu_id: 1, menu_item_id: 1, title: "Статьи", link: "/post_categories/1", position: 2, descriptor: nil},
  {menu_id: 3, menu_item_id: 1, title: "Ссылка", link: "/", position: 1, descriptor: nil},
  {menu_id: 3, menu_item_id: 1, title: "Ссылка", link: "/", position: 2, descriptor: nil},
  {menu_id: 3, menu_item_id: 1, title: "Ссылка", link: "/", position: 3, descriptor: nil},
  {menu_id: 3, menu_item_id: 1, title: "Ссылка", link: "/", position: 4, descriptor: nil}
])
Post.create!([
  {post_category_id: 1, title: "Новость 1", text: "<p>Интернет магазин керамической плитки<br />\r\nДобро пожаловать в интернет-магазин www.plitka.ua.<br />\r\nВ ассортименте нашего магазина есть керамическая плитка, которую можно использовать для обустройства любого жилого помещения, плитка для ванной с влагоустойчивыми характеристиками, плитка напольная - имеет свойства износоустойчивости. Керамогранит, керамический гранит, это современный чрезвычайно прочный материал, который по своим характеристикам не уступает натуральному граниту. Клинкерная плитка, область применения клинкера многообразна и главным качеством и преимуществом является его морозоустойчивость и жароустойчивость одновременно. Мозаика - это прежде всего декоративный элемент в дизайне помещения, изготавливается мозаика из стекла, керамики, смальты, камня, золота, платины. Сантехника &ndash; это то, без чего не обходится ни одна ванная комната. У нас представлены - компакты, умывальники, душевые уголки, смесители, мебель для ванной комнаты и многое другое. Строительная химия - занимаясь плиткой нельзя забывать о сопутствующих товарах, таких как клей для плитки, затирка для плитки, герметик для плитки.<br />\r\nАссортимент магазина постоянно расширяется, если Вы не нашли необходимую продукцию, Вы можете задать вопрос нашим консультантам и они помогут Вам.<br />\r\nВ разделе Важно знать, для Вас собрана информация, которая пригодится при покупке плитки.&nbsp;<br />\r\nВ наших салонах, Вы можете ознакомиться с ассортиментом и получить консультацию.&nbsp;<br />\r\nЗвоните! Пишите! Приходите!&nbsp;<br />\r\nЛегкого Вам ремонта!</p>\r\n", lead: "Интернет магазин керамической плитки\r\nДобро пожаловать в интернет-магазин www.plitka.ua.\r\nВ ассортименте нашего магазина есть керамическая плитка, которую можно использовать для обустройства любого жилого помещения, плитка для ванной с влагоустойчивыми характеристиками, плитка напольная - имеет свойства износоустойчивости. Керамогранит, керамический гранит, это современный чрезвычайно прочный материал, который по своим характеристикам не уступает натуральному граниту. Клинкерная плитка, область применения клинкера многообразна и главным качеством и преимуществом является его морозоустойчивость и жароустойчивость одновременно. ", meta_title: "Title:", meta_description: "Description:", meta_keywords: "Keywords:", avatar_file_name: "product_img_1.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 7549, avatar_updated_at: "2015-05-17 06:34:45"},
  {post_category_id: 1, title: "Новость 2", text: "<p>Интернет магазин керамической плитки<br />\r\nДобро пожаловать в интернет-магазин www.plitka.ua.<br />\r\nВ ассортименте нашего магазина есть керамическая плитка, которую можно использовать для обустройства любого жилого помещения, плитка для ванной с влагоустойчивыми характеристиками, плитка напольная - имеет свойства износоустойчивости. Керамогранит, керамический гранит, это современный чрезвычайно прочный материал, который по своим характеристикам не уступает натуральному граниту. Клинкерная плитка, область применения клинкера многообразна и главным качеством и преимуществом является его морозоустойчивость и жароустойчивость одновременно. Мозаика - это прежде всего декоративный элемент в дизайне помещения, изготавливается мозаика из стекла, керамики, смальты, камня, золота, платины. Сантехника &ndash; это то, без чего не обходится ни одна ванная комната. У нас представлены - компакты, умывальники, душевые уголки, смесители, мебель для ванной комнаты и многое другое. Строительная химия - занимаясь плиткой нельзя забывать о сопутствующих товарах, таких как клей для плитки, затирка для плитки, герметик для плитки.<br />\r\nАссортимент магазина постоянно расширяется, если Вы не нашли необходимую продукцию, Вы можете задать вопрос нашим консультантам и они помогут Вам.<br />\r\nВ разделе Важно знать, для Вас собрана информация, которая пригодится при покупке плитки.&nbsp;<br />\r\nВ наших салонах, Вы можете ознакомиться с ассортиментом и получить консультацию.&nbsp;<br />\r\nЗвоните! Пишите! Приходите!&nbsp;<br />\r\nЛегкого Вам ремонта!</p>\r\n", lead: "Интернет магазин керамической плитки\r\nДобро пожаловать в интернет-магазин www.plitka.ua.\r\nВ ассортименте нашего магазина есть керамическая плитка, которую можно использовать для обустройства любого жилого помещения, плитка для ванной с влагоустойчивыми характеристиками, плитка напольная - имеет свойства износоустойчивости. Керамогранит, керамический гранит, это современный чрезвычайно прочный материал, который по своим характеристикам не уступает натуральному граниту. Клинкерная плитка, область применения клинкера многообразна и главным качеством и преимуществом является его морозоустойчивость и жароустойчивость одновременно. ", meta_title: "", meta_description: "", meta_keywords: "", avatar_file_name: "product_img_1.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 7549, avatar_updated_at: "2015-05-17 06:34:50"},
  {post_category_id: 1, title: "Новость 3", text: "<p>Интернет магазин керамической плитки<br />\r\nДобро пожаловать в интернет-магазин www.plitka.ua.<br />\r\nВ ассортименте нашего магазина есть керамическая плитка, которую можно использовать для обустройства любого жилого помещения, плитка для ванной с влагоустойчивыми характеристиками, плитка напольная - имеет свойства износоустойчивости. Керамогранит, керамический гранит, это современный чрезвычайно прочный материал, который по своим характеристикам не уступает натуральному граниту. Клинкерная плитка, область применения клинкера многообразна и главным качеством и преимуществом является его морозоустойчивость и жароустойчивость одновременно. Мозаика - это прежде всего декоративный элемент в дизайне помещения, изготавливается мозаика из стекла, керамики, смальты, камня, золота, платины. Сантехника &ndash; это то, без чего не обходится ни одна ванная комната. У нас представлены - компакты, умывальники, душевые уголки, смесители, мебель для ванной комнаты и многое другое. Строительная химия - занимаясь плиткой нельзя забывать о сопутствующих товарах, таких как клей для плитки, затирка для плитки, герметик для плитки.<br />\r\nАссортимент магазина постоянно расширяется, если Вы не нашли необходимую продукцию, Вы можете задать вопрос нашим консультантам и они помогут Вам.<br />\r\nВ разделе Важно знать, для Вас собрана информация, которая пригодится при покупке плитки.&nbsp;<br />\r\nВ наших салонах, Вы можете ознакомиться с ассортиментом и получить консультацию.&nbsp;<br />\r\nЗвоните! Пишите! Приходите!&nbsp;<br />\r\nЛегкого Вам ремонта!</p>\r\n", lead: "Интернет магазин керамической плитки\r\nДобро пожаловать в интернет-магазин www.plitka.ua.\r\nВ ассортименте нашего магазина есть керамическая плитка, которую можно использовать для обустройства любого жилого помещения, плитка для ванной с влагоустойчивыми характеристиками, плитка напольная - имеет свойства износоустойчивости. Керамогранит, керамический гранит, это современный чрезвычайно прочный материал, который по своим характеристикам не уступает натуральному граниту. Клинкерная плитка, область применения клинкера многообразна и главным качеством и преимуществом является его морозоустойчивость и жароустойчивость одновременно. ", meta_title: "", meta_description: "", meta_keywords: "", avatar_file_name: "product_img_1.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 7549, avatar_updated_at: "2015-05-17 06:34:57"},
  {post_category_id: 1, title: "Новость 4", text: "<p>Интернет магазин керамической плитки<br />\r\nДобро пожаловать в интернет-магазин www.plitka.ua.<br />\r\nВ ассортименте нашего магазина есть керамическая плитка, которую можно использовать для обустройства любого жилого помещения, плитка для ванной с влагоустойчивыми характеристиками, плитка напольная - имеет свойства износоустойчивости. Керамогранит, керамический гранит, это современный чрезвычайно прочный материал, который по своим характеристикам не уступает натуральному граниту. Клинкерная плитка, область применения клинкера многообразна и главным качеством и преимуществом является его морозоустойчивость и жароустойчивость одновременно. Мозаика - это прежде всего декоративный элемент в дизайне помещения, изготавливается мозаика из стекла, керамики, смальты, камня, золота, платины. Сантехника &ndash; это то, без чего не обходится ни одна ванная комната. У нас представлены - компакты, умывальники, душевые уголки, смесители, мебель для ванной комнаты и многое другое. Строительная химия - занимаясь плиткой нельзя забывать о сопутствующих товарах, таких как клей для плитки, затирка для плитки, герметик для плитки.<br />\r\nАссортимент магазина постоянно расширяется, если Вы не нашли необходимую продукцию, Вы можете задать вопрос нашим консультантам и они помогут Вам.<br />\r\nВ разделе Важно знать, для Вас собрана информация, которая пригодится при покупке плитки.&nbsp;<br />\r\nВ наших салонах, Вы можете ознакомиться с ассортиментом и получить консультацию.&nbsp;<br />\r\nЗвоните! Пишите! Приходите!&nbsp;<br />\r\nЛегкого Вам ремонта!</p>\r\n", lead: "Интернет магазин керамической плитки\r\nДобро пожаловать в интернет-магазин www.plitka.ua.\r\nВ ассортименте нашего магазина есть керамическая плитка, которую можно использовать для обустройства любого жилого помещения, плитка для ванной с влагоустойчивыми характеристиками, плитка напольная - имеет свойства износоустойчивости. Керамогранит, керамический гранит, это современный чрезвычайно прочный материал, который по своим характеристикам не уступает натуральному граниту. Клинкерная плитка, область применения клинкера многообразна и главным качеством и преимуществом является его морозоустойчивость и жароустойчивость одновременно. ", meta_title: "", meta_description: "", meta_keywords: "", avatar_file_name: "product_img_1.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 7549, avatar_updated_at: "2015-05-17 06:35:02"}
])
PostCategory.create!([
  {title: "Новости", description: "<p>Здесь будут новости Здесь будут новости Здесь будут новости Здесь будут новости Здесь будут новости Здесь будут новости Здесь будут новости Здесь будут новости Здесь будут новости Здесь будут новости Здесь будут новости Здесь будут новости Здесь будут новости</p>", meta_title: "", meta_description: "", meta_keywords: "", avatar_file_name: "bl2.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 2035, avatar_updated_at: "2015-04-27 18:18:36"},
  {title: "Акционные предложения", description: "<p>Здесь описание категории&nbsp;&nbsp; Здесь описание категории&nbsp;&nbsp; Здесь описание категории&nbsp;&nbsp; Здесь описание категории&nbsp;&nbsp; Здесь описание категории&nbsp;&nbsp; Здесь описание категории&nbsp;&nbsp; Здесь описание категории&nbsp;&nbsp; Здесь описание категории&nbsp;&nbsp; Здесь описание категории&nbsp;&nbsp; Здесь описание категории&nbsp;&nbsp; Здесь описание категории&nbsp;&nbsp; Здесь описание категории&nbsp;&nbsp; Здесь описание категории&nbsp;&nbsp;</p>", meta_title: "", meta_description: "", meta_keywords: "", avatar_file_name: "bl2.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 2035, avatar_updated_at: "2015-04-27 16:22:02"},
  {title: "Статьи для продвижения", description: "<p>Здесь статьи для продвижения</p>", meta_title: "", meta_description: "", meta_keywords: "", avatar_file_name: nil, avatar_content_type: nil, avatar_file_size: nil, avatar_updated_at: nil}
])
Project.create!([
  {name: "Основной  проект2 Основной  проект2 ", sku: "111", description: "<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\r\n\r\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\r\n\r\n<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\r\n\r\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\r\n\r\n<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\r\n", start_price: "2000", final_price: "1000", type_deal: "sale", rooms: "1 + 0", area: 111, condition: "under_construction", to_center: 111, mount_build: 1, year_build: 111, has_conditioning: true, has_white_goods: true, has_furniture: true, has_water_heater: true, has_tapu: true, has_iskana: true, avatar: "1.png", type_object: "flat", to_airport: 111, meta_title: "keywords", meta_description: "", meta_keywords: "", meta_copyright: "", project_category_id: 1, some_manager: 1, custom_sku: true, start_pice: 0, final_pice: 0},
  {name: "Название", sku: "111", description: "<p>1111</p>\r\n", start_price: "222", final_price: "333", type_deal: "sale", rooms: "1 + 0", area: 444, condition: "under_construction", to_center: 555, mount_build: 7, year_build: 888, has_conditioning: true, has_white_goods: false, has_furniture: false, has_water_heater: true, has_tapu: true, has_iskana: false, avatar: "_________________2015-04-08_09_14_06.png", type_object: "flat", to_airport: 666, meta_title: "111", meta_description: "222", meta_keywords: "333", meta_copyright: "44", project_category_id: 1, some_manager: 5, custom_sku: false, start_pice: 0, final_pice: 0},
  {name: "Основной  проект2", sku: "111", description: "<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\r\n\r\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\r\n\r\n<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\r\n\r\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\r\n\r\n<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\r\n", start_price: "2000", final_price: "1000", type_deal: "sale", rooms: "1 + 0", area: 111, condition: "under_construction", to_center: 111, mount_build: 1, year_build: 111, has_conditioning: true, has_white_goods: true, has_furniture: true, has_water_heater: true, has_tapu: true, has_iskana: true, avatar: nil, type_object: "flat", to_airport: 111, meta_title: "keywords", meta_description: "", meta_keywords: "", meta_copyright: "", project_category_id: 1, some_manager: 1, custom_sku: true, start_pice: 0, final_pice: 0},
  {name: "Название", sku: "111", description: "<p>1111</p>\r\n", start_price: "222", final_price: "333", type_deal: "sale", rooms: "1 + 0", area: 444, condition: "under_construction", to_center: 555, mount_build: 7, year_build: 888, has_conditioning: true, has_white_goods: false, has_furniture: false, has_water_heater: true, has_tapu: true, has_iskana: false, avatar: nil, type_object: "flat", to_airport: 666, meta_title: "111", meta_description: "222", meta_keywords: "333", meta_copyright: "44", project_category_id: 1, some_manager: 5, custom_sku: false, start_pice: 0, final_pice: 0},
  {name: "Название", sku: "111", description: "<p>1111</p>\r\n", start_price: "222", final_price: "333", type_deal: "sale", rooms: "1 + 0", area: 444, condition: "under_construction", to_center: 555, mount_build: 7, year_build: 888, has_conditioning: true, has_white_goods: false, has_furniture: false, has_water_heater: true, has_tapu: true, has_iskana: false, avatar: nil, type_object: "flat", to_airport: 666, meta_title: "111", meta_description: "222", meta_keywords: "333", meta_copyright: "44", project_category_id: 1, some_manager: 5, custom_sku: false, start_pice: 0, final_pice: 0},
  {name: "Название", sku: "111", description: "<p>1111</p>\r\n", start_price: "222", final_price: "333", type_deal: "sale", rooms: "1 + 0", area: 444, condition: "under_construction", to_center: 555, mount_build: 7, year_build: 888, has_conditioning: true, has_white_goods: false, has_furniture: false, has_water_heater: true, has_tapu: true, has_iskana: false, avatar: nil, type_object: "flat", to_airport: 666, meta_title: "111", meta_description: "222", meta_keywords: "333", meta_copyright: "44", project_category_id: 1, some_manager: 5, custom_sku: false, start_pice: 0, final_pice: 0},
  {name: "Название", sku: "111", description: "<p>1111</p>\r\n", start_price: "222", final_price: "333", type_deal: "sale", rooms: "1 + 0", area: 444, condition: "under_construction", to_center: 555, mount_build: 7, year_build: 888, has_conditioning: true, has_white_goods: false, has_furniture: false, has_water_heater: true, has_tapu: true, has_iskana: false, avatar: nil, type_object: "flat", to_airport: 666, meta_title: "111", meta_description: "222", meta_keywords: "333", meta_copyright: "44", project_category_id: 1, some_manager: 5, custom_sku: false, start_pice: 0, final_pice: 0},
  {name: "Название", sku: "111", description: "<p>1111</p>\r\n", start_price: "222", final_price: "333", type_deal: "sale", rooms: "1 + 0", area: 444, condition: "under_construction", to_center: 555, mount_build: 7, year_build: 888, has_conditioning: true, has_white_goods: false, has_furniture: false, has_water_heater: true, has_tapu: true, has_iskana: false, avatar: nil, type_object: "flat", to_airport: 666, meta_title: "111", meta_description: "222", meta_keywords: "333", meta_copyright: "44", project_category_id: 1, some_manager: 5, custom_sku: false, start_pice: 0, final_pice: 0},
  {name: "Название", sku: "111", description: "<p>1111</p>\r\n", start_price: "222", final_price: "333", type_deal: "sale", rooms: "1 + 0", area: 444, condition: "under_construction", to_center: 555, mount_build: 7, year_build: 888, has_conditioning: true, has_white_goods: false, has_furniture: false, has_water_heater: true, has_tapu: true, has_iskana: false, avatar: nil, type_object: "flat", to_airport: 666, meta_title: "111", meta_description: "222", meta_keywords: "333", meta_copyright: "44", project_category_id: 1, some_manager: 5, custom_sku: false, start_pice: 0, final_pice: 0},
  {name: "Название", sku: "111", description: "<p>1111</p>\r\n", start_price: "222", final_price: "333", type_deal: "sale", rooms: "1 + 0", area: 444, condition: "under_construction", to_center: 555, mount_build: 7, year_build: 888, has_conditioning: true, has_white_goods: false, has_furniture: false, has_water_heater: true, has_tapu: true, has_iskana: false, avatar: nil, type_object: "flat", to_airport: 666, meta_title: "111", meta_description: "222", meta_keywords: "333", meta_copyright: "44", project_category_id: 1, some_manager: 5, custom_sku: false, start_pice: 0, final_pice: 0},
  {name: "Название", sku: "111", description: "<p>1111</p>\r\n", start_price: "222", final_price: "333", type_deal: "sale", rooms: "1 + 0", area: 444, condition: "under_construction", to_center: 555, mount_build: 7, year_build: 888, has_conditioning: true, has_white_goods: false, has_furniture: false, has_water_heater: true, has_tapu: true, has_iskana: false, avatar: nil, type_object: "flat", to_airport: 666, meta_title: "111", meta_description: "222", meta_keywords: "333", meta_copyright: "44", project_category_id: 1, some_manager: 5, custom_sku: false, start_pice: 0, final_pice: 0},
  {name: "Название", sku: "111", description: "<p>1111</p>\r\n", start_price: "222", final_price: "333", type_deal: "sale", rooms: "1 + 0", area: 444, condition: "under_construction", to_center: 555, mount_build: 7, year_build: 888, has_conditioning: true, has_white_goods: false, has_furniture: false, has_water_heater: true, has_tapu: true, has_iskana: false, avatar: nil, type_object: "flat", to_airport: 666, meta_title: "111", meta_description: "222", meta_keywords: "333", meta_copyright: "44", project_category_id: 1, some_manager: 5, custom_sku: false, start_pice: 0, final_pice: 0}
])
Project::HABTM_Managers.create!([
  {project_id: nil, manager_id: 4},
  {project_id: 10, manager_id: 3},
  {project_id: 10, manager_id: 3},
  {project_id: 10, manager_id: 3},
  {project_id: 10, manager_id: 5},
  {project_id: 10, manager_id: 5},
  {project_id: 10, manager_id: 5},
  {project_id: 10, manager_id: 5},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1},
  {project_id: 1, manager_id: 1}
])
ProjectApplicationMail.create!([
  {project_id: 1, name: "Имя", email: "Email"},
  {project_id: 1, name: "Имя", email: "Email"}
])
ProjectAttacment.create!([
  {project_id: 10, image: "nastol.com.ua_138609.jpg", place: nil},
  {project_id: 10, image: "nastol.com.ua_138448.jpg", place: nil},
  {project_id: 10, image: "nastol.com.ua_138571.jpg", place: nil},
  {project_id: 10, image: "nastol.com.ua_138324.jpg", place: nil},
  {project_id: 1, image: "nastol.com.ua_138609.jpg", place: nil},
  {project_id: 1, image: "nastol.com.ua_138448.jpg", place: nil},
  {project_id: 1, image: "nastol.com.ua_138571.jpg", place: nil},
  {project_id: 1, image: "nastol.com.ua_138324.jpg", place: nil}
])
ProjectCategory.create!([
  {title: "Аланья", description: nil, avatar: nil, meta_title: nil, meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Анталья", description: nil, avatar: nil, meta_title: nil, meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Газипаша", description: nil, avatar: nil, meta_title: nil, meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Бордум", description: nil, avatar: nil, meta_title: nil, meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Белек", description: nil, avatar: nil, meta_title: nil, meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Авсаллар", description: nil, avatar: nil, meta_title: nil, meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Кемер", description: nil, avatar: nil, meta_title: nil, meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Кестель", description: nil, avatar: nil, meta_title: nil, meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Махмутлар", description: nil, avatar: nil, meta_title: nil, meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Оба", description: nil, avatar: nil, meta_title: nil, meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Канаклы", description: nil, avatar: nil, meta_title: nil, meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Каргыджак", description: nil, avatar: nil, meta_title: nil, meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Каш", description: nil, avatar: nil, meta_title: nil, meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Сиде", description: nil, avatar: nil, meta_title: nil, meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Тосмур", description: nil, avatar: nil, meta_title: nil, meta_description: nil, meta_keywords: nil, meta_copyright: nil}
])
ProjectCategoryAttacment.create!([
  {project_category_id: 1, image: "nastol.com.ua_138609.jpg"},
  {project_category_id: 1, image: "nastol.com.ua_138448.jpg"},
  {project_category_id: 4, image: "1920x1080_75.jpg"},
  {project_category_id: 4, image: "nastol.com.ua_138324.jpg"},
  {project_category_id: 4, image: "nastol.com.ua_138448.jpg"},
  {project_category_id: 4, image: "nastol.com.ua_138571.jpg"},
  {project_category_id: 4, image: "nastol.com.ua_138609.jpg"}
])
Question.create!([
  {name: "5", email: "2", phone: "3", skype: "4", message: nil},
  {name: "1111", email: "222", phone: "333", skype: "444", message: "55"},
  {name: "111", email: "222", phone: "33", skype: "", message: ""},
  {name: "dima", email: "d.antoneko94@mail.t", phone: "12345", skype: "progrmmer_1209", message: "текст вопроса"}
])
SiteVariable.create!([
  {name: "Код гугл аналитики", value: "", place: "settings"},
  {name: "Код яндекс метрики", value: "", place: "settings"},
  {name: "Заголовок", value: "Содержимое текста в футоре", place: "footer"},
  {name: "Центральный блок", value: "Содержимое центрального блока", place: "header"},
  {name: "Правый блок", value: "Содержимое правого блока", place: "header"},
  {name: "Содержимое страницы контакты", value: "<p>+7 123 435 456</p>", place: "page_contact"},
  {name: "Информация о компании", value: "Информация о компании здесь", place: "page_company_info"},
  {name: "Доставка и оплата текст", value: "Текст доставки и оплаты", place: "page_delivery_pay"},
  {name: "Текст на главной странице", value: "В ассортименте нашего магазина есть керамическая плитка, которую можно использовать для обустройства любого жилого помещения, плитка для ванной с влагоустойчивыми характеристиками, плитка напольная - имеет свойства износоустойчивости. Керамогранит, керамический гранит, это современный чрезвычайно прочный материал, который по своим характеристикам не уступает натуральному граниту. Клинкерная плитка, область применения клинкера многообразна и главным качеством и преимуществом является его морозоустойчивость и жароустойчивость одновременно. Мозаика - это прежде всего декоративный элемент в дизайне помещения, изготавливается мозаика из стекла, керамики, смальты, камня, золота, платины. Сантехника – это то, без чего не обходится ни одна ванная комната. У нас представлены - компакты, умывальники, душевые уголки, смесители, мебель для ванной комнаты и многое другое. Строительная химия - занимаясь плиткой нельзя забывать о сопутствующих товарах, таких как клей для плитки, затирка для плитки, герметик для плитки.\r\nАссортимент магазина постоянно расширяется, если Вы не нашли необходимую продукцию, Вы можете задать вопрос нашим консультантам и они помогут Вам.\r\nВ разделе Важно знать, для Вас собрана информация, которая пригодится при покупке плитки. \r\nВ наших салонах, Вы можете ознакомиться с ассортиментом и получить консультацию. ", place: "page_home"},
  {name: "Title", value: "<p>тайтл главной</p>", place: "page_home"},
  {name: "Description", value: "zz", place: "page_home"},
  {name: "Keywords", value: "zz", place: "page_home"},
  {name: "Title", value: "zz", place: "page_contact"},
  {name: "Description", value: "zz", place: "page_contact"},
  {name: "Keywords", value: "zz", place: "page_contact"},
  {name: "Title", value: "zz", place: "page_delivery_pay"},
  {name: "Description", value: "zz", place: "page_delivery_pay"},
  {name: "Keywords", value: "zz", place: "page_delivery_pay"}
])
Slide.create!([
  {slider_id: 1, title: "Слайд 1", content: "Текст слайда 1", avatar_file_name: "fw_slide_01.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 22777, avatar_updated_at: "2015-05-13 02:34:19"},
  {slider_id: 1, title: "Слайд 2", content: "Текст слайда 2", avatar_file_name: "fw_slide_01.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 22777, avatar_updated_at: "2015-05-13 02:34:26"},
  {slider_id: 1, title: "Слайд 3", content: "Текст слайда 3", avatar_file_name: "fw_slide_01.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 22777, avatar_updated_at: "2015-05-13 02:34:32"}
])
Slider.create!([
  {title: "Основной слайдер"}
])
