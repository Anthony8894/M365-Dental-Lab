# VMware Workstation Lab Host. Updated 07/12/2026

## Overview

VMware Workstation Pro is being used to create Windows virtual machines for the Microsoft 365 Dental Lab project.

These virtual machines will represent employee computers and will later be used for Microsoft Entra ID and Microsoft Intune testing. Since I don't have unlimited hard drive space, I will also create a VM through Azure, which may pose as a challenge. 

## Current Status

VMware Workstation Pro has been installed.

The first Windows 11 virtual machine has been created and named:

```text
DL-FRONTDESK-01
```
This VM represents a front desk workstation in the dental lab environment.

## Why I decided to use VMware

VMware Workstation Pro allows the lab to run Windows virtual machines without replacing the Windows operating system on the host laptop.

The virtual machines can be started when testing is needed and shut down afterward. The laptop does not need to stay powered on continuously.

## planned use

In this case, all of the planned events will be for the main VM machine: 

- Join the device to Microsoft Entra ID
- Sign in with a Microsoft 365 lab user
- Enroll the device into Microsoft Intune
- Add the device to an Intune device group
- Apply a basic configuration profile
- Create and test a compliance policy
- Deploy an application through Intune
- Test Windows Update settings
- Review the device status in Entra ID and Intune
- Practice retiring or deleting the device

These task may be documented on a separate document.
