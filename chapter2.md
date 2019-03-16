chapter 2

multiple features(variables)

x_1, x_2, x_3... 
n = number of features
m = number of training examples
x^i = input features of ith traing example
x^i_j = value of feature j  in ith training example

conventionally, x_0 = 1 thus
h(x) = theta_0 * x_0 + theta_1 * x_1 ... theta_n * x_n

or h(x) = theta[transposed] * x
* also named multivariate linear regression
* feature scalling
- scale all the features with respect to 1, then the overall contour would be circular instead of eplitical
get every feature into appr -1<= x_i <= 1  range
* mean normalization
- replace xi with xi - ui where ui is the mean, so the features have approximately zero mean
more concretely x1 <- (x1-u1) /s1 where u1 is mean and s1 is the range which is xmax-xmin or s1 could be equal to std
to make sure the graident decent is working correclty

min J(theta) vs number of iterations should be going down
run 100 iterations, 
choose learning rate like 0.001 to 0.01 to 0.1 to 1, or 0.001 to 0.003 then 0.01 .. which is 3 fold increase every
time
* normal equation
work well when n  or feature sets are small about O(n^3)
* non invertiable
if x1 = ax2 , if linearly dependant, then they are non-invertable

