clear all;
close all;

%canonical base
ecan1 = [1 ; 0];
ecan2 = [0 ; 1];

%origin base
e1 = [2 ; 0];
e2 = [0 ; 2];

%destination base
e1_ = [3 ; 1];
e2_ = [-2 ; 1];

%the matrix that will define an inner product and orthogonality in the destination base
t = [e1_ e2_];
%M_ = t' * t;
M_ = t*pinv(t' * t)*t';

%the matrix defining the inner product in sandard basis
M = eye(2);

%the change of basis matrices
p_or_dest = [normComp(e1, e1_, M_) normComp(e2, e1_, M_) ; normComp(e1, e2_, M_) normComp(e2, e2_, M_)];
p_can_or = [normComp(ecan1, e1, M) normComp(ecan2, e1, M) ; normComp(ecan1, e2, M) normComp(ecan2, e2, M)];

%the vector we're trying to translate coordinates
vcan = [-3 ; -2];
ve = p_can_or * vcan;
ve_ = p_or_dest * ve;
