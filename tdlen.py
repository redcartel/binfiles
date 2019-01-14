#! /usr/bin/python3
""" Display a line count for to-do files for use in an enhanced zsh prompt """
import os
from sys import argv
from functools import reduce

FILES = ['todo-life.txt', 'todo-then.txt', 'todo-now.txt']
DIR = "etc"
ZERO = '\u2713'

BASEPATH = os.path.join(os.path.expanduser('~'), DIR)
FILEPATHS = [os.path.join(BASEPATH, filename) for filename in FILES]


def fgcolor(num):
    return "\x1b[38;5;{}m".format(num)


COLOR_THRESHOLDS = [(6, fgcolor(197)), (3, fgcolor(208)), (1, fgcolor(0)),
                    (0, fgcolor(154))]
BLACK = fgcolor(0)
CLEAR = "\x1b[0m"


def lines_in_file(filename):
    """ return the number of lines in a text file, 0 if not exists """
    if not os.path.isfile(filename):
        with open(filename, 'w') as file_object:
            pass
    with open(filename, 'r') as file_object:
        return reduce(lambda x, y: x + 1, file_object, 0)


def colored(num, color=True):
    if not color:
        if num == 0:
            return ZERO
        return str(num)

    if num == 0:
        string = ZERO
    else:
        string = str(num)

    if not isinstance(num, int):
        return BLACK + str(num)
    for threshold in COLOR_THRESHOLDS:
        if num >= threshold[0]:
            return threshold[1] + string


if __name__ == '__main__':
    color = True
    if "no" in argv:
        color = False
    output = (colored(",", color)).join(
        colored(lines_in_file(filename), color) for filename in FILEPATHS)
    print(output + fgcolor(16))
