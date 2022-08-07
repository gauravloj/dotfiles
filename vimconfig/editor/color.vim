if strftime("%H") < 6
	colorscheme slate
elseif strftime("%H") < 12
	colorscheme industry
elseif strftime("%H") < 18
	colorscheme elflord 
else
	colorscheme koehler
endif
