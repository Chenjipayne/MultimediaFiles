
%********************求均值函数*************************

function av = average( A )
%AVERAGE Summary of this function goes here
%   函数名：average，输入一个参数A，返回一个参数av

if ~ismatrix(A)       %检查矩阵A的维数是否大于2
    error('The dimension of the input cannot exceed 2.')
end
sumA=sum(A(:));        %对A中所有元素求和
lenA=length(A(:));     %求A中所有元素的个数
av=sumA/lenA;          %求A中所有元素的平均值


end

