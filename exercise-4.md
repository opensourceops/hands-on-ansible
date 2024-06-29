# Exercise 4: Writing Your First Playbook

## Step 1: Create a Simple Playbook

Create a playbook named `create_file.yml` with the following content:

```bash
vim first-playbook.yml
```

```yaml
---
- name: Create a file on all remote servers
  hosts: all
  tasks:
    - name: Create an empty file
      file:
        path: /tmp/ansible_test_file
        state: touch
```

## Step 2: Run the Playbook

Execute the playbook using the following command:

```bash
ansible-playbook -i first-playbook.yml
```
