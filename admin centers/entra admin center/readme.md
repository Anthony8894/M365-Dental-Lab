# Microsoft Entra ID Admin Center

## Overview

Microsoft Entra ID is Microsoft’s cloud-based identity and access management service.

It is used to manage:

* User accounts
* Groups and memberships
* Administrator roles
* User sign-ins
* Multifactor authentication
* Devices connected to the organization
* Access to Microsoft 365 applications

In this dental lab, Microsoft Entra ID is used to manage employee identities, permissions, and access.

---

## Accessing the Admin Center

The Microsoft Entra admin center can be accessed at:

```text
https://entra.microsoft.com
```

An administrator account with the correct permissions is required to make changes.

---

## Tasks I Can Perform

### Manage Users

The **Users** section allows an administrator to:

* Create new user accounts
* View existing users
* Update job titles and departments
* Reset user passwords
* Disable or delete accounts
* Review assigned groups and roles
* Revoke active sign-in sessions

---

### Manage Groups

Groups make it easier to organize users and assign access.

Examples used in this lab include:

```text
All Staff
Front Office
Billing
Administration
```

From the Entra admin center, I can:

* Create groups
* Add or remove members
* Assign group owners
* Review group memberships
* Organize users by department

---

### Manage Devices

The **Devices** section displays devices that are registered or joined to Microsoft Entra ID.

From this section, I can:

* View registered and joined devices
* Check device ownership
* Review device status
* Disable devices
* Delete devices that are no longer used

A planned lab device is:

```text
DL-FRONTDESK-01
```

This virtual machine will be joined to Microsoft Entra ID and used as a front-desk workstation.

---

### Review Sign-In Activity

Sign-in logs can help investigate account and login problems.

The logs may show:

* Which user attempted to sign in
* The application they accessed
* Whether the sign-in succeeded or failed
* The date and time of the attempt
* The device or location used
* The reason a sign-in failed

These logs can help troubleshoot:

* Incorrect passwords
* Blocked accounts
* MFA problems
* Suspicious sign-in attempts
* Application access issues

---

### Manage Administrator Roles

Administrator roles determine what an administrator is allowed to manage.

Common roles include:

* Global Administrator
* User Administrator
* Groups Administrator
* Helpdesk Administrator
* Security Administrator

Administrators should only receive the permissions required to complete their job.

---

## Entra ID and Microsoft 365

Microsoft Entra ID manages user identities and access.

The Microsoft 365 admin center is mainly used to manage services such as:

* Microsoft 365 licenses
* Exchange Online
* Microsoft Teams
* SharePoint Online
* Microsoft 365 applications

The two admin centers work together.

For example, a user created in the Microsoft 365 admin center will also appear in Microsoft Entra ID.

---

## How Entra ID Is Used in This Lab

Microsoft Entra ID supports several parts of the M365 Dental Lab, including:

* Creating employee identities
* Organizing employees into groups
* Supporting employee onboarding
* Supporting employee offboarding
* Protecting accounts with MFA
* Reviewing sign-in activity
* Assigning administrator permissions
* Connecting Windows virtual machines
* Preparing devices for Intune management

---

## Planned Tasks

* Join `DL-FRONTDESK-01` to Microsoft Entra ID
* Review the device in the Entra admin center
* Test signing in with a dental lab user
* Review the user’s sign-in logs
* Test multifactor authentication
* Create a Conditional Access policy
* Document common account troubleshooting steps

---

## Summary

Microsoft Entra ID provides centralized management for users, groups, devices, authentication, and access.

Using Entra ID in this lab demonstrates how an administrator can:

* Manage employee identities
* Secure user accounts
* Investigate sign-in problems
* Control administrative access
* Connect organizational devices to Microsoft 365
