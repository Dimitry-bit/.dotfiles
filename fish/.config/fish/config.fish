if status is-interactive
    fish_add_path -g -p /usr/bin/flutter/bin

    # User specific aliases and functions
    if test -d ~/.bashrc.d
        for rc in ~/.bashrc.d/*
    	    if test -f "$rc"
    	        source "$rc"
    	    end
        end
    end
end
