# man commands

The man command in Linux is a utility used to display the manual pages (man pages) for commands, programs, and functions available on the system. These man pages provide comprehensive documentation, including usage instructions, options, syntax, and sometimes examples.

    man -k [keyword] or man --apropos [keyword]: Search for commands related to a given keyword and display a concise one-line description.
    man -f [command] or man --whatis [command]: Display a concise one-line description of a specific command.
    man -a [command] or man --all [command]: Display all matching manual pages for the specified command across different sections.
The man command is an essential tool for understanding and effectively using the Linux command-line environment.

    man [command_name]

    man ls

Arrow keys (Up/Down): Scroll line by line.
Page Up/Page Down: Scroll page by page.
Spacebar: Scroll down one page.
q: Quit the man page and return to the terminal.
/: Search for a specific term within the man page.
n: Go to the next occurrence of the searched term.
g (lowercase): Go to the beginning of the man page.
G (uppercase): Go to the end of the man page.
h: Display a help screen with navigation shortcuts.

Man pages are organized into different sections, each covering a specific category of information. By default, man displays section 1 (executable programs or shell commands). To view a different section, specify the section number before the command name:

Code:

    man [section_number] [command_name]

 to view section 5 of the passwd command, which pertains to file formats:

    man 5 passwd

1: Executable programs or shell commands.
2: System calls.
3: Library functions.
4: Special files (devices).
5: File formats and conventions.
6: Games.
7: Miscellaneous (e.g., man-pages itself).
8: System administration commands.