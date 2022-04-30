\name{cross_join}
\title{
Cross Join
}
\description{
    This function returns the cartesian product of two relations.
}
\usage{cross_join(left, right)}}
\arguments{
    \item{left}{A dataframe which will be used as the left-side table in the operation.}
    \item{right}{A dataframe which will be used as the right-side table in the operation.}
}
\value{
    \item{rtn}{The resulting dataframe.}
}
\examples{
    # Example usage:
    left <- data.frame(id = 100:106, letter = c('a', 'b', 'c', 'd', 'e', 'f', 'g'))
    random_i <- sample(seq_len(nrow(left)))
    cutpoint <- round(nrow(left) / 2)
    right <- left[random_i[seq_len(cutpoint)],]
    output <- cross_join(left, right)
    output
}