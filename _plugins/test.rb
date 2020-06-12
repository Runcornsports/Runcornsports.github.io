module Jekyll
    class TeamPageGenerator < Generator 
        safe true

        def generate(site)
            site.pages << TeamPage.new(site, site.source, 'teams')
        end

    end

    class TeamPage < Page 
        def initialize(site, base, dir)
            @site = site
            @base = base
            @dir = dir
            @name = 'teamOne.html'

            self.process(@name)
            self.read_yaml(File.join(base, '_layouts'), 'default.html')
            
            self.data['title'] = "Team One"
        end
    end

end
