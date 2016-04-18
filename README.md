# Docker image with Apache and PHP 5.5.9 running on Ubuntu 14.04
Docker image with Apache optimized to run Drupal 7 websites.

Inclues:

- Composer
- Drush
- PHP uploadprogress
- APC

### Build

		$ make build

		or

		$ docker build --tag=yourname/apache-drupal7 .

### Use
The website will be loaded from /var/www so make sure you add your files there.

		$ docker run -d -v application:/var/www -p 80:80 iiiepe/apache-drupal7

#### With fig

		web:
		  image: iiiepe/apache-drupal7
		  volumes:
		    - application:/var/www
		    - logs:/var/log/supervisor
		  ports:
		    - "8000:80"
