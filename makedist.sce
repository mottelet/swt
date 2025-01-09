// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
//
// Copyright (C) 2024 - UTC - Stéphane MOTTELET
//
// This file is hereby licensed under the terms of the GNU GPL v3.0,
// For more information, see the COPYING file which you should have received

path_makedist = get_absolute_file_path();
cd(path_makedist);

modulename = "swt"
version = mgetl("VERSION")
[result,status] = http_get(msprintf("%s/%s/%s/DESCRIPTION","https://atoms.scilab.org/toolboxes",modulename,version));
if status == 200
    mputl(result,"DESCRIPTION")
end

[sci,v]=getversion()
if getos() <> "Windows" then
    filename = modulename+"_"+mgetl("VERSION")+".bin."+getos()+"."+v(2)+"."+strsplit(getversion(),"-")(2)+".tar.gz"
else
    filename = modulename+"_"+mgetl("VERSION")+".bin."+getos()+"."+v(2)+"."+strsplit(getversion(),"-")(2)+".zip"
end

moduledir = fileparts(pwd(),"fname") 
cd("..")
compress(filename,moduledir)
cd(path_makedist);

