function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);

num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.


% add extra ones for the bias term
X = [ones(m,1), X ]; 
hiddenLayer = X * Theta1';
% add extra ones for bias term
hiddenLayer = sigmoid(hiddenLayer);
hiddenLayer = [ones( size(hiddenLayer,1), 1), hiddenLayer ];
outputLayer = hiddenLayer * Theta2';
outputLayer = sigmoid(outputLayer);
% output layer should be m * 10 size

%X =  [ones(m,1), X ]; 
%hiddenLayer = Theta1 * X';
% add extra ones for bias term
%hiddenLayer = sigmoid(hiddenLayer);
%hiddenLayer = [ones( 1, size(hiddenLayer,2)); hiddenLayer ];
%outputLayer = Theta2 * hiddenLayer;
%outputLayer = sigmoid(outputLayer);


[ v, p ] = max(outputLayer, [], 2);

% p = i;

% =========================================================================


end
