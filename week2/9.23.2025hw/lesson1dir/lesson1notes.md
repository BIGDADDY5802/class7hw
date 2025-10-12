# lesson1 ls list storage

$ls - list command:
    When you run $ls you get a list of the content in the current directory

$ls --color=no -  removes colors from listed commands

    This is new on linux, there was no color on these systems in the past. This command
    gives you a vintage look after you execute

$ls --color=yes - adds color back, files > directories have different structures so for 
better understanding the colors have been added.

$ls --color=auto - Does the same as <$ls --color=yes>...

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

$clear - The same you can achieve by running 
/bin/echo -e "\x1b\x5b\x48\x1b\x5b\x32\x4a\c" , 
but we can agree, that 'clear' is easier to remember!

$ls - (arguements)
    after the command we put "-" for an arguement.
"-" is for a single letter argument.
"--" is for an arguement that is a word, or is more than one letter for each arguement.

$ls -l - "l" means long listing format:
    When you pass this arguement the format contains a few columns;
    -   permissions. Here we can see what kind of permission has the object. We will work with permissions... 
       soon 
    -   number of hard links. By default every object has 1 hard link. What are links?
    Hard links - <https://www.bing.com/ck/a?!&&p=b6e48fba933befbfb088d56be688a7acbbcbdfbeee4f090ce1a9f956cef6b4bbJmltdHM9MTc1OTcwODgwMA&ptn=3&ver=2&hsh=4&fclid=3524d378-1685-6d0e-0d7c-c540176a6c87&psq=hard+links+linux&u=a1aHR0cHM6Ly9saW51eGhhbmRib29rLmNvbS9oYXJkLWxpbmsv>
    -   Owner. The owner of the object. It doesn't mean who created it, but who owns it at this moment.
    -   Group. Owner belongs to the group (of users). This inforation is here too. This means that our 
    'groupmates' have specific access to the file.

    -   Size. File size in bytes.
    -   date and time of last modification of the object.
file name.

$ls -n - This works like ls -l, but it changes the user-friendly names to UIDs and GIDs.

UIDs= user IDs
GIDs= group IDs

-n output
total 164
-rw-r--r-- 1    0    0 143976 Oct  7 02:15 File-01.txt
-rw-r--r-- 1    0    0      0 Oct  7 02:15 file-01
-rw-r--r-- 1    0    0     18 Oct  7 02:15 file-01.txt
-rw-r--r-- 1    0    0      0 Oct  7 02:15 file-02
lrwxrwxrwx 1    0    0      1 Sep 19 18:23 filesystem -> /
-rw-r--r-- 1 1001 1001     18 Oct  7 02:15 notmyfile
-rw-r--r-- 1 1002 1002     19 Oct  7 02:15 notmyfile2
drwxr-xr-x 2    0    0   4096 Oct  7 02:15 testDir
drwxr-xr-x 3    0    0   4096 Oct  7 02:15 testdir

-l output
total 164
-rw-r--r-- 1 root      root      143976 Oct  7 02:15 File-01.txt
-rw-r--r-- 1 root      root           0 Oct  7 02:15 file-01
-rw-r--r-- 1 root      root          18 Oct  7 02:15 file-01.txt
-rw-r--r-- 1 root      root           0 Oct  7 02:15 file-02
lrwxrwxrwx 1 root      root           1 Sep 19 18:23 filesystem -> /
-rw-r--r-- 1 testuser  testuser      18 Oct  7 02:15 notmyfile
-rw-r--r-- 1 otheruser otheruser     19 Oct  7 02:15 notmyfile2
drwxr-xr-x 2 root      root        4096 Oct  7 02:15 testDir
drwxr-xr-x 3 root      root        4096 Oct  7 02:15 testdir

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

list all files

$ls -a (list all) - argument -a lists many more files than ls;
    -   .
    -   ..

files with these leads you find with ls -a
    -   "." means the current directory of the user
    -   ".." means the parent directory

$ls -A (almost all) - this command will show all the files in the directory besides the "." and the ".."

Combining multiple arguements:
    $ls -al - notice its still only one "-".
     this is because eacb argument is just one letter.
    This command shows the same as $ls -a but just vertically. Alsohas author and permissions, date and bytes
    <https://www.bing.com/ck/a?!&&p=949b40131f02418df9ca64e9105c37333bb928ae18f7a1361085525d8c87f3cfJmltdHM9MTc1OTcwODgwMA&ptn=3&ver=2&hsh=4&fclid=3524d378-1685-6d0e-0d7c-c540176a6c87&psq=drwx------++6+root++++++root++++++++4096+Oct++7+02%3a15+.&u=a1aHR0cHM6Ly91bml4LnN0YWNrZXhjaGFuZ2UuY29tL3F1ZXN0aW9ucy8xOTU3MzIvdW5kZXJzdGFuZGluZy1ob21lLWZvbGRlci1wZXJtaXNzaW9u>

Sorting:
   atime - the last time when file was accessed

    mtime - last modification time. By modification we mean change in the file content.

    ctime - last metadata modification time. We mean here - permissions change, location of the file, etc.

    $date
    $ls -lt  Specify exact modification time by adding "u".
    total 164
-rw-r--r-- 1 root      root      143976 Oct  7 02:15 File-01.txt
-rw-r--r-- 1 root      root          18 Oct  7 02:15 file-01.txt
drwxr-xr-x 3 root      root        4096 Oct  7 02:15 testdir
drwxr-xr-x 2 root      root        4096 Oct  7 02:15 testDir
-rw-r--r-- 1 otheruser otheruser     19 Oct  7 02:15 notmyfile2
-rw-r--r-- 1 testuser  testuser      18 Oct  7 02:15 notmyfile
-rw-r--r-- 1 root      root           0 Oct  7 02:15 file-02
-rw-r--r-- 1 root      root           0 Oct  7 02:15 file-01
lrwxrwxrwx 1 root      root           1 Sep 19 18:23 filesystem -> /

$ls -ltu

$ls -ltc

chmod 444 (changes permissions)

$ls -s , $ls -ls , ls -lS , ls -lh , ls -l --si , ls -lSh
$ls -1 , ls --format=commas , ls -m , ls -lQ , ls -l
ls -l --time-style=locale
ls -l --time-style=iso
ls -l --time-style=full-iso

To finalize some usefull arguments, please take a look on these:

ls -al --author prints the username of the creator of the file.

ls -ald prints directories only. Very useful in some circumstances.

ls -ali prints inodes 

ls -alR recursively prints all subdirectories.

ls -alr prints list in the reversed order. So,

ls -alSr is printing... 


ls --version prints the version of the binary.

All commands which we used here are available in help. How to get the help?

ls --help