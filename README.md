# Opensourceops - Ansible Lab

Welcome to the Opensourceops Ansible Lab! This repository provides a hands-on environment to learn and practice Ansible.

## Getting Started

You have two options to start the lab environment:

### Option 1: Use Ansible-Lab GCloud Shell

Click the "Open in Cloud Shell" button in the [ansible-lab-gcloud-shell](https://github.com/opensourceops/ansible-lab-gcloud-shell/) repository to start the lab node. Follow the steps on the right pane to start the lab.

### Option 2: Run Locally

Clone the repository and run the lab locally using Docker Compose:

```bash
git clone https://github.com/opensourceops/hands-on-ansible ~/hands-on-ansible
cd ~/hands-on-ansible
docker-compose up -d
```

## Lab Details

- Lab Status: To check the status of the deployed containers, run:

```bash
./script/ansible-lab-status.sh
```

- Containers: The lab environment consists of one control node and four remote servers:

  - controlnode
  - remote1
  - remote2
  - remote3
  - remote4

- Credentials: All containers are set up with the user devops and the password opensourceops.

## Exercises

The lab includes a series of exercises to guide you through learning Ansible. Each exercise is contained in a separate markdown file:

    1.	Exercise 1: Installing Ansible
    2.	Exercise 2: Creating Inventory File
    3.	Exercise 3: Running Ad-hoc Commands
    4.	Exercise 4: Writing Your First Playbook

Follow these exercises in order to build your understanding and proficiency with Ansible.

### Conclusion

This lab provides a practical environment to learn Ansible. Continue exploring and experimenting with more advanced features and modules to deepen your understanding. Happy automating!

Feel free to adjust any parts as needed!
