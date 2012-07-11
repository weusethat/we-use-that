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
  <div class="featured-interviews">
HTML
    posts.each do |post|
      post_data = post.to_liquid
      html << <<-HTML
      <div class="featured-interview">
      <a href="#{post.url}">
        <img src="/images/featured#{ post.url }.png">
      </a>
      <a href="#{ post.url }">
        <div class="title">
          #{post_data['title']}
        </div>
      </a>
      <div class="subtitle">
        #{post_data['subtitle']}
      </div>
      <div class="posted-date">
        Posted on #{ post.date.strftime("%Y-%m-%d") } in
      </div>
      <div class="tags">
      HTML
      post.tags.each do |tag|
        html << <<-HTML
        <a href="/tags/#{ tag }">
          <div class="tag">
            #{ tag }
          </div>
        </a>
        HTML
      end
      html << "</div" # /tags
      html << "</div>" # /featured-interview
    end
    html << '</div>' # /featured-interviews
    
    File.open("tags/#{tag}.html", 'w+') do |file|
      file.puts html
    end
  end
  puts 'Done.'
end