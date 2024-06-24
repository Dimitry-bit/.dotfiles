if status is-interactive
    # User specific aliases and functions
    if test -d ~/.bashrc.d
        for rc in ~/.bashrc.d/*
    	    if test -f "$rc"
    	        source "$rc"
    	    end
        end
    end
end
