\name{full_outer_exclusive_join}
\title{
Full Outer (INNER Exclusive) Join
}
\description{
    The `full_outer_exclusive_join` function is not yet implemented.
    Once released, this function will return all rows from both left and right which are unique to the dataframes.
}
\usage{
    \details{
        # This function will be usable without providing a primary key value:
        full_outer_exclusive_join(left, right)
        # Or with a primary key value:
        full_outer_exclusive_join(left, right, key)
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
    output <- full_outer_exclusive_join(left, right, key = "id")
    output
}