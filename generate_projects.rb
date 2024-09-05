require 'json'
require 'fileutils'

# Load the JSON data
file = File.read('_data/projects.json')
projects = JSON.parse(file)

# Ensure the output directory exists
output_dir = '_projects'
FileUtils.mkdir_p(output_dir)

# Loop through each project and create a markdown file
projects.each do |project|
  filename = "#{output_dir}/#{project['title'].downcase.gsub(' ', '-')}.md"
  File.open(filename, 'w') do |f|
    f.puts "---"
    f.puts "layout: project"
    f.puts "title: \"#{project['title']}\""
    f.puts "project_name: \"#{project['project_name']}\""
    f.puts "description: \"#{project['description']}\""
    f.puts "date: #{project['date']}"
    f.puts "technologies:"
    project['technologies'].each do |tech|
      f.puts "  - #{tech}"
    end
    f.puts "permalink: \"/projects/#{project['title'].downcase.gsub(' ', '-')}/\""
    f.puts "---"
  end
end