%%%%%%%%%%%%%%%%%
%% ALLOCATION  %%
%%%%%%%%%%%%%%%%%

allocated(R) :- bind(_,T,R), task(T,A).

%%%%%%%%%%%%%%%
%%  BINDING  %%
%%%%%%%%%%%%%%%

1 { bind(M,T,R) : map(M,T,R) } 1 :- task(T,_).

#show bind/3.
