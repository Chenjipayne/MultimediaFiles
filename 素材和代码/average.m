
%********************���ֵ����*************************

function av = average( A )
%AVERAGE Summary of this function goes here
%   ��������average������һ������A������һ������av

if ~ismatrix(A)       %������A��ά���Ƿ����2
    error('The dimension of the input cannot exceed 2.')
end
sumA=sum(A(:));        %��A������Ԫ�����
lenA=length(A(:));     %��A������Ԫ�صĸ���
av=sumA/lenA;          %��A������Ԫ�ص�ƽ��ֵ


end

