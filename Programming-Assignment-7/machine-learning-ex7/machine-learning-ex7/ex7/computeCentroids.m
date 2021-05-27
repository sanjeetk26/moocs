function centroids = computecentroids(X, idx, K)
%COMPUTEcentroidsS returns the new centroidss by computing the means of the 
%data points assigned to each centroids.
%   centroidss = COMPUTEcentroidsS(X, idx, K) returns the new centroidss by 
%   computing the means of the data points assigned to each centroids. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroids assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroidss. You should return a matrix
%   centroidss, where each row of centroidss is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);

count=zeros(K,1);
% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroids and compute mean of all points that
%               belong to it. Concretely, the row vector centroidss(i, :)
%               should contain the mean of the data points assigned to
%               centroids i.
%
% Note: You can use a for-loop over the centroidss to compute this.
%








% =============================================================

for i=1:m
    centroids(idx(i),:)=centroids(idx(i),:)+X(i,:);
    count(idx(i))=count(idx(i))+1;
end

for i=1:K
    centroids(i,:)=centroids(i,:)/count(i);
end





