function [] = display_history(subj,objtype,objname)

% Display the object's history field in a friendly way
%
% [] = DISPLAY_HISTORY(SUBJ,OBJTYPE,OBJNAME)
%
% You can use this to display the SUBJ's own history if OBJTYPE ==
% 'subj' and OBJNAME == ''

% This is part of the Princeton MVPA toolbox, released under the
% GPL. See http://www.csbmb.princeton.edu/mvpa for more
% information.


obj = get_object(subj,objtype,objname);

nHists = length(obj.history);
for i=1:nHists
  disp( sprintf('%s',char(obj.history{i})) );
end