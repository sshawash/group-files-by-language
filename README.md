# Group Files by Language Scripts

## Description:
The three scripts take a folder containing text files with filenames in the format ```<language>-<sequence_number>.txt```, and groups the files into sub-folders based on the language name.

Example:
A folder with the files:
- files
    - arabic-1.txt
    - arabic-2.txt
    - english-1.txt
    - english-2.txt

will end up with the following structure after running the scripts:
- files
    - arabic
        - arabic-1.txt
        - arabic-2.txt
    - english
        - english-1.txt
        - english-2.txt

## Instructions:
- Clone the repo & cd into the directory.
- Run any script, but make sure to pass the directory path containing the files.
  ex: ```sh rsync.sh ~/one-k-files```
