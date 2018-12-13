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
