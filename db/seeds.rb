Banner.create!([
  {title: "Баннер 1", avatar_file_name: "banner_img_1.png", avatar_content_type: "image/png", avatar_file_size: 3178, avatar_updated_at: "2015-05-13 05:51:01", link: "#"},
  {title: "Баннер 2", avatar_file_name: "banner_img_1.png", avatar_content_type: "image/png", avatar_file_size: 3178, avatar_updated_at: "2015-05-13 05:50:50", link: "#"}
])
ProjectCategory.create!([
  {title: "Алания", description: "<p>zzzz</p>\r\n", avatar: "_________________2015-04-12_09_05_20.png", meta_title: "333", meta_description: nil, meta_keywords: nil, meta_copyright: "44"},
  {title: "Кестель", description: "z", avatar: "z", meta_title: nil, meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Каргыджак", description: "<p>zzzz</p>\r\n", avatar: nil, meta_title: "333", meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Категория 2", description: "<p>zzz</p>\r\n", avatar: "wallpaper__29_.jpg", meta_title: "111", meta_description: "222", meta_keywords: "333", meta_copyright: "444"},
  {title: "Авсаллар", description: "<p>zzzz</p>\r\n", avatar: nil, meta_title: "333", meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Оба", description: "<p>zzzz</p>\r\n", avatar: nil, meta_title: "333", meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Тосмур", description: "<p>zzzz</p>\r\n", avatar: nil, meta_title: "333", meta_description: nil, meta_keywords: nil, meta_copyright: nil},
  {title: "Кестель", description: "<p>zzzz</p>\r\n", avatar: nil, meta_title: "333", meta_description: nil, meta_keywords: nil, meta_copyright: nil}
])
Manager.create!([
  {avatar: "1.png", name: "Менеджер 1", description: "главный бугалтер", skype: "skypename", languages: "English", email: "1@mail.ru", phone: "7 1235 34545"},
  {avatar: "2.png", name: "Менеджер 3", description: "главный бугалтер", skype: "skypename", languages: "English", email: "1@mail.ru", phone: "7 1235 34545"},
  {avatar: "3.png", name: "Менеджер 4", description: "главный бугалтер", skype: "skypename", languages: "English", email: "1@mail.ru", phone: "7 1235 34545"},
  {avatar: "4.png", name: "Менеджер 5", description: "главный бугалтер", skype: "skypename", languages: "English", email: "1@mail.ru", phone: "7 1235 34545"},
  {avatar: "6.png", name: "Менеджер 6", description: "главный бугалтер", skype: "skypename", languages: "English", email: "1@mail.ru", phone: "7 1235 34545"}
])
Manager::HABTM_Projects.create!([
  {project_id: 1, manager_id: 4},
  {project_id: 1, manager_id: 5},
  {project_id: 1, manager_id: 1},
  {project_id: 3, manager_id: 4},
  {project_id: 2, manager_id: 4},
  {project_id: 5, manager_id: 3},
  {project_id: 6, manager_id: 4},
  {project_id: 9, manager_id: 6},
  {project_id: 9, manager_id: 4}
])
ManagersProject.create!([
  {project_id: 1, manager_id: 4},
  {project_id: 1, manager_id: 5},
  {project_id: 1, manager_id: 1},
  {project_id: 3, manager_id: 4},
  {project_id: 2, manager_id: 4},
  {project_id: 5, manager_id: 3},
  {project_id: 6, manager_id: 4},
  {project_id: 9, manager_id: 6},
  {project_id: 9, manager_id: 4}
])
Menu.create!([
  {title: "Главное меню", place: "main_menu"},
  {title: "Меню в шапке", place: "top_menu"}
])
MenuItem.create!([
  {menu_id: 1, menu_item_id: 1, title: "Каталог", link: "/product_categories", position: 1},
  {menu_id: 1, menu_item_id: 1, title: "Статьи", link: "/post_categories/1", position: 2},
  {menu_id: 3, menu_item_id: 1, title: "Ссылка", link: "/", position: 1},
  {menu_id: 3, menu_item_id: 1, title: "Ссылка", link: "/", position: 2},
  {menu_id: 3, menu_item_id: 1, title: "Ссылка", link: "/", position: 3},
  {menu_id: 3, menu_item_id: 1, title: "Ссылка", link: "/", position: 4}
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
  {name: "Основной  проект", sku: "1234", description: "<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\r\n\r\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\r\n\r\n<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\r\n\r\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\r\n", start_price: "10000", final_price: "20000", type_deal: "sale", rooms: "1 + 0", area: 100, condition: "under_construction", to_center: 10, mount_build: 2, year_build: 2000, has_conditioning: true, has_white_goods: true, has_furniture: true, has_water_heater: true, has_tapu: true, has_iskana: true, avatar: "1.png", type_object: "flat", to_airport: 5, meta_title: "keywords", meta_description: "", meta_keywords: "", meta_copyright: nil, project_category_id: 1, some_manager: 1},
  {name: "Проект 2", sku: "1234", description: "<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\n\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\n\n<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\n\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\n", start_price: "1000", final_price: "2000", type_deal: "none", rooms: " 1 + 0", area: 200, condition: "under_construction", to_center: 5, mount_build: 1, year_build: 1900, has_conditioning: true, has_white_goods: true, has_furniture: false, has_water_heater: false, has_tapu: false, has_iskana: false, avatar: "1.png", type_object: "flat", to_airport: 6, meta_title: "", meta_description: "", meta_keywords: "", meta_copyright: nil, project_category_id: 2, some_manager: 3},
  {name: "Проект 3", sku: "1234", description: "<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\n\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\n\n<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\n\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\n", start_price: "2000", final_price: "4000", type_deal: "none", rooms: "1 + 2", area: 200, condition: "under_construction", to_center: 200, mount_build: 10, year_build: 1990, has_conditioning: true, has_white_goods: true, has_furniture: false, has_water_heater: false, has_tapu: false, has_iskana: false, avatar: "1.png", type_object: "flat", to_airport: 100, meta_title: "", meta_description: "", meta_keywords: "", meta_copyright: nil, project_category_id: 3, some_manager: 4},
  {name: "Проект 4", sku: "1234", description: "<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\n\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\n\n<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\n\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\n", start_price: "5000", final_price: "10000", type_deal: "sale", rooms: "1 + 2", area: 1000, condition: "under_construction", to_center: 20, mount_build: 10, year_build: 1999, has_conditioning: true, has_white_goods: true, has_furniture: true, has_water_heater: true, has_tapu: true, has_iskana: true, avatar: "1.png", type_object: "flat", to_airport: 10, meta_title: "", meta_description: nil, meta_keywords: nil, meta_copyright: nil, project_category_id: 4, some_manager: 6},
  {name: "Проект 5", sku: "02345", description: "<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\n\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\n\n<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\n\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\n", start_price: "1000", final_price: "2000", type_deal: "sale", rooms: "1 + 3", area: 200, condition: "under_construction", to_center: 20, mount_build: 9, year_build: 2009, has_conditioning: true, has_white_goods: true, has_furniture: true, has_water_heater: true, has_tapu: true, has_iskana: true, avatar: "11.png", type_object: "flat", to_airport: 10, meta_title: "33", meta_description: nil, meta_keywords: nil, meta_copyright: nil, project_category_id: 7, some_manager: 5},
  {name: "Проект 6", sku: "001", description: "<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\n\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\n\n<p>Dignissim nec mollis ante urna nostra pulvinar pretium urna montes sed posuere ridiculus augue bibendum lorem nascetur laoreet interdum viverra torquent gravida convallis potenti sollicitudin accumsan commodo nullam aenean cursus ornare dis mi ad nulla imperdiet varius euismod himenaeos per hac dis primis accumsan id lobortis aptent tincidunt class faucibus</p>\n\n<p>Diam erat blandit libero leo nibh lobortis condimentum posuere taciti senectus volutpat fames montes elit feugiat augue nibh feugiat sociis</p>\n", start_price: "0", final_price: "2000", type_deal: "sale", rooms: "1 + 3", area: 2000, condition: "none", to_center: 10, mount_build: 9, year_build: 2011, has_conditioning: true, has_white_goods: true, has_furniture: false, has_water_heater: false, has_tapu: false, has_iskana: false, avatar: "3.png", type_object: "flat", to_airport: 11, meta_title: "333", meta_description: "", meta_keywords: "", meta_copyright: nil, project_category_id: 6, some_manager: 4}
])
Project::HABTM_Managers.create!([
  {project_id: 1, manager_id: 4},
  {project_id: 1, manager_id: 5},
  {project_id: 1, manager_id: 1},
  {project_id: 3, manager_id: 4},
  {project_id: 2, manager_id: 4},
  {project_id: 5, manager_id: 3},
  {project_id: 6, manager_id: 4},
  {project_id: 9, manager_id: 6},
  {project_id: 9, manager_id: 4}
])
ProjectApplicationMail.create!([
  {project_id: 1, name: "dima", email: "d.antonenko94@mail.ru"},
  {project_id: 1, name: "dima", email: "d.antonenko94@mail.ru"},
  {project_id: 1, name: "dima", email: "d.antonenko94@mail.ru"},
  {project_id: 1, name: "dima", email: "d.antonenko94@mail.ru"},
  {project_id: 1, name: "dima", email: "d.antonenko94@mail.ru"},
  {project_id: 1, name: "dima", email: "d.antonenko94@mail.ru"},
  {project_id: 1, name: "dima", email: "d.antonenko94@mail.ru"}
])
ProjectAttacment.create!([
  {project_id: 3, image: "nastol.com.ua_138324.jpg", place: nil},
  {project_id: 3, image: "nastol.com.ua_138448.jpg", place: nil},
  {project_id: 3, image: "nastol.com.ua_138571.jpg", place: nil},
  {project_id: 3, image: "nastol.com.ua_138609.jpg", place: nil},
  {project_id: 3, image: "wallpaper__29_.jpg", place: nil},
  {project_id: 3, image: "wallpaper__77_.jpg", place: nil},
  {project_id: 4, image: "nastol.com.ua_138324.jpg", place: nil},
  {project_id: 4, image: "nastol.com.ua_138448.jpg", place: nil},
  {project_id: 4, image: "nastol.com.ua_138571.jpg", place: nil},
  {project_id: 4, image: "nastol.com.ua_138609.jpg", place: nil},
  {project_id: 4, image: "wallpaper__29_.jpg", place: nil},
  {project_id: 4, image: "wallpaper__77_.jpg", place: nil},
  {project_id: 5, image: "2.png", place: nil},
  {project_id: 5, image: "3.png", place: nil},
  {project_id: 5, image: "4.png", place: nil},
  {project_id: 5, image: "5.png", place: nil},
  {project_id: 5, image: "6.png", place: nil},
  {project_id: 5, image: "7.png", place: nil},
  {project_id: 5, image: "8.png", place: nil},
  {project_id: 5, image: "9.png", place: nil},
  {project_id: 5, image: "10.png", place: nil},
  {project_id: 5, image: "11.png", place: nil},
  {project_id: 1, image: "2.png", place: nil},
  {project_id: 1, image: "3.png", place: nil},
  {project_id: 1, image: "4.png", place: nil},
  {project_id: 1, image: "5.png", place: nil},
  {project_id: 1, image: "6.png", place: nil},
  {project_id: 1, image: "7.png", place: nil},
  {project_id: 1, image: "8.png", place: nil},
  {project_id: 1, image: "9.png", place: nil},
  {project_id: 1, image: "10.png", place: nil},
  {project_id: 1, image: "11.png", place: nil},
  {project_id: 6, image: "2.png", place: nil},
  {project_id: 6, image: "3.png", place: nil},
  {project_id: 6, image: "4.png", place: nil},
  {project_id: 6, image: "5.png", place: nil},
  {project_id: 6, image: "6.png", place: nil},
  {project_id: 6, image: "7.png", place: nil},
  {project_id: 6, image: "8.png", place: nil},
  {project_id: 6, image: "9.png", place: nil},
  {project_id: 6, image: "10.png", place: nil},
  {project_id: 6, image: "11.png", place: nil},
  {project_id: 7, image: "2.png", place: nil},
  {project_id: 7, image: "3.png", place: nil},
  {project_id: 7, image: "4.png", place: nil},
  {project_id: 7, image: "5.png", place: nil},
  {project_id: 7, image: "6.png", place: nil},
  {project_id: 7, image: "7.png", place: nil},
  {project_id: 7, image: "8.png", place: nil},
  {project_id: 7, image: "9.png", place: nil},
  {project_id: 7, image: "10.png", place: nil},
  {project_id: 7, image: "11.png", place: nil},
  {project_id: 8, image: "1.png", place: nil},
  {project_id: 8, image: "2.png", place: nil},
  {project_id: 8, image: "3.png", place: nil},
  {project_id: 8, image: "4.png", place: nil},
  {project_id: 8, image: "5.png", place: nil},
  {project_id: 8, image: "6.png", place: nil},
  {project_id: 8, image: "7.png", place: nil},
  {project_id: 8, image: "8.png", place: nil},
  {project_id: 8, image: "9.png", place: nil},
  {project_id: 8, image: "10.png", place: nil},
  {project_id: 9, image: "1.png", place: nil},
  {project_id: 9, image: "2.png", place: nil},
  {project_id: 9, image: "4.png", place: nil},
  {project_id: 9, image: "5.png", place: nil},
  {project_id: 9, image: "6.png", place: nil},
  {project_id: 9, image: "7.png", place: nil},
  {project_id: 9, image: "8.png", place: nil},
  {project_id: 9, image: "9.png", place: nil},
  {project_id: 9, image: "10.png", place: nil},
  {project_id: 9, image: "11.png", place: nil}
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
  {project_id: 1, name: "dima", email: "d.antoneko94@mail.t", phone: "124556", skype: "progrmmer_1209", message: "zdkfjkgj"},
  {project_id: 1, name: "zz", email: "1@mail.ry", phone: "124", skype: "42342", message: "42342"},
  {project_id: 1, name: "1", email: "", phone: "", skype: "", message: ""},
  {project_id: 1, name: "1", email: "", phone: "", skype: "", message: ""},
  {project_id: 1, name: "Дмитрий", email: "1@mail.ry", phone: "123456", skype: "progrmmer_1209", message: "Текст вопроса"},
  {project_id: 1, name: "Дмитрий", email: "1@mail.ry", phone: "123456", skype: "progrmmer_1209", message: "Текст вопроса"},
  {project_id: 1, name: "dima", email: "", phone: "", skype: "", message: ""},
  {project_id: 1, name: "dima", email: "", phone: "", skype: "", message: ""}
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
