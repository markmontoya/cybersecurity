# cyber
Files from GW Cybersecurity Bootcamp.
This repository includes linux and ansible scripts including a network diagram from the GW cybersecurity bootcamp. 
## Automated ELK Stack Deployment
The files in this repository were used to configure the network depicted below.
**Note**: CloudNetwork_Montoya
![https://github.com/markmontoya/cybersecurity/blob/main/Diagrams/CloudNetwork_Montoya.html]
These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the install-elk file may be used to install only certain pieces of it, such as Filebeat.
  -filebeat-playbook.yml
This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build

### Description of the Topology
The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.
Load balancing ensures that the application will be highly redunant, in addition to restricting access to the network. Load balancing also protects the network against denial of service attacks and installing a jumpbox allows administrators to monitor the whole network by securing and monitoring a single box.
Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the network and system logs.
- Filebeat collects data about the file system.
- Metricbeat collects machine metrics,such as uptime.
The configuration details of each machine may be found below.
| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump-Box | Gateway   | 10.1.0.4   | Linux|
| DVWA-1   | Webserver| 10.1.0.5   | Linux|
| DVWA-2   | Webserver| 10.1.0.6   | Linux|
| ELK            | Monitor     | 10.0.0.4   | Linux|

### Access Policies
The machines on the internal network are not exposed to the public Internet. 
Only the Jump-Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 100.15.153.50
Machines within the network can only be accessed by the Jump-Box.
- 100.15.153.50 via the Jump-Box can access the ELK Server.
A summary of the access policies in place can be found in the table below.
| Name     | Publicly Accessible | Allowed IP Addresses |
|--------------|------------------|----------------------|
| Jump-Box |     No              | 100.15.153.50   |
| ElkServer  |     No              | 100.15.153.50   |

### Elk Configuration
Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- you can have multiple automated installs without user errors.
The playbook implements the following tasks:
- Install python3
- Install Docker python module
- Install elk v761
The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![image](https://user-images.githubusercontent.com/40802348/116797919-a2627d00-aab8-11eb-82e3-d2fc56b65cc5.png)

 
### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- DVWA-1   10.1.0.5
- DVWA-2   10.1.0.6


We have installed the following Beats on these machines:
- filebeats
- metricbeats
These Beats allow us to collect the following information from each machine:
- Filebeat collects data about the file system, e.g., types of files accessed or downloaded.
- Metricbeat collects machine metrics, e.g., system uptime, access failures.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 
SSH into the control node and follow the steps below:
- Copy the playbook file to /etc/ansible.
- Update the playbook file to include hosts to install to.
- Run the playbook, and navigate to the webservers to check that the installation worked as expected.
- The file with the .yml extension and copy it to /etc
- Update the config.yml file with necessary updates and copy to ansible container? Include a line in the config.yml file that specifies [elk] and the machine IP address.
- The IP address of the elk server - http://20.69.245.175:5601/app/elk.

