# Exercise 3: Running Ad-hoc Commands

## Step 1: Ping Hosts

Run the following command to ping all hosts in your inventory:

```bash
ansible all -m ping -i inventory
```

If there are connectivity issues, troubleshoot to understand how Ansible connects to the remote servers.

## Step 2: Gather Host Details

Run the following command to gather detailed information about the hosts:

```bash
ansible all -m setup -i inventory
```

## Step 3: Create a File on Remote Hosts

Use the Ansible copy module to create a file with content “I love Ansible!” on all remote hosts:

```bash
ansible all -m copy -a "dest=/tmp/ansible_test_file content='I love Ansible!'" -i inventory
```
