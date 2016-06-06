%% Elements contour evolution plot
%
% Code developed by Ghislain Raze under the supervision of Prof. Joseph
% Morlier
%
% Initial code by Johannes T. B. Overvelde
%
% <http://www.overvelde.com>
%
% Plots the elements contour at an iteration given by a slider value.

function contourEvolutionPlot(history,distrType)

h = figure;
title('\fontsize{20} Elements contour evolution')
pos = get(gcf, 'Position'); %// gives x left, y bottom, width, height
width = pos(3);
height = pos(4);
iterMax = length(history.C)-1;

sliderContour2 = @(hObject,event) sliderContour(hObject,event,history.x,distrType,h);

slider = uicontrol(h,'style','slider','Min',0,'Max',iterMax,'Value',0,...
    'Position',[15*width/16 height/8 width/24 6*height/8],...
    'SliderStep',[1/(iterMax-1) 10/(iterMax-1)],...
    'Callback',sliderContour2);
txtLimInf = uicontrol(h,'style','text','Position',...
    [15*width/16 height/16 width/24 height/24],'String',...
    num2str(0));
txtLimSup = uicontrol(h,'style','text','Position',...
    [15*width/16 7*height/8 width/24 height/24],'String',...
    num2str(iterMax));

end