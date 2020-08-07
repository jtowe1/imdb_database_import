# What?
This repository helps in getting the IMDB database dumps imported into a MySQL database running in a Docker container.

# Why?
The data dumps provided by IMDB are raw .tsv (tab separated value) files.  They provide no schema or charset requirements for the data.

## Prerequisites
* docker
* docker-compose
* The IMDB data files
    * https://datasets.imdbws.com/
* A MySQL client
    * I provide examples for the mysql cli client

### Notes
* Make sure you don't have a running mysql instance locally, the provided docker-compose file starts a container and binds it to 127.0.0.1 so a locally running mysql server will interfere.

## Step 1
Download the IMDB dump and unzip the files into a folder.

## Step 2
Clone this repository.

## Step 3
Start the docker container.
```bash
docker-compose up -d
```
## Step 4
Edit the `populate.sql` file to point to the locations you unziped the data files to.

Ex: `LOAD DATA LOCAL INFILE '/path_to/name.basics.tsv'`

## Step 5
Import the schema using `create.sql`.

Example using the MySQL cli:

`mysql -h 127.0.0.1 -u root -p imdb < create.sql`

## Step 6
Import the data using `populate.sql`.

Example using the MySQL cli:

`mysql -h 127.0.0.1 -u root -p --local-infile imdb < populate.sql`

Note: This will take a long time
