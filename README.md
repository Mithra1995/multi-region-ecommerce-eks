Title: Deploying an E-Commerce Microservice Application on AWS EKS using Terraform and Jenkins
This project demonstrates the deployment of a microservices-based e-commerce application on AWS using a DevOps pipeline. Infrastructure is provisioned using Terraform as Infrastructure as Code, which automates the creation of resources such as the VPC and the Kubernetes cluster on Amazon Elastic Kubernetes Service.
The application services are containerized using Docker and the images are stored in Amazon Elastic Container Registry. A CI/CD pipeline is implemented using Jenkins to automate the process of building Docker images and deploying the application to the Kubernetes cluster.
Kubernetes orchestrates the containerized services, manages scaling, and exposes the application through a load balancer. For monitoring and observability, Prometheus collects system metrics and Grafana provides dashboards to visualize application and cluster performance.
Technology stack:
• Terraform → Infrastructure Provisioning (Infrastructure as Code)
• Docker → Containerization of Microservices
• Jenkins → CI/CD Pipeline Automation
• Kubernetes (EKS) → Container Orchestration and Deployment
• Prometheus & Grafana → Monitoring and Observability
• AWS CLI → Cluster Configuration and Tool Installation
Infrastructure → CI/CD → Deployment → Monitoring
GitHub Repository
Repository contains:
•	Terraform scripts
•	Dockerfiles
•	Kubernetes manifests
•	Jenkins pipeline configuration



Terraform Code (Infrastructure as Code)
Defined AWS resources such as:
•	VPC
•	Subnets
•	Security groups
•	EKS cluster


Commands Used:
terraform init
terraform plan
terraform apply

Resources created:
• VPC
• Subnets
• Security groups
• EKS cluster
• Networking components


Then Installed Kubectl using CLI
• kubectl installed for Kubernetes cluster management
• AWS CLI used to configure cluster access






















Worker nodes created”
•  Worker nodes are EC2 instances
•  They run Kubernetes pods
•  Kubernetes scheduler assigns workloads to nodes




Created ECR for microservices:
• Created ECR repository
• Stores Docker images for microservices
• Kubernetes pulls images from ECR


Create Jenkins server for CI/CD pipeline :
•  Jenkins installed on EC2 instance
•  Jenkins used to automate CI/CD pipeline
•  Integrated with GitHub repository


Install docker , git , kubectl in Jenkins server and NGINX ingress controller for load balancer




Create Jenkins pipeline 
Pipeline stages:
1.	Pull code from GitHub
2.	Build Docker image
3.	Push image to ECR
4.	Deploy application to EKS




Load balancer got created



•	Kubernetes Service / Ingress created
•	AWS automatically provisions load balancer
•	Routes traffic to application pods


After deployment
•  Kubernetes deployments created
•  Pods running for microservices
•  Services expose applications


Product service
Cart Service



Monitoring
Monitoring implemented to track:
•	cluster health
•	application performance
•	resource usage



Prometheus
•  Collects metrics from Kubernetes cluster
•  Tracks CPU, memory, and pod performance
•  Stores time-series data



Grafana
•  Connects to Prometheus data source
•  Displays dashboards
•  Visualizes system metrics





