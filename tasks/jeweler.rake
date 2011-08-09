begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "backupify-rsolr-nokogiri"
    gemspec.summary = "A fork of rsolr that uses nokogiri in place of builder for xml generation"
    gemspec.description = ""
    gemspec.email = "davebenvenuti@gmail.com"
    gemspec.homepage = "http://github.com/backupify/rsolr"
    gemspec.authors = ["Dave Benvenuti", "Ernie Makris"]
    
    gemspec.files = Dir['lib/**/*.rb'] + ['LICENSE', 'README.rdoc', 'CHANGES', 'VERSION']
    
    gemspec.test_files = Dir['spec/**/*.rb'] + ['Rakefile', 'tasks/spec.rake', 'tasks/rdoc.rake']
    
    gemspec.add_dependency('nokogiri', '>= 1.3.3')
    
    now = Time.now
    gemspec.date = now.strftime '%Y-%m-%d'
    
    gemspec.has_rdoc = true
  end
  
  # Jeweler::GemcutterTasks.new
  
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end
