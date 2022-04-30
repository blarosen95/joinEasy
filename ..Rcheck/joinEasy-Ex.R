pkgname <- "joinEasy"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('joinEasy')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("anti_join")
### * anti_join

flush(stderr()); flush(stdout())

### Name: anti_join
### Title: Anti Join

### ** Examples

    # Example usage:
    left <- data.frame(id = 100:106, letter = c('a', 'b', 'c', 'd', 'e', 'f', 'g'))
    random_i <- sample(seq_len(nrow(left)))
    cutpoint <- round(nrow(left) / 2)
    right <- left[random_i[seq_len(cutpoint)],]
    output <- anti_join(left, right, key = "id")
    output
    # right for comparison:
    right



cleanEx()
nameEx("cross_join")
### * cross_join

flush(stderr()); flush(stdout())

### Name: cross_join
### Title: Cross Join

### ** Examples

    # Example usage:
    left <- data.frame(id = 100:106, letter = c('a', 'b', 'c', 'd', 'e', 'f', 'g'))
    random_i <- sample(seq_len(nrow(left)))
    cutpoint <- round(nrow(left) / 2)
    right <- left[random_i[seq_len(cutpoint)],]
    output <- cross_join(left, right)
    output



cleanEx()
nameEx("full_outer_exclusive_join")
### * full_outer_exclusive_join

flush(stderr()); flush(stdout())

### Name: full_outer_exclusive_join
### Title: Full Outer (INNER Exclusive) Join

### ** Examples

    # Planned example usage:
    left <- data.frame(id = 100:106, letter = c('a', 'b', 'c', 'd', 'e', 'f', 'g'))
    random_i <- sample(seq_len(nrow(left)))
    cutpoint <- round(nrow(left) / 2)
    right <- left[random_i[seq_len(cutpoint)],]
    output <- full_outer_exclusive_join(left, right, key = "id")
    output



cleanEx()
nameEx("inner_join")
### * inner_join

flush(stderr()); flush(stdout())

### Name: inner_join
### Title: Inner Join

### ** Examples

    # Example usage:
    left <- data.frame(id = 100:106, letter = c('a', 'b', 'c', 'd', 'e', 'f', 'g'))
    random_i <- sample(seq_len(nrow(left)))
    cutpoint <- round(nrow(left) / 2)
    right <- left[random_i[seq_len(cutpoint)],]
    output <- inner_join(left, right, key = "id")
    output



cleanEx()
nameEx("joinEasy")
### * joinEasy

flush(stderr()); flush(stdout())

### Name: joinEasy
### Title: Performs Join Operations
### Aliases: joinEasy
### Keywords: package

### ** Examples

# simple examples of the most important functions



cleanEx()
nameEx("left_outer_join")
### * left_outer_join

flush(stderr()); flush(stdout())

### Name: left_outer_join
### Title: Left Outer Join

### ** Examples

    # Example usage:
    left <- data.frame(id = 100:106, letter = c('a', 'b', 'c', 'd', 'e', 'f', 'g'))
    random_i <- sample(seq_len(nrow(left)))
    cutpoint <- round(nrow(left) / 2)
    right <- left[random_i[seq_len(cutpoint)],]
    output <- left_outer_join(left, right, key = "id")
    output



cleanEx()
nameEx("right_outer_join")
### * right_outer_join

flush(stderr()); flush(stdout())

### Name: right_outer_join
### Title: Right Outer Join

### ** Examples

    # Planned example usage:
    left <- data.frame(id = 100:106, letter = c('a', 'b', 'c', 'd', 'e', 'f', 'g'))
    random_i <- sample(seq_len(nrow(left)))
    cutpoint <- round(nrow(left) / 2)
    right <- left[random_i[seq_len(cutpoint)],]
    output <- right_outer_join(left, right, key = "id")
    output



cleanEx()
nameEx("semi_join")
### * semi_join

flush(stderr()); flush(stdout())

### Name: semi_join
### Title: Semi Join

### ** Examples

    # Example usage:
    left <- data.frame(id = 100:106, letter = c('a', 'b', 'c', 'd', 'e', 'f', 'g'))
    random_i <- sample(seq_len(nrow(left)))
    cutpoint <- round(nrow(left) / 2)
    right <- left[random_i[seq_len(cutpoint)],]
    output <- semi_join(left, right, key = "id")
    output



### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
