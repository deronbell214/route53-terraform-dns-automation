# AWS Route 53 DNS Automation w/ Terraform

## Overview

This project demonstrates how to automate DNS infrastructure in AWS using Terraform and Amazon Route 53.

The goal was to create a repeatable Infrastructure-as-Code workflow for deploying a Route 53 hosted zone and multiple DNS records without manually configuring them through the AWS Console.

## Tech Used

- AWS Route 53
- Terraform
- AWS CLI
- Visual Studio Code
- Git/GitHub
- PowerShell

## What This Project Deploys

- Route 53 Hosted Zone
- A record for `www`
- A record for `api`
- A record for `mail`
- TXT verification record

## Project Structure

```text
route53-terraform-dns-automation/
├── main.tf
├── variables.tf
├── terraform.tfvars.example
├── .gitignore
└── README.md
