#!/usr/bin/python3
from sys import argv, exit as system_exit
from os import rename as rename_file
from os.path import isdir, exists as file_exists
from re import sub as regex_sub

def main():
    if len(argv) < 2:
        print("Usage: linuxify <filename>")
        system_exit(1)

    files = argv[1:]

    for file in files:
        if not file_exists(file):
            print(f"The file \"{file}\" does not exist")
            system_exit(1)

        # Format file
        try:
            filetype = "DIR" if isdir(file) else "FILE"
            new_filename = format_filename(file)

            rename_file(file, new_filename)
            print(f"{filetype} \"{file}\" reformated to \"{new_filename}\"")
        except OSError as error:
            print(f"An error occurred: {error}")
            system_exit(1)
        

def format_filename(filename):
    filename = regex_sub(r'\s', ' ', filename)
    filename = filename.replace(" ", "-")
    filename = regex_sub(r'-+', '-', filename)
    filename = filename.lower()

    return filename


if __name__ == "__main__":
    main()