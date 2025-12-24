Overview

log_archive.sh is a Bash script designed to automate the process of archiving log directories on a Linux system.
It validates input, creates timestamped compressed archives, and maintains a log file to track archive operations.
This script is useful for basic server maintenance and DevOps automation tasks.

Features

Validates input arguments

Checks if the log directory exists

Creates timestamped .tar.gz archives

Stores archives in a dedicated directory

Maintains an archive activity log for auditing

Prerequisites

Linux operating system

Bash shell

tar utility

Usage
Make the script executable
chmod +x log_archive.sh

Run the script
./log_archive.sh <log-directory>

Example
./log_archive.sh /var/log

Output

Archived logs are stored in:

~/log_archives/


Archive naming format:

logs_archive_YYYYMMDD_HHMMSS.tar.gz


Archive activity is recorded in:

archive.log

Use Cases

Log backup automation

Server housekeeping

DevOps practice project

Pre-maintenance log archival

Error Handling

Displays usage message if no argument is provided

Exits if the specified log directory does not exist

Author

Krishi Upadhyay

License

This project is for learning and educational purposes.
