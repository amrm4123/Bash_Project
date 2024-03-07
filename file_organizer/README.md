# File Organizer Script

The File Organizer Script is a Bash script that helps you organize your files by moving them into specific directories based on their file extensions.

## Features

- Organize files by moving them into directories based on their file extensions.
- Create directories automatically for file extensions that don't have a corresponding directory.
- Exclude specific file extensions from being organized.
- Preserve the directory structure of files while organizing them.

## Requirements

- Bash (Bourne Again SHell) - The script is written in Bash and requires a Bash-compatible shell to run.

## Usage

1. Clone the repository or download the script file.

2. Make the script executable:


chmod +x file_organizer.sh

3. Run the script with the following command:

./file_organizer.sh [options]

## Options
The script supports the following options:

-d or --directory: Specify the directory to organize. If not provided, the script will organize files in the current directory.

-e or --exclude: Specify a comma-separated list of file extensions to exclude from organization. These file extensions will be skipped and not moved into directories.

-h or --help: Display the help message and usage instructions.

## Examples
Organize files in the current directory:
bash

./file_organizer.sh

Organize files in a specific directory:

./file_organizer.sh -d /path/to/directory

Organize files in the current directory, excluding the .txt and .pdf file extensions:

./file_organizer.sh -e txt,pdf
## License

This project is licensed under the MIT License.

Feel free to use, modify, and distribute this script according to the terms of the MIT License.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.
