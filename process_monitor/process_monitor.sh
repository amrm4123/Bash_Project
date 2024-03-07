#!/usr/bin/bash -i

# Source the configuration file
source process_monitor.conf

# Function to display the menu
display_menu() {
    echo "Process Monitor - Menu"
    echo "1. List Running Processes"
    echo "2. Process Information"
    echo "3. Kill a Process"
    echo "4. Process Statistics"
    echo "5. Real-time Monitoring"
    echo "6. Search and Filter"
    echo "7. Exit"
}

# Function to list running processes
list_processes() {
    echo "Listing running processes..."
    ps -e -o pid,ppid,user,%cpu,%mem,cmd
}

# Function to display process information
process_info() {
    echo "Enter the PID of the process:"
    read pid

    echo "Process Information:"
    ps -p $pid -o pid,ppid,user,%cpu,%mem,cmd
}

# Function to kill a process
kill_process() {
    echo "Enter the PID of the process to kill:"
    read pid

    echo "Killing process with PID $pid..."
    kill $pid
}

# Function to display process statistics
process_stats() {
    echo "Process Statistics:"
    echo "Total Number of Processes: $(ps aux | wc -l)"
    echo "Memory Usage: $(free -m | awk 'NR==2{print $3}') MB"
    echo "CPU Load: $(uptime | awk '{print $10 $11 $12}')"
}

# Function for real-time monitoring
monitor_processes() {
    echo "Real-time Monitoring (Press Ctrl+C to exit):"
    while true; do
        clear
        list_processes
        sleep $UPDATE_INTERVAL
    done
}

# Function to search and filter processes
search_processes() {
    echo "Enter the search criteria:"
    read criteria

    echo "Matching Processes:"
    ps aux | grep $criteria | grep -v grep
}

# Function to exit the script
exit_script() {
    echo "Exiting Process Monitor..."
    exit 0
}

# Main loop for interactive mode
while true; do
    display_menu
    echo "Enter your choice:"
    read choice

    case $choice in
        1)
            list_processes
            ;;
        2)
            process_info
            ;;
        3)
            kill_process
            ;;
        4)
            process_stats
            ;;
        5)
            monitor_processes
            ;;
        6)
            search_processes
            ;;
        7)
            exit_script
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac

    echo "Press Enter to continue..."
    read
done