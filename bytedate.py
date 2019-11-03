#! /usr/bin/env python
"""whatever"""
import os
import sys
from datetime import timedelta, date

FIRST_W1D1 = date(2019, 8, 19) # phase 1 day 1
TODAY = date.today()
DIRECTORY = os.path.join(os.environ["HOME"], "Today")

REVERSE = False

def get_monday(thedate=TODAY):
    return thedate - timedelta(days=thedate.weekday())

def week_of_phase(thedate=TODAY):
    monday = get_monday(thedate)
    return (monday - FIRST_W1D1).days // 7 % 4 + 1

def day_of_week_string(thedate=TODAY):
    return thedate.strftime("%a")

def start_of_phase(thedate=TODAY):
    days_since_first = timedelta(days=(thedate - FIRST_W1D1).days % (7 * 4))
    return thedate - days_since_first

def month_day_wday(thedate=TODAY, reverse=False):
    return thedate.strftime("%b-%d") if not reverse else thedate.strftime("%d-%b")

def phaseweek_day(thedate=TODAY):
    week = week_of_phase(thedate)
    return thedate.strftime(f'Week{week}%a')

def byte_date(thedate=TODAY):
    return month_day_wday(thedate) + "-" + phaseweek_day(thedate)

if __name__ == "__main__":
    flag = "" if len(sys.argv) == 1 else sys.argv[1]
    if not flag:
        print(byte_date())
    elif flag == "-r":
        print(month_day_wday(reverse=True) + "-" + phaseweek_day())
    elif flag == "-p":
        print(month_day_wday(start_of_phase()))
    elif flag == "-y":
        print(TODAY.strftime(f'%y-{month_day_wday(start_of_phase())}'))
    elif flag == "-w":
        print(phaseweek_day() + "-" + month_day_wday())

# no arg Oct12-Week4Sat
# -r     12Oct-Week4Sat
# -p     Sep16
# -y     19-Sep16
# -w     Week4Sat-Oct12
