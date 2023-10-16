%%%%%%%%%%%%%%%%%
%% ALLOCATION  %%
%%%%%%%%%%%%%%%%%

allocated(R) :- reached(_,_,R,_).
allocated(R) :- reached(_,_,_,R).
allocated(L) :- reached(_,L,R1,R2).

%%%%%%%%%%%%%%%
%%  ROUTING  %%
%%%%%%%%%%%%%%%

%dimensional ordered rounting
coord(X,Y,Z) :- router(_,X,Y,Z).
next(X,Y,Z,X',Y',Z',X+1,Y,Z) :- coord(X,Y,Z), coord(X',Y',Z'), coord(X+1,Y,Z), X < X'.
next(X,Y,Z,X',Y',Z',X-1,Y,Z) :- coord(X,Y,Z), coord(X',Y',Z'), coord(X-1,Y,Z), X > X'.
next(X,Y,Z,X,Y',Z',X,Y+1,Z) :- coord(X,Y,Z), coord(X,Y',Z'), coord(X,Y+1,Z), Y < Y'.
next(X,Y,Z,X,Y',Z',X,Y-1,Z) :- coord(X,Y,Z), coord(X,Y',Z'), coord(X,Y-1,Z), Y > Y'.
next(X,Y,Z,X,Y,Z',X,Y,Z+1) :- coord(X,Y,Z), coord(X,Y,Z'), coord(X,Y,Z+1), Z < Z'.
next(X,Y,Z,X,Y,Z',X,Y,Z-1) :- coord(X,Y,Z), coord(X,Y,Z'), coord(X,Y,Z-1), Z > Z'.
reached(C,L,P,R;C,L',R',P') :- bind(_,T,P), bind(_,T',P'), P!=P', send(T,C), read(T',C),
						       processor(P,X,Y,Z), router(R,X,Y,Z), link(L,P,R),
							   processor(P',X',Y',Z'), router(R',X',Y',Z'), link(L',R',P').
reached(C,L,R,R') :- reached(C,_,_,R), router(R,X,Y,Z), router(R',X',Y',Z'),
					 read(T,C), bind(_,T,TP), processor(TP,TX,TY,TZ),
					 next(X,Y,Z,TX,TY,TZ,X',Y',Z'), link(L,R,R').
hops(C,N) :- bind(_,T1,R), bind(_,T2,R'), R!=R',
			 send(T1,C), read(T2,C), processor(R,X,Y,Z), processor(R',X',Y',Z'),
			 N = |X-X'|+|Y-Y'|+|Z-Z'|+2.	
hops(C,0) :- bind(_,T1,R), bind(_,T2,R), send(T1,C), read(T2,C).	


#show bind/3.
#show reached/4.