% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sql.R
\name{read_sql_duckdb}
\alias{read_sql_duckdb}
\title{Return SQL query as duckdb_tibble}
\usage{
read_sql_duckdb(sql, ..., lazy = TRUE, con = NULL)
}
\arguments{
\item{sql}{The SQL to run.}

\item{...}{These dots are for future extensions and must be empty.}

\item{lazy}{Logical, whether to create a lazy duckplyr frame.
By default, a lazy duckplyr frame is created.
See the "Eager and lazy" section in \code{\link[=duckdb_tibble]{duckdb_tibble()}} for details.}

\item{con}{The connection, defaults to the default connection.}
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#experimental}{\figure{lifecycle-experimental.svg}{options: alt='[Experimental]'}}}{\strong{[Experimental]}}

Runs a query and returns it as a duckplyr frame.
}
\details{
Using data frames from the calling environment is not supported yet,
see \url{https://github.com/duckdb/duckdb-r/issues/645} for details.
}
\examples{
read_sql_duckdb("FROM duckdb_settings()")
}
\seealso{
\code{\link[=db_exec]{db_exec()}}
}
