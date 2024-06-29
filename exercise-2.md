# Exercise 2: Creating Inventory File

## Step 1: Create Inventory File

Create an inventory file with the following content:

```plaintext
172.16.234.11
172.16.234.12
172.16.234.13
172.16.234.14
```

## Step 2: Verify Inventory

Run the following command to list the entries in your inventory:

```bash
ansible-inventory -i inventory --list
```
