s = serial('com6');
        fopen(s);
        fwrite(s,'0');
        pause(1)
        fclose(s);
        clear s
