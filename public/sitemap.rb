require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = 'http://alanyaproperties.ru'
SitemapGenerator::Sitemap.create do
  add '/home'
  add '/contact_us'
  add '/peoples'
  add '/partners'
  add '/reviews'
  add '/free_tour'
  add '/reviews'
  add '/our_projects'
end
SitemapGenerator::Sitemap.ping_search_engines # Not needed if you use the rake tasks
