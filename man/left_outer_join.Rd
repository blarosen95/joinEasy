\name{left_outer_join}
\title{
Left Outer Join
}
\description{
    This function returns only those rows which are either common to both dataframes or only present in the left dataframe.
}
\usage{
    \details{
        # This function can be used without providing a primary key value:
        left_outer_join(left, right)
        # Or with a primary key value:
        left_outer_join(left, right, key)
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
    # Example usage:
    left <- data.frame(id = 100:106, letter = c('a', 'b', 'c', 'd', 'e', 'f', 'g'))
    random_i <- sample(seq_len(nrow(left)))
    cutpoint <- round(nrow(left) / 2)
    right <- left[random_i[seq_len(cutpoint)],]
    output <- left_outer_join(left, right, key = "id")
    output
}