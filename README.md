<a name="readme-top"></a>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/vyavasthita/mysql-learning">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Mysql Learning</h3>

  <p align="center">
    Mysql!
  </p>
</div>

<p align="right">(<a href="#readme-top">Back To Top</a>)</p>

# About the project
To create base setup for mysql using docker.
Mysql with phpmyadmin and mysqlworkbench in docker environment.

This includes:
* MySql 8
* MySql Workbench
* Phpmyadmin

<p align="right">(<a href="#readme-top">Back To Top</a>)</p>

## Built With

Softwares used in this project.
* [![Docker][Docker]][Docker-url]
* [![DockerCompose][DockerCompose]][Docker-Compose-url]
* [![Makefile][Makefile]][Makefile-url]

<p align="right">(<a href="#readme-top">Back To Top</a>)</p>

## :hammer: Testing
### System Environment
- Docker version 23.0.6 or above
- Docker Compose version v2.17.3 or above
- GNU Make 4.3 or above (Optional)

### Assumptions
- TBD

### Scope
- Tested with docker environment only on Ubuntu 22.04 LTS host system.

<p align="right">(<a href="#readme-top">Back To Top</a>)</p>

## :large_orange_diamond: Technical Details
- TBD

### Directory Structure

```bash
├── data
│	└── sqls
│		├── *.sql
|── docker-compose.yaml
├── Makefile
└── README.md
```
<p align="right">(<a href="#readme-top">Back To Top</a>)</p>

<!-- Getting Started -->
# 	:toolbox: Getting Started
Follow below steps to do the setup.

<!-- Prerequisites -->
## :bangbang: Prerequisites

1. Docker must be installed
2. Docker compose
3. GNU Make (Optional)

<p align="right">(<a href="#readme-top">Back To Top</a>)</p>

<!-- Installation -->
## :gear: Installation

0. Set MySql password
   ```sh
   export MYSQL_ROOT_PASSWORD=<mysql_password_of_your_choice>
   ```

1. Clone the repo
   ```sh
   git clone https://github.com/vyavasthita/mysql-learning.git
   ```

2. Go to root directory 'mysql-learning'.
   ```sh
   cd mysql-learning
   ```

3. Checkout master branch
   ```sh
   git checkout master
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## :gem: Uses
<!-- Env Variables -->
### :key: Start Up .SQL Files

If you want to create new databases/tables/insert data during start up of containers then 
create a .sql file and put your sql commands in a .sql file inside /data/sqls/ directory.

#### :pencil: Notes
Some of the sample .sql files are already present in data/sqls directory.
You can delete these existing .sql files if you do not need them.

<p align="right">(<a href="#readme-top">Back To Top</a>)</p>

<!-- Run -->
### :running: Start Containers

Now you are ready to start the application

1. You must be in root directory 'mysql-learning'.

2. Start containers

```bash
  make
```

This will start 3 docker containers.
- MySql DB
- MySql Workbench
- Phpmyadmin

##### :pencil:
    - If you are not using 'Make' then you can directly run docker compose commands as mentioned in Makefile.

<p align="right">(<a href="#readme-top">Back To Top</a>)</p>
    
<!-- Usage -->
### :eyes: Usage
#### Starting Application

##### Phpmyadmin
```bash
  http://0.0.0.0:8080/
```

Phpmyadmin gets connected automatically with MySql DB

##### MySqlWorkbench
```bash
  http://0.0.0.0:3000/
```

##### Create Connection in MySql Workbench
hostname: mysql-db
port: 3306
username: root

##### :pencil: There is no password is used for MySql (Empty Password).

### :pencil:
- Both MySql workbench and phpmyadmin can be used as GUI for Mysql.

<p align="right">(<a href="#readme-top">Back To Top</a>)</p>

<!-- Stop containers -->
### :test_tube: Stop Containers

To stop all running containers, run the following command

```bash
  make stop
```

<p align="right">(<a href="#readme-top">Back To Top</a>)</p>

<!-- Clean containers -->
### :test_tube: Clean Containers

To clean all running containers, run the following command

```bash
  make clean
```

It will run following commands
	- docker compose stop
	- docker container prune -f
	- docker image prune -f
	- docker network prune -f

Note: Be careful before you clean containers

<p align="right">(<a href="#readme-top">Back To Top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/badge/-contributors-red?logo=github&logoColor=white&style=for-the-badge
[contributors-url]: https://github.com/vyavasthita/mysql-learning/graphs/contributors
[forks-shield]: https://img.shields.io/badge/-forks-pink?logo=github&logoColor=white&style=for-the-badge
[forks-url]: https://github.com/vyavasthita/mysql-learning/network/members
[stars-shield]: https://img.shields.io/badge/-stars-yellow?logo=github&logoColor=white&style=for-the-badge
[stars-url]: https://github.com/vyavasthita/mysql-learning/stargazers
[license-shield]: https://img.shields.io/badge/-license-blue?logo=license&logoColor=white&style=for-the-badge
[license-url]: https://github.com/vyavasthita/mysql-learning/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/diliplakshya/
[Docker]: https://img.shields.io/badge/Docker-4A4A55?style=for-the-badge&logo=docker&logoColor=FF3E00
[Docker-url]: https://www.docker.com/
[DockerCompose]: https://img.shields.io/badge/-Docker%20Compose-blue?logo=docker&logoColor=white&style=for-the-badge
[Docker-Compose-url]: https://docs.docker.com/compose/
[Makefile]: https://img.shields.io/badge/-makefile-red?logo=gnu&logoColor=white&style=for-the-badge
[Makefile-url]: https://www.gnu.org/software/make/