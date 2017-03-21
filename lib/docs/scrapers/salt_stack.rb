module Docs
  class SaltStack < UrlScraper
    self.name = 'SaltStack'
    self.type = 'saltstack'
    self.release = 'latest'
    self.base_url = 'https://docs.saltstack.com/en/latest/ref/states/all/'
    self.root_path = 'index.html'
    self.links = {
      home: 'https://saltstack.com/',
      code: 'https://github.com/saltstack/salt'
    }

    html_filters.push 'salt_stack/clean_html'

    options[:skip_patterns] = [/install/]

    options[:attribution] = <<-HTML
      &copy; 2011&ndash;2017 Michael Bodnarchuk and contributors<br>
      Licensed under the MIT License.
    HTML
  end
end
