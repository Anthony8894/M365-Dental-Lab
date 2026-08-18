# Cisco Duo Deployment with Intune

## Overview

In this scenario, Cisco Duo will be deployed to a Windows device using Microsoft Intune.

Cisco Duo adds an extra layer of security by requiring multi-factor authentication during Windows sign-in.

## Goal

The goal of this lab is to:

* Deploy Cisco Duo through Intune
* Assign Duo to a test Windows device
* Configure Duo MFA
* Test the Windows login process

## Tools Used

* Microsoft Intune
* Microsoft Entra ID
* Cisco Duo
* Windows 11
* Duo Mobile

## Scenario

The dental office wants to improve workstation security by requiring MFA when users sign in to Windows.

Cisco Duo will be packaged as a Windows application and deployed to managed devices through Microsoft Intune.

## Steps

1. Create a Cisco Duo account.
2. Add a test user to Duo.
3. Configure Duo for Windows Logon.
4. Download the Duo Windows installer.
5. Package the installer for Microsoft Intune.
6. Upload the application to Intune.
7. Assign the application to the test device or user.
8. Allow Intune to install Cisco Duo.
9. Configure Duo Mobile for the test user.
10. Sign out of Windows and test Duo MFA.

## Expected Result

After Duo is installed and configured, the user should be required to complete Duo MFA when signing in to the Windows computer.

Example:

```text
Windows Username + Password
        ↓
Cisco Duo MFA
        ↓
Approve Duo Push
        ↓
Windows Desktop
```

## Notes

* This lab should first be tested on a test device before deploying it to multiple users.
* Screenshots can be added throughout the document as the deployment is completed.
* Additional Duo policies and security settings can be tested later.
* **intune can be used to deploy many applications, essentially making the process quicker**
