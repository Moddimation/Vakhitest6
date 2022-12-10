texttable(9);
storymsg = global.msg;
storypart = 0;
story_text = print_txt(storymsg[storypart], x, y, -1, 4, 1, 3, 1.8, false, true, 2)
storywait=0;
storyaborted=0;
storyquitwait=0;
storyclock=0;
show_debug_message("Booting Vakhitest6")