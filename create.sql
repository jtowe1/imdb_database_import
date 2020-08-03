DROP DATABASE IF EXISTS imdb;
CREATE DATABASE imdb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE imdb;

DROP TABLE IF EXISTS name_basics;
CREATE TABLE name_basics
(
	nconst TEXT null,
	primaryName TEXT null,
	birthYear INT null,
	deathYear INT null,
	primaryProfession TEXT null,
	knownForTitles TEXT null
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS title_akas;
CREATE TABLE title_akas
(
	titleId TEXT null,
	ordering INT null,
	title TEXT null,
	region TEXT null,
	language TEXT null,
	types TEXT null,
	attributes TEXT null,
	isOriginalTitle INT null
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS title_basics;
CREATE TABLE title_basics
(
	tconst TEXT null,
	titleType TEXT null,
	primaryTitle TEXT null,
	originalTitle TEXT null,
	isAdult INT null,
	startYear INT null,
	endYear TEXT null,
	runtimeMinutes INT null,
	genres TEXT null
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS title_crew;
CREATE TABLE title_crew
(
	tconst TEXT null,
	directors TEXT null,
	writers TEXT null
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS title_episode;
CREATE TABLE title_episode
(
	tconst TEXT null,
	parentTconst TEXT null,
	seasonNumber INT null,
	episodeNumber INT null
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS title_principals;
CREATE TABLE title_principals
(
	tconst TEXT null,
	ordering INT null,
	nconst TEXT null,
	category TEXT null,
	job TEXT null,
	characters TEXT null
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS title_ratings;
CREATE TABLE title_ratings
(
	tconst TEXT null,
	averageRating DOUBLE null,
	numVotes INT null
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
