% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/github.R
\name{use_github_links}
\alias{use_github_links}
\title{Use GitHub links in URL and BugReports}
\usage{
use_github_links(auth_token = github_token(), host = NULL, overwrite = FALSE)
}
\arguments{
\item{auth_token}{GitHub personal access token (PAT).}

\item{host}{GitHub API host to use. Override with the endpoint-root for your
GitHub enterprise instance, for example,
"https://github.hostname.com/api/v3".}

\item{overwrite}{By default, \code{use_github_links()} will not overwrite existing
fields. Set to \code{TRUE} to overwrite existing links.}
}
\description{
Populates the \code{URL} and \code{BugReports} fields of a GitHub-using R package with
appropriate links. The ability to determine the correct URLs depends on
finding a fairly standard GitHub remote configuration (\code{origin} only or
\code{origin} plus \code{upstream}).
}
\examples{
\dontrun{
use_github_links()
}

}
