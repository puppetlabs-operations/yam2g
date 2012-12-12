Gem::Specification.new do |gem|

  gem.name    = 'yam2g'
  gem.version = '0.0.1'
  gem.date    = Date.today.to_s

  gem.summary     = "Converts and sends munin data to Graphite"
  gem.description = "Leverages the json2graphite gem to connect to a munin-node process and convert all available data to a format that is Graphite friendly.  After data has been converted it is sent off to the Graphite server of your choice."

  gem.author   = 'Cody Herriges'
  gem.email    = 'cody@puppetlabs.com'
  gem.homepage = 'https://github.com/puppetlabs-operations/yam2g'

  # ensure the gem is built out of versioned files
   gem.files = Dir['Rakefile', '{bin,lib}/**/*', 'README*', 'LICENSE*'] & %x(git ls-files -z).split("\0")

   gem.executables << 'yam2g'

   gem.add_dependency('json')
   gem.add_dependency('munin-ruby')
   gem.add_dependency('facter')
   gem.add_dependency('json2graphite')

end

