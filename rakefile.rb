desc 'Generate tags page'
task :tags do
  puts "Generating tags..."
  require 'rubygems'
  require 'jekyll'
  include Jekyll::Filters
  
  options = Jekyll.configuration({})
  site = Jekyll::Site.new(options)
  site.read_posts('')
  interview_content = <<-HTML
---
layout: default
title: Interviews
---
<div class="interviews">
  <div class="interview-index">
    <h2>All interviews</h2>
    <ol>
  HTML
  site.posts.sort.reverse.each do |post|
    post_data = post.to_liquid
    interview_content << <<-HTML
      <li>
        <a href="#{ post.url }">
          #{ post_data['title'] }
        </a>
      </li>
    HTML
  end
  
  interview_content << <<-HTML
    </ol>
  </div>
  <div class="tags">
    <h2>All tags:</h2>
  HTML
  site.tags.sort.each do |tag, posts|
    interview_content << <<-HTML
    <a href="/tags/#{ tag }">
      <div class="tag">
        #{ tag }
      </div>
    </a>
    HTML
    
    html = ''
    html = <<-HTML
---
layout: default
title: "#{tag.capitalize}"
---
<div class="featured-interviews">
HTML
    posts.reverse.each do |post|
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
      html << <<-HTML
    </div>
  </div>
    HTML
    end
    html << <<-HTML
</div>
    HTML
    
    File.open("tags/#{tag}.html", 'w+') do |file|
      file.puts html
    end
  end
  interview_content << <<-HTML
  </div>
</div>
  HTML
  File.open("interviews.html", 'w') do |file|
    file.puts interview_content
  end
  puts 'Done.'
end