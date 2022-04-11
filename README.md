## Models for `dbt-Workflow`
All things dbt from Zero knowlegde to PRO!!

____

## Repo expectations
Enabling remote collaboration across time zones and team members is core to our success as a team. Because everyone comes from different development team experiences and are all from a variety of professional backgrounds, the following standards are followed to avoid misalignment of expectations.
* All development work will happen on a branch of this repo which has a label that begins with the ticket identifier and is followed by a title that describes the work.
* Commit messages will follow [this styleguide published by Udacity](https://udacity.github.io/git-styleguide/)
* Code commits will represent logical, functional units of work **OR** when you're completing your day if the code is not yet functional
  * An example could be a model described, imported, and tested through dbt - or any combination of those three pieces
* All development branches will be synced to GitHub at the end of the work day, including work-in-progress feature branches
* Coding standards listed in the Wiki of the repo will be followed, and regularly checked for updates as that is a living document
* Pull Requests will use the template provided and be filled out as completely as possible


----
## Prerequisites
* Docker - Install Docker from [here](https://docs.docker.com/get-docker/)
* Make - This isn't available by default on windows. follow the process below to install make
  * Install chocolatey from [here](https://chocolatey.org/install).
  * choco install make  
  Note: The commands above should be run as an admin
  
   
### Installing IDE
We recommend using Visual studio code. Here is a [link](https://code.visualstudio.com/download) to download VS code

   
## Running DBT locally
1. Have PostGres installed localy.

2. Download the docker contain and save in your preferred location. Preferrably `Documents`
  Click here [link](https://1drv.ms/u/s!AloI9hnaFZqhhCzdriTtI4FgEzzq?e=8qswih) to download the image

3. Run the command below to build a dbt image. NOTE: This command only needs to be run  for first time installation or when the image is deleted in docker
   ```shell
   make build-dbt
   ```
4. RUN the command below to `exec` into the dbt environment
   ```shell
   make start-dbt
   ```
5. RUN the command below to confirm dbt installation works correctly
   ```shell
   dbt debug
   ```
