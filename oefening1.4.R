A = matrix(
  c(1:20),
  nrow = 4,
  ncol = 5,
  byrow = TRUE)

B = matrix (
  c(1,2,3,4,4,3),
  nrow = 3,
  ncol =2,
  byrow = TRUE
)

A[B]=0
