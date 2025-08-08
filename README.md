# Zendrix DevOps Project: CI/CD Pipeline with Jenkins, Kubernetes, and Docker

## 📝 Project Overview

This project outlines the implementation of a robust **CI/CD pipeline** for Zendrix Corporation's production application. The goal is to automate the entire deployment process, from code changes in a GitHub repository to a running application in a Kubernetes cluster. This pipeline ensures that the latest version of the application is always deployed efficiently and reliably.

---

## 🚀 Pipeline Flow

The CI/CD pipeline is orchestrated using **Jenkins** and consists of the following automated steps:

1.  **Code Commit**: A developer pushes code changes to the **GitHub** repository.
2.  **CI Trigger**: **Jenkins**, acting as the CI server, automatically detects the code change and triggers a build.
3.  **Containerization**: Jenkins uses **Docker** to build a new, updated image of the application.
4.  **Testing**: The new Docker image is tested at port 85 to ensure the application is working as expected.
5.  **Deployment**: If the tests pass, the Docker image is pushed to **DockerHub**, and **Kubernetes** deploys the latest version of the application.
6.  **Service Exposure**: The application is made accessible to users via a **NodePort Service** within the Kubernetes cluster.

---

## 🛠️ Technologies Used

| Tool/Technology | Role in Project |
| :--- | :--- |
| **GitHub** | Version control system for storing the application's source code. |
| **Jenkins** | CI/CD automation server to orchestrate the entire pipeline. |
| **Docker** | Containerization platform for creating portable application images. |
| **Kubernetes** | Container orchestration system for deploying and managing the application at scale. |
| **Terraform** | Infrastructure as Code (IaC) tool for provisioning the required cloud infrastructure. |
| **Ansible** | Configuration management tool for installing dependencies (e.g., Java) on the machines. |

---

## 🌐 Application Deployment

The application is deployed on Kubernetes as a **NodePort Service**. This makes the application accessible on a static port on each node in the cluster, allowing external traffic to reach the service.

---

## 🔧 Installation & Configuration

* **Terraform**: The `main.tf` file contains the code to provision the necessary cloud infrastructure (e.g., VMs).
* **Ansible**: The `playbook.yml` file is used to install Java and other dependencies on the machines.
* **Jenkins**: A **Freestyle pipeline** is configured to automate the build and deployment process based on the steps outlined above.
* **Kubernetes**: Deployment and service manifests are defined to deploy the application as a NodePort service.
