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
nr_links(NR) :- NR=#count{ link(L,N,N') : link(L,N,N'), link(L,N',N), N<N'; link(L,N,N') : link(L,N,N'), not link(L,N',N) }.

{ reached(C,L,N,N') : link(L,N,N') } 1 :- node(N), comm(C,A).
{ reached(C,L,N,N') : link(L,N,N') } 1 :- node(N'), comm(C,A).

visit(C,R) :- send(T,C), bind(_,T,R).
visit(C,R') :- visit(C,R), reached(C,_,R,R').
:- reached(C,_,_,R), not visit(C,R).
:- read(T,C), bind(_,T,R), not visit(C,R).
	
hops(C,R,0)    :- send(T,C), bind(_,T,R).
hops(C,R',H+1) :- hops(C,R,H), reached(C,_,R,R'), H<NR, nr_links(NR).
hops(C,H)      :- hops(C,R,H), read(T',C), bind(_,T',R).	


#show allocated/1.
#show reached/4.
#show nr_links/1.
