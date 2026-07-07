# VMware Workstation Lab Host

## Overview

This document explains how VMware Workstation Pro will be used in the Microsoft 365 Dental Lab project. These will be worked in conjuction with Entra ID and intune.

The purpose of VMware Workstation Pro in this lab is to provide a local virtualization environment for creating and running Windows virtual machines. These virtual machines will act as test workstations for the fake dental lab environment. The machines will be used to practice Microsoft 365, Microsoft Entra ID, Microsoft Intune, device enrollment, configuration policies, compliance policies, application deployment, and endpoint management.

This lab is not intended to run production workloads. The virtual machines will only be powered on when active testing or documentation is being performed.

## Why VMware Workstation Pro Is Being Used

VMware Workstation Pro was selected because it allows Windows virtual machines to be created and managed from a normal Windows laptop or desktop without converting the machine into a dedicated server.

This is useful for the dental lab project because the spare Windows laptop can still be used as a portable Windows computer while also being used as a lab host when needed.

VMware Workstation Pro will allow the lab to:

* Create multiple Windows test machines
* Simulate different dental lab employee workstations
* Test Microsoft Entra ID join
* Enroll Windows devices into Microsoft Intune
* Apply Intune configuration profiles
* Test compliance policies
* Deploy applications to lab devices
* Practice troubleshooting from both the user side and admin side
* Document device management procedures for the repo

## Planned Lab Design

The VMware host will be used to run Windows endpoint virtual machines for the fake dental lab.

Planned virtual machines:

| VM Name         | Purpose                           | Example User                                                                            |
| --------------- | --------------------------------- | --------------------------------------------------------------------------------------- |
| DL-FRONTDESK-01 | Front desk workstation            | [frontdesk@dentallab732.onmicrosoft.com](mailto:frontdesk@dentallab732.onmicrosoft.com) |
| DL-LABTECH-01   | Dental lab technician workstation | [labtech@dentallab732.onmicrosoft.com](mailto:labtech@dentallab732.onmicrosoft.com)     |
| DL-MANAGER-01   | Office manager workstation        | [manager@dentallab732.onmicrosoft.com](mailto:manager@dentallab732.onmicrosoft.com)     |

These devices will represent common computers that could exist in a small dental lab or dental office environment.

## Recommended VM Configuration

Each virtual machine should start with a simple configuration.

| Setting          | Recommended Value                                  |
| ---------------- | -------------------------------------------------- |
| Operating System | Windows 11 Pro or Windows 11 Enterprise Evaluation |
| CPU              | 2 virtual processors                               |
| Memory           | 4 GB RAM                                           |
| Disk             | 80 GB virtual disk                                 |
| Network          | NAT                                                |
| Firmware         | UEFI                                               |
| TPM              | Enabled if available                               |
| Secure Boot      | Enabled if available                               |

The first VM should be created and tested before building additional machines. Once the first device successfully joins Microsoft Entra ID and enrolls into Intune, additional machines can be created using the same process.

## Storage Plan

The VM files should be stored on a drive with enough free space for Windows, updates, and future testing.

The current computer should not be used for hosting VMs if it only has a small amount of free storage remaining. A single Windows VM can take a large amount of space once Windows updates, applications, snapshots, and temporary files are included.

Preferred storage options:

1. Internal SSD with enough free space
2. External SSD dedicated to lab VMs
3. Spare Windows laptop with enough free storage

A 1 TB external SSD is recommended if multiple VMs will be created.

Example folder structure:

```text
VMware-Lab/
├── DL-FRONTDESK-01/
├── DL-LABTECH-01/
└── DL-MANAGER-01/
```

## How the Lab Will Be Used

The VMware lab will be used only when practicing Microsoft 365 and Intune tasks.

Basic workflow:

```text
1. Power on the spare laptop or lab host.
2. Open VMware Workstation Pro.
3. Start the needed Windows VM.
4. Sign in using a Microsoft 365 lab user.
5. Test Entra ID, Intune, or Microsoft 365 settings.
6. Document the result in the GitHub repo.
7. Shut down the VM when finished.
8. Power off the host if it is no longer needed.
```

The laptop does not need to stay on 24/7. Since this is a lab environment, the virtual machines only need to be online during active testing.

## VMware vs Proxmox Decision

Proxmox was considered for this lab, but VMware Workstation Pro was selected instead.

Proxmox is better suited for a dedicated server or mini-server that stays in one place and runs virtual machines continuously. Since the spare laptop may still be needed for normal portable Windows use, installing Proxmox would make the laptop less convenient as a daily Windows device.

