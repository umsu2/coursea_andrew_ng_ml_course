Introduction
supervised (we are given `correct` input/output and want to predict given new inputs)
* regression (continous) 
* classification (discrete) 
unsupervised
reinforcement learning
recommender system

Review
model representation

h (hypothesis)
h is the func that predicts output given some input
`h_theta(x) = theta_0 + theta_1*x `
also called linear regression or univariate linear regression
univariate = single variable

cost function J(theta0,theta1)
objective is to minimize cost function
* squared error cost function 1/(2m) sum from (i=1 to m) of (h(xi) - yi)^2 where m is the number of training set and
  i=ith training set [1/2 is used because easier calculation for gradient decent]

gradient decent, partial derivatives, taking alpha (step size) in which ever direction gives you the max decrease.
then follow. depending on where you start, it would take you to different local minimas 
since it's using partial derviatives the alpha would not need to be changed because as we approach local min, derivative
would approach 0, and thus steps would get smaller eacht time

* batch gradient descent - each step of descent uses all the training samples


matrix - refresher
dimension of a matrix = # of rows * # of cols 
R ^(2 x3 ) matrix of 2 x 3 size.
matrix entries 

Aij = ith row, jth col

vector is a special matrix, it is a nx1 matrix
4 dimensional vector = 4 element matrix or nx4.  or known as R^4
yi = ith element of vector


capital letter refers to matrix.  (normally)


matrix operations
----------------
addition, A + B = Aij + Bij .... [must be the same dimension]
scalar * matrix  = Aij * scalar .... [same dimension] 

matrix vector multiplication
3x2 matrix * 2 x 1 matrix => 3 x 1 matrix 
matrix multiplication is much faster than using for loops due to optimization  using cuda or some
parallelization

matrix matrix multiplication
do the same as matrix vector mulitplication then put them back together

2x 3 matrix * 3x2 matrix => 2 x 2 matrix
linear regresssion => finding result[predictions] of different hypothese. 

identity matrix = I
I x A = A; A x I = A

matrix inverse
AA^-1 = A^-1A = I
only applicable to square matrix

matrices that doesn't have inverse is called singlular or degenerate


matrix transpose

----------------------
properties of matrix multiplication
* not commutative
AxB != BxA
* associative
AxBxC = Ax(BxC) = (AxB) x C



