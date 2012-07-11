desc 'Generate tags page'
task :tags do
  puts "Generating tags..."
  require 'rubygems'
  require 'jekyll'
  include Jekyll::Filters
  
  options = Jekyll.configuration({})
  site = Jekyll::Site.new(options)
  site.read_posts('')
  site.tags.sort.each do |tag, posts|
    html = ''
    html = <<-HTML
---
layout: default
title: "#{tag.capitalize}"
---
    <h1 id="#{tag}">Postings tagged "#{tag}"</h1>
HTML
    html << '<ul class="posts">'
    posts.each do |post|
      post_data = post.to_liquid
      html << "<li><a href=\"#{post.url}\">#{post_data['title']}</a></li>"
    end
    html << '</ul>'
    
    File.open("tags/#{tag}.html", 'w+') do |file|
      file.puts html
    end
  end
  puts 'Done.'
end