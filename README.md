# directory-structure-maintenance---UNIX-Bash-shell-scripting

Imagine that we have written numerous C files (.c files) in a directory D and compiled then to object
files (.o files). Now, we want to ship directory D to a client who wants to run the source code. However, we cannot release our source code to protect intellectual property. Hence, we will have to move our source files to another directory and keep the object files in the same directory. However, we need to ensure the following when we are moving source files.

For example, consider that we are moving all C files from the directory project to the directory project_src_bkup. Let us say that the directory project has C source files in project/, project/subProj1, project/subProj1/subsubProj1, and project/subProj2.
The destination directory project_src_bkup should have the corresponding source files in the same directory structure, that is, project_src_bkup/, project_src_bkup/subProj1, project_src_bkup/subProj1/subsubProj1, and project_src_bkup/subProj2.
2. If the destination directory already exists, then it should not be recreated. However, if it does not exist, then it should be created. Subdirectories in the destination directory may be re-created even if they exist.
3. If the source directory does not exist, then exit with status 0 and display a message:
  "<src_dir> not found"
