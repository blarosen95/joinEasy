\name{right_outer_join}
\title{
Right Outer Join
}
\description{
    The `right_outer_join` function is not yet implemented.
    Once released, this function will return only those rows which are either common to both dataframes or only present in the right dataframe.
}
\usage{
    \details{
        # This function will be usable without providing a primary key value:
        right_outer_join(left, right)
        # Or with a primary key value:
        right_outer_join(left, right, key)
    }
}
\arguments{
    \item{left}{A dataframe which will be used as the left-side table in the operation.}
    \item{right}{A dataframe which will be used as the right-side table in the operation.}
    \item{key}{The primary key value. If not provided, the function will use the dataframes' row numbers as the primary key.}
}
\value{
    \item{rtn}{The resulting dataframe.}
}
\examples{
    # Planned example usage:
    left <- data.frame(id = 100:106, letter = c('a', 'b', 'c', 'd', 'e', 'f', 'g'))
    random_i <- sample(seq_len(nrow(left)))
    cutpoint <- round(nrow(left) / 2)
    right <- left[random_i[seq_len(cutpoint)],]
    output <- right_outer_join(left, right, key = "id")
    output
}