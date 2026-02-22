# Server Status Monitor

A simple Bash script to check if servers or websites are up or down.  
It’s interactive, logs everything to a file so you can check later.  

---

## How it works

- Ask for one or more servers/websites at a time.  
- Ping each server to see if it’s UP.  
- Prints **green** if UP, **red** if DOWN.  
- Saves results to `server_status.log`.  
- Lets you repeat the check as many times as you want.  

---

## Usage

Make it executable:

```bash
chmod +x server_checker.sh
./server_checker.sh