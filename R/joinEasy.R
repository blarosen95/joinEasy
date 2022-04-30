require(sqldf)

remove_primary_key <- function(df) {
  df[, names(df) != 'pk']
}

remove_duplicated_cols <- function(df) {
  df[, !duplicated(colnames(df))]
}

inner_join <- function(left, right, key = NULL) {
  if (is.null(key)) {
    left$pk <- seq_len(nrow(left))
    right$pk <- seq_len(nrow(right))
    rtn <- sqldf("SELECT * FROM left l INNER JOIN right r ON l.pk = r.pk")
    return (remove_primary_key(rtn))
  }

  rtn <- fn$sqldf("SELECT * FROM left l INNER JOIN right r ON l.$key = r.$key")
  return (remove_duplicated_cols(rtn))
}

left_outer_join <- function(left, right, key = NULL) {
  if (is.null(key)) {
    left$pk <- seq_len(nrow(left))
    right$pk <- seq_len(nrow(right))
    rtn <- sqldf("SELECT * FROM left l LEFT OUTER JOIN right r ON l.pk = r.pk")
    return (remove_primary_key(rtn))
  }

  rtn <- fn$sqldf("SELECT * FROM left l LEFT OUTER JOIN right r ON l.$key = r.$key")
  return (remove_duplicated_cols(rtn))
}

right_outer_join <- function(left, right, key = NULL) {
  warning('right_outer_join is not currently supported')
  # if (is.null(key)) {
  #   left$pk <- seq_len(nrow(left))
  #   right$pk <- seq_len(nrow(right))
  #   rtn <- sqldf("SELECT * FROM left l RIGHT OUTER JOIN right r ON l.pk = r.pk")
  #   return (remove_primary_key(rtn))
  # }
  #
  # rtn <- fn$sqldf("SELECT * FROM left l RIGHT OUTER JOIN right r ON l.$key = r.$key")
  # return (remove_duplicated_cols(rtn))
}

full_outer_exclusive_join <- function(left, right, key = NULL) {
  warning('full_outer_exclusive_join is not currently supported')
  # if (is.null(key)) {
  #   left$pk <- seq_len(nrow(left))
  #   right$pk <- seq_len(nrow(right))
  #   rtn <- sqldf("SELECT * FROM left l FULL OUTER JOIN right r ON l.pk = r.pk WHERE l.rownum1 is NULL OR r.rownum2 is NULL")
  #   return (remove_primary_key(rtn))
  # }
  # rtn <- fn$sqldf("SELECT * FROM left l FULL OUTER JOIN right r ON l.$key = r.$key WHERE l.rownum1 is NULL OR r.rownum2 is NULL")
  # return (remove_duplicated_cols(rtn))
}

# Same as a full-outer join but does not incur the extra query costs:
cross_join <- function(left, right) {
    sqldf("SELECT * FROM left l, right r")
}

semi_join <- function(left, right, key = NULL) {
  if (is.null(key)) {
    left$pk <- seq_len(nrow(left))
    right$pk <- seq_len(nrow(right))
    rtn <- sqldf("SELECT * FROM left l WHERE EXISTS (SELECT 1 FROM right r WHERE r.pk = l.pk)")
    return (remove_primary_key(rtn))
  }
  rtn <- fn$sqldf("SELECT * FROM left l WHERE EXISTS (SELECT 1 FROM right r WHERE r.$key = l.$key)")
  return (remove_duplicated_cols(rtn))
}

anti_join <- function(left, right, key = NULL) {
  if (is.null(key)) {
    left$pk <- seq_len(nrow(left))
    right$pk <- seq_len(nrow(right))
    rtn <- sqldf("SELECT * FROM left l WHERE NOT EXISTS (SELECT 1 FROM right r WHERE r.pk = l.pk)")
    return (remove_primary_key(rtn))
  }
  rtn <- fn$sqldf("SELECT * FROM left l WHERE NOT EXISTS (SELECT 1 FROM right r WHERE r.$key = l.$key)")
  return (remove_duplicated_cols(rtn))
}