VMware Workstation Pro is a better fit for this project because:

* Windows can remain installed on the laptop
* The laptop can still be used normally
* VMs can be started only when needed
* The setup is easier for occasional lab work
* VM files can be moved to an external SSD later
* It is simple to open, test, document, and shut down

## Role of the Raspberry Pi

The Raspberry Pi will not be used to host Windows endpoint VMs for this lab.

Instead, the Raspberry Pi can continue to be used for supporting infrastructure and Linux-based services, such as:

* Docker containers
* Monitoring tools
* Documentation services
* Uptime Kuma
* Grafana
* Prometheus
* DNS testing
* Linux administration practice

The Windows virtual machines for Intune and Entra ID testing will be hosted on VMware Workstation Pro.

## Microsoft 365 and Intune Testing Goals

The VMware-hosted Windows VMs will be used to test the following Microsoft 365 administration tasks:

### Entra ID

* Create users
* Create groups
* Assign users to groups
* Join Windows devices to Microsoft Entra ID
* Review device objects in Entra ID
* Test user sign-in behavior

### Intune

* Enroll Windows devices
* Create device groups
* Create compliance policies
* Create configuration profiles
* Test Windows Update policies
* Deploy applications
* Review device check-in status
* Troubleshoot failed policy deployment
* Retire or delete lab devices

### Security

* Test MFA behavior
* Test Conditional Access policies
* Require compliant devices
* Test sign-in restrictions
* Review device compliance status
* Practice basic endpoint security management

### Documentation

Each completed lab task should be documented in the repo with:

* Goal of the task
* Admin center used
* Steps performed
* Screenshots if available
* Result
* Troubleshooting notes
* What was learned

## Planned VM Naming Convention

The lab will use a simple naming convention:

```text
DL-[ROLE]-[NUMBER]
```

Examples:

```text
DL-FRONTDESK-01
DL-LABTECH-01
DL-MANAGER-01
```

This makes the lab easier to understand and keeps the device names realistic for a small dental lab environment.

## Planned User Examples

Example Microsoft 365 users:

| User                                                                                    | Purpose                           |
| --------------------------------------------------------------------------------------- | --------------------------------- |
| [frontdesk@dentallab732.onmicrosoft.com](mailto:frontdesk@dentallab732.onmicrosoft.com) | Front desk user                   |
| [labtech@dentallab732.onmicrosoft.com](mailto:labtech@dentallab732.onmicrosoft.com)     | Lab technician user               |
| [manager@dentallab732.onmicrosoft.com](mailto:manager@dentallab732.onmicrosoft.com)     | Office manager user               |
| [billing@dentallab732.onmicrosoft.com](mailto:billing@dentallab732.onmicrosoft.com)     | Billing-related testing           |
| [support@dentallab732.onmicrosoft.com](mailto:support@dentallab732.onmicrosoft.com)     | Shared mailbox or support testing |

These users can be assigned different licenses, groups, and policies depending on the lab scenario.

## First VM Build Plan

The first VM to create will be:

```text
DL-FRONTDESK-01
```

Purpose:

```text
Front desk workstation used to test Microsoft Entra ID join, Intune enrollment, Microsoft 365 sign-in, and basic device policy deployment.
```

Initial test goals:

1. Install Windows 11.
2. Name the device `DL-FRONTDESK-01`.
3. Join the device to Microsoft Entra ID.
4. Sign in with a Microsoft 365 lab user.
5. Confirm the device appears in Entra ID.
6. Confirm the device appears in Intune.
7. Apply a basic Intune configuration profile.
8. Confirm the policy applies successfully.
9. Document the setup process in the repo.

## Future Improvements

Future improvements for this lab may include:

* Adding more Windows VMs
* Creating role-based Intune groups
* Testing Windows Autopilot
* Testing app deployment
* Testing BitLocker policies
* Testing Conditional Access with compliant devices
* Testing device retirement and wipe actions
* Creating troubleshooting documentation
* Creating diagrams of the lab environment

## Summary

VMware Workstation Pro will be used as the local virtualization platform for the Microsoft 365 Dental Lab. It allows Windows endpoint VMs to be created without turning the spare laptop into a dedicated server.

The virtual machines will be used for hands-on practice with Microsoft Entra ID, Microsoft Intune, Windows device enrollment, compliance policies, configuration profiles, app deployment, and endpoint troubleshooting.

This setup keeps the lab simple, portable, and realistic for occasional Microsoft 365 administration practice.
