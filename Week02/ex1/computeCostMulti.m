function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

h = X * theta;              %a vector 'h' (97,2)*(2,1) containing all of the hypothesis values - one for each training example (i.e. for each row of X). 
error = h - y;              %error = {the difference between h and y}
error_sqr = error.^2;       %the square of each of those error terms (using element-wise exponentiation)
J = sum(error_sqr)/(2.0*m); %J = {multiply 1/(2*m) times the sum of the error_sqr vector}

% =========================================================================
end
