These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.
![image](https://user-images.githubusercontent.com/80698243/134033827-3628c38f-b650-44d7-9df0-487589213961.png)

elk-playbook.yml

This document contains the following details:

Description of the Topologu
Access Policies
ELK Configuration
Beats in Use
Machines Being Monitored
How to Use the Ansible Build
Description of the Topology
The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network. Load balancers protects the system from DDoS attacks by shifting attack traffic. The advantage of a jump box is to give access to the user from a single node that can be secured and monitored.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the network and system logs. -Filebeat watches for any information in the file system which has been changed and when it has. -Metricbeat takes the metrics and statistics that collects and ships them to the output you specify

The configuration details of each machine may be found below. Note: Use the Markdown Table Generator to add/remove values from the table.

Name	Function	IP Address	Operating System
Jump Box	Gateway	10.0.0.1	Linux
Web 1 DVWA	Server	10.1.0.10	Linux
Web 2 DVWA	Server	10.1.0.9	Linux
ELK Stack	Server	10.2.0.4	Linux
Access Policies
The machines on the internal network are not exposed to the public Internet.

Only the JumpBox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses: 76.171.189.35

Machines within the network can only be accessed by the JumpBox. 20.98.70.83

A summary of the access policies in place can be found in the table below.

Name	Publicly Accessible	Allowed IP Addresses
Jump Box	Yes	Home IP
Web 1	No	52.250.52.51 (RedTeam-LB)
Web 2	No	52.250.52.51 (RedTeam-LB)
ELK	Yes	Home IP
Elk Configuration
Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...

The main advantage is the automation of the configuration.
The playbook implements the following tasks:

docker.io
Install pip3
Install Docker python module
Increase virtual memory
download and launch a docker elk docker_container
The following screenshot displays the result of running docker ps after successfully configuring the ELK instance.
![image](https://user-images.githubusercontent.com/80698243/134034014-1ef0512c-4e35-4d89-8897-28746ff53ee5.png)

Target Machines & Beats
This ELK server is configured to monitor the following machines:

Web-1 10.1.0.10
Web-2 10.1.0.9
We have installed the following Beats on these machines:

Filebeat
Metricbeat
These Beats allow us to collect the following information from each machine: -Filebeat system log management and collecting data like Sudo commands, SSH logins, and new users and groups -Metricbeat is connected to dvwa and tracks CPU usage, Memory, and Number of Containers.

Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned:

SSH into the control node and follow the steps below:

Copy the yml files to control node.
Update the host file to include ips addresses on the network.
Run the yml files, and navigate to http://[ELK ip address]:5601/app/kibana to check that the installation worked as expected.
Using the Playbook Pt.2
-Copy the multiple .yml files from /TheKeyToElk/Ansible to the jumpbox ansible continaer.

-Update the Hosts file to include two sections [elk] [webservers] with each having their respective VM IPs directly under them.

-Also in the Hosts file, update server IPs with Python3.

-Navigate to http://(ElkIPAddress):5601/app/kibana to make sure the elk server is running.
