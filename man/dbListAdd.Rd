\name{dbListAdd}
\alias{dbListAdd}
\title{Add new database to db list}
\usage{
dbListAdd(db_name, db, query_fn, default_query)
}
\arguments{
  \item{db_name}{name of the database to be added}

  \item{db}{an expression yielding a db connection object}

  \item{query_fn}{function used to query the database.}

  \item{default_query}{the default query to use for this
  connection.}
}
\description{
Adds a new database to db list.
}
\examples{
\dontrun{
db <- quote({dbConnect(dbDriver('SQLite'), dbname = system.file('data/births.db', package = 'ShinyBuilder'))})
dbListAdd(db_name = 'SQLite Database', db = db, query_fn = RJDBC::dbGetQuery, default_query = 'SELECT * FROM births')

db <- quote({dbConnect(dbDriver('SQLite'), dbname = system.file('data/chinook.db', package = 'ShinyBuilder'))})
dbListAdd(db_name = 'SQLite sample database', db = db, query_fn = RJDBC::dbGetQuery, default_query = 'SELECT
 artists.ArtistId,
 albumId
FROM
 artists
LEFT JOIN albums ON albums.artistid = artists.artistid
WHERE
 albumid IS NULL;')

}
}

