function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT 
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha


m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


for iter = 1:num_iters

% theta_len = length(theta);
  

	theta = theta-(alpha/length(y)) * (X' * (X*theta - y));
% alternatively :
% 	temp_theta = theta;
% 	for j = 1:theta_len		
% 		value = 0;
% 
% 		for i = 1:m
% 			value = value + (X(i,:) * theta- y(i,:)) * X(i,j);
% 		end
% 
% 		temp_theta(j,:) = temp_theta(j,:) - ((alpha/m)*value);
% 	end
% 
% 	theta = temp_theta;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);    
    

end

end
end
