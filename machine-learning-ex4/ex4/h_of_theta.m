## Copyright (C) 2019 yang
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} h_of_theta (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: yang <yang@yang-Desktop>
## Created: 2019-04-14

function [z2, a2, z3, retval] = h_of_theta (Theta1, Theta2, X)
  
  %PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);

num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);


X = [ones(m,1), X ]; 
hiddenLayer = X * Theta1';
z2 = [ones( size(hiddenLayer,1), 1), hiddenLayer ];
% add extra ones for bias term
hiddenLayer = sigmoid(hiddenLayer);
hiddenLayer = [ones( size(hiddenLayer,1), 1), hiddenLayer ];
a2 = hiddenLayer;
outputLayer = hiddenLayer * Theta2';
z3 = outputLayer;
outputLayer = sigmoid(outputLayer);
retval = outputLayer;

endfunction
