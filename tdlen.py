#! /usr/bin/python3
""" Display a line count for to-do files for use in an enhanced zsh prompt """
import os
from sty import fg
from functools import reduce

FILES = ['todo-life.txt', 'todo-then.txt', 'todo-now.txt']
DIR = "etc"
COLOR_THRESHOLDS = [(6, fg(197)), (3, fg(208)), (1, fg.black), (0, fg.green)]
ZERO = '\u2713'

BASEPATH = os.path.join(os.path.expanduser('~'), DIR)
FILEPATHS = [os.path.join(BASEPATH, filename) for filename in FILES]


def lines_in_file(filename):
    """ return the number of lines in a text file, 0 if not exists """
    if not os.path.isfile(filename):
        with open(filename, 'w') as file_object:
            pass
    with open(filename, 'r') as file_object:
        return reduce(lambda x, y: x + 1, file_object, 0)


def colored(num, color=True):
    if num == 0:
        string = ZERO
    else:
        string = str(num)

    if color:
        for threshold in COLOR_THRESHOLDS:
            if num >= threshold[0]:
                return threshold[1] + string

    return string


if __name__ == '__main__':
    output = (fg.black + ",").join(
        colored(lines_in_file(filename)) for filename in FILEPATHS)

    print(output, end='')
