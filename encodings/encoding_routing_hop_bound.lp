%%%%%%%%%%%%%%%%%
%% ALLOCATION  %%
%%%%%%%%%%%%%%%%%

allocated(R) :- reached(_,_,R,_).
allocated(R) :- reached(_,_,_,R).
allocated(L) :- reached(_,L,R1,R2).

%%%%%%%%%%%%%%%
%%  ROUTING  %%
%%%%%%%%%%%%%%%

node(N;N') :- link(_,N,N').
{ reached(C,L,N,N') : link(L,N,N') } 1 :- node(N), comm(C,A).
{ reached(C,L,N,N') : link(L,N,N') } 1 :- node(N'), comm(C,A).

visit(C,R) :- send(T,C), bind(_,T,R).
visit(C,R') :- visit(C,R), reached(C,_,R,R').
:- reached(C,_,_,R), not visit(C,R).
:- read(T,C), bind(_,T,R), not visit(C,R).

% ensure all routes have smallest number of hops (same as dimensional ordered routing)
hops(C,N) :- bind(_,T1,R), bind(_,T2,R'), R!=R',
			 send(T1,C), read(T2,C),
			 processor(R,X,Y,Z), processor(R',X',Y',Z'),
			 N = |X-X'|+|Y-Y'|+|Z-Z'|+2.	
hops(C,0) :- bind(_,T1,R), bind(_,T2,R),
						send(T1,C), read(T2,C).	
:- hops(C,N), not N { reached(C,L,_,_) : reached(C,L,_,_) } N.


#show bind/3.
#show reached/4.
