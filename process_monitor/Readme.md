# Process Monitor Script

The Process Monitor Script is a Bash script that provides various functionalities to monitor and manage processes running on a system.

## Features

- List running processes with detailed information.
- Display process information based on the provided PID.
- Kill a running process using its PID.
- View process statistics such as the total number of processes, memory usage, and CPU load.
- Real-time monitoring of running processes.
- Search for processes based on specific criteria.

## Usage

1. Clone the repository or download the script file.

2. Make the script executable:

chmod +x process_monitor.sh

3. Edit the process_monitor.conf file to customize the script configuration if needed.

4. Run the script with the following command:

./process_monitor.sh
5. Follow the on-screen menu options to perform different actions.

## Configuration

The script uses a configuration file process_monitor.conf to define settings. You can modify the configuration file as per your requirements. The available configuration options are:

UPDATE_INTERVAL: The interval (in seconds) for real-time monitoring. Default is 2 seconds.

## License

This project is licensed under the MIT License.

Feel free to use, modify, and distribute this script according to the terms of the MIT License.

## Contributing
Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

Disclaimer
This script is provided as-is without any warranty. Use it at your own risk.
