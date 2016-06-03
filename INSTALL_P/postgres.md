# Requirements
Tutorial verified on:
* Debian 8.1
* Ruby 2.2.4p230
* Rails 4.2.5

# Postgresql 9.4
1. Update repositories:

        sudo apt-get update
2. Install Postgresql, postggresql extensions and 1 development library: 

        sudo apt-get install postgresql postgresql-contrib libpq-dev
3. Run postgresql command-line client: 

        sudo -u postgres psql
    1. Set password for created DB user: 
    
            \password pushtype
    2. Quit postgresql command-line client:
    
            \q
4. Open DB access confing file in text editor: 

        vim /etc/postgresql/9.4/main/pg_hba.conf
   1. Comment out lines:
  
            # local   all             all                                     peer
            # host    all             all             127.0.0.1/32            md5
            # host    all             all             ::1/128                 md5
    2. Insert new lines:

            local   all             all                                     trust
            host    all             all             127.0.0.1/32            trust
            host    all             all             ::1/128                 trust

# New Rails app based on Postgresql
1. Generate new dummy rails application with Postgres as DB storage

        rails new appname -d postgresql
2. Go to app home directory:

        cd appname
3. Edit DB connection configuration:

        vim config/database.yml
    1. Under the section "default" under line "pool: 5" add:
    
            host: localhost
            username: pushtype
            password: pushtype_password
4. Create databases (test and development) for appliaction:
        
        rake db:create
5. Run server for test appliaction:

        rails server --binding=192.168.35.10 --port=8080
6. Turn off server

        <ctrl-c>

# Install Pushtype
1. Add ``push_type`` gem to rails app:
        
        vim ./Gemfile
   1. Insert new line:

            gem 'push_type'
2. Bundle new gem:

        bundle install
3. Install app:

        rails g push_type:install
4. Create new user for Pushtype app:

        rake push_type:create_user
5. Run serwer:

        rails server -d --binding=192.168.35.10 --port=8080