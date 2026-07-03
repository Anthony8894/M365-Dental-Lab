# 09 - Microsoft Intune Device Management :joy:

## Overview

This document explains how Microsoft Intune can be used in the **M365 Dental Lab** environment to manage Windows laptops, apply security policies, enforce update settings, and deploy basic scripts.

Microsoft Intune is a cloud-based endpoint management tool used to manage company-owned and personal devices. In a real dental office, Intune would help make sure staff laptops are secure, updated, encrypted, and compliant before they access Microsoft 365 resources such as Outlook, OneDrive, SharePoint, and Teams.

For this lab, Intune is documented as a planned device management solution. Physical devices are not required to write the documentation, but testing Intune works best with at least one Windows 10/11 Pro, Enterprise, or Education device, or a Windows virtual machine.

---

## Lab Scenario

The fake company, **Dental Lab 732**, has several employees who use Windows laptops for daily work. These laptops may access sensitive business and patient-related information through Microsoft 365 services.

The goal of Intune in this lab is to:

* Enroll Windows laptops into Microsoft Intune
* Apply baseline security policies
* Manage Windows updates
* Require device compliance
* Deploy basic PowerShell scripts
* Prepare for future Conditional Access policies
* Document device management procedures for a small business environment

---

## Why Intune Matters

Without device management, an organization has limited control over company laptops. Users may delay updates, disable security settings, use weak passwords, or access company data from unmanaged devices.

With Intune, an administrator can centrally manage devices from the Microsoft Intune admin center. Intune can enforce compliance policies, push configuration profiles, manage Windows updates, deploy applications, and run scripts on managed Windows devices.

Microsoft states that Intune enrollment installs a Mobile Device Management certificate on the device, which allows Intune to enforce enrollment, compliance, and configuration policies.

---

## Licensing Requirements

To use Intune, users or devices must have the proper license. Microsoft Intune Plan 1 is the base Intune service, and Microsoft notes that Intune is included in several Microsoft 365 bundles.

For a small business lab, **Microsoft 365 Business Premium** is a realistic license because it includes Microsoft Intune Plan 1 and is designed for small and medium-sized businesses. Microsoft describes Business Premium as including Intune Plan 1 for enrolling, monitoring, and managing devices.

Recommended lab license:

* Microsoft 365 Business Premium trial or paid license
* Microsoft Entra ID P1 features for automatic MDM enrollment
* Intune administrator or Global Administrator role for setup

---

## Planned Intune Groups

The following groups should be created in Microsoft Entra ID for Intune assignments.

| Group Name                         | Purpose                                      |
| ---------------------------------- | -------------------------------------------- |
| `SG-Intune-Pilot-Users`            | Test users for first Intune policies         |
| `SG-Intune-Windows-Devices`        | All managed Windows laptops                  |
| `SG-Intune-Update-Ring-Pilot`      | Devices that receive updates first           |
| `SG-Intune-Update-Ring-Production` | Regular staff devices                        |
| `SG-Intune-Compliance-Windows`     | Devices assigned Windows compliance policies |

Using groups makes Intune easier to manage because policies can be assigned to a test group before being deployed to all users or devices.

Microsoft recommends starting with pilot groups and using a staged rollout approach before expanding policies to more users.

---

# Step-by-Step Guide: Set Up Intune for Windows Devices

## Step 1: Open the Intune Admin Center

1. Go to the Microsoft Intune admin center.
2. Sign in with an administrator account.
3. Confirm that the tenant has Intune licensing available.
4. Go to **Tenant administration**.
5. Select **Tenant status**.
6. Confirm that the tenant shows Intune licensing and MDM authority information.

Expected result:

The administrator can access the Intune admin center and view tenant information.

---

## Step 2: Create Pilot Groups

1. Go to **Microsoft Entra admin center**.

2. Select **Groups**.

3. Select **New group**.

4. Choose **Security** as the group type.

5. Create the following group:

   `SG-Intune-Pilot-Users`

6. Add one test user account to the group.

7. Repeat the process for the planned Intune groups listed earlier.

Expected result:

Security groups are created and ready for Intune policy assignments.

---

## Step 3: Enable Automatic Windows Enrollment

Automatic enrollment allows Windows devices to enroll into Intune when a user signs in with a work or school account.

1. Open the **Microsoft Intune admin center**.

2. Go to **Devices**.

3. Expand **Device onboarding**.

4. Select **Enrollment**.

5. Select the **Windows** tab.

6. Select **Automatic Enrollment**.

7. Set **MDM user scope** to one of the following:

   * **Some**: Recommended for lab testing. Select `SG-Intune-Pilot-Users`.
   * **All**: Use later when ready to enroll all users.

8. Leave **MAM user scope** as **None** for this Windows MDM lab.

9. Save the settings.

Microsoft’s Windows enrollment documentation states that when MDM user scope is set to **Some** or **All**, devices are joined to Microsoft Entra ID and managed by Intune. When set to **None**, devices are not managed by Intune.

Expected result:

Users in the pilot group can automatically enroll Windows devices into Intune.

---

## Step 4: Enroll a Windows Test Device

This step should be completed using a Windows 10/11 Pro, Enterprise, or Education device.

1. Sign in to the Windows device.
2. Open **Settings**.
3. Go to **Accounts**.
4. Select **Access work or school**.
5. Select **Connect**.
6. Sign in using the test Microsoft 365 user account.
7. Choose the option to allow the organization to manage the device.
8. Complete the sign-in process.
9. Restart the device if prompted.

To verify enrollment:

1. Go back to the Intune admin center.
2. Select **Devices**.
3. Select **Windows**.
4. Confirm the device appears in the list.
5. Open the device record and review:

   * Device name
   * Primary user
   * Compliance status
   * Last check-in time
   * Operating system version

Expected result:

The test Windows device appears in Intune and can receive policies.

---

## Step 5: Create a Windows Compliance Policy

A compliance policy defines what a device must look like to be considered safe.

Example requirements for Dental Lab 732:

* Require BitLocker encryption
* Require Microsoft Defender Antivirus
* Require firewall to be enabled
* Require a minimum Windows version
* Mark jailbroken or rooted devices as noncompliant where applicable
* Require a password or PIN

Steps:

1. Open the Intune admin center.

2. Go to **Devices**.

3. Select **Compliance**.

4. Select **Create policy**.

5. Platform: **Windows 10 and later**.

6. Name the policy:

   `Windows Compliance Policy - Dental Lab`

7. Configure basic security requirements.

8. Assign the policy to:

   `SG-Intune-Compliance-Windows`

9. Review and create the policy.

Expected result:

Windows devices assigned to this policy will be evaluated for compliance.

---

## Step 6: Create a Windows Configuration Profile

Configuration profiles apply settings to managed devices.

Example baseline settings:

* Require password or PIN
* Disable local password expiration exceptions
* Enable firewall
* Configure Microsoft Defender settings
* Configure OneDrive Known Folder Move later
* Configure Microsoft Edge security settings later
* Restrict unnecessary control panel or settings access if needed

Steps:

1. Open the Intune admin center.

2. Go to **Devices**.

3. Select **Configuration**.

4. Select **Create**.

5. Choose **New policy**.

6. Platform: **Windows 10 and later**.

7. Profile type: **Settings catalog**.

8. Name the profile:

   `Windows Baseline Configuration - Dental Lab`

9. Add the required settings.

10. Assign the profile to the pilot Windows device group.

11. Review and create the profile.

Expected result:

Assigned Windows devices receive the selected configuration settings.

---

# Step-by-Step Guide: Manage Windows Updates with Intune

## Why Use Update Rings?

Windows update rings control when devices receive Windows quality updates, feature updates, driver updates, and restart behavior.

For a small business, update rings are better than manually updating every laptop because they provide centralized control and reporting.

Microsoft’s Intune documentation states that update rings control how Windows updates are delivered and installed on managed devices.

---

## Recommended Update Ring Design

| Ring            | Devices              | Purpose                             |
| --------------- | -------------------- | ----------------------------------- |
| Pilot Ring      | 1–2 test devices     | Receive updates first               |
| Production Ring | Normal staff laptops | Receive updates after pilot testing |

---

## Step 1: Create a Pilot Update Ring

1. Open the Intune admin center.
2. Go to **Devices**.
3. Select **By platform**.
4. Select **Windows**.
5. Go to **Manage updates**.
6. Select **Windows updates**.
7. Select the **Update rings** tab.
8. Select **Create profile**.

Microsoft’s current Intune path for update rings is **Devices > By platform > Windows > Manage updates > Windows updates > Update rings > Create profile**.

Profile name:

`Update Ring - Pilot - Windows`

Suggested settings:

| Setting                      | Suggested Value                              |
| ---------------------------- | -------------------------------------------- |
| Microsoft product updates    | Allow                                        |
| Windows drivers              | Allow                                        |
| Quality update deferral      | 0–2 days                                     |
| Feature update deferral      | 7 days                                       |
| Automatic update behavior    | Auto install and restart at maintenance time |
| Active hours start           | 8:00 AM                                      |
| Active hours end             | 6:00 PM                                      |
| Restart checks               | Allow                                        |
| User restart notifications   | Allow                                        |
| Deadline for quality updates | 3 days                                       |
| Deadline for feature updates | 7 days                                       |
| Grace period                 | 2 days                                       |

Assign to:

`SG-Intune-Update-Ring-Pilot`

Expected result:

Pilot devices receive Windows updates before the rest of the company.

---

## Step 2: Create a Production Update Ring

Repeat the same process and create a second update ring.

Profile name:

`Update Ring - Production - Windows`

Suggested settings:

| Setting                      | Suggested Value                              |
| ---------------------------- | -------------------------------------------- |
| Microsoft product updates    | Allow                                        |
| Windows drivers              | Allow                                        |
| Quality update deferral      | 7 days                                       |
| Feature update deferral      | 14–30 days                                   |
| Automatic update behavior    | Auto install and restart at maintenance time |
| Active hours start           | 8:00 AM                                      |
| Active hours end             | 6:00 PM                                      |
| Restart checks               | Allow                                        |
| User restart notifications   | Allow                                        |
| Deadline for quality updates | 5 days                                       |
| Deadline for feature updates | 14 days                                      |
| Grace period                 | 2 days                                       |

Assign to:

`SG-Intune-Update-Ring-Production`

Expected result:

Production devices receive updates after the pilot group has had time to test them.

---

## Step 3: Monitor Update Deployment

1. Open the Intune admin center.
2. Go to **Devices**.
3. Select **Windows**.
4. Go to **Manage updates**.
5. Select **Windows updates**.
6. Open the update ring policy.
7. Review device and user check-in status.
8. Review assignment status and per-setting status.

Expected result:

The administrator can confirm whether update policies were successfully applied.

---

# Step-by-Step Guide: Deploy a PowerShell Script with Intune

## When to Use Scripts

Scripts should be used carefully. In Intune, built-in policies should usually be used before scripts.

Good script use cases:

* Create a folder
* Set a registry value
* Collect basic device information
* Restart a service
* Remove temporary files
* Apply a simple configuration not available in the settings catalog

Bad script use cases:

* Replacing update rings for normal Windows patching
* Making risky registry changes without testing
* Deleting user data
* Running scripts without a pilot group
* Running scripts without documentation

Microsoft notes that Intune PowerShell scripts are deployed from **Devices > Scripts and remediations > Platform scripts > Add > Windows 10 and later**.

---

## Example Script: Create IT Support Folder

This is a safe beginner script for lab testing.

```powershell
$FolderPath = "C:\DentalLab-IT"

if (!(Test-Path -Path $FolderPath)) {
    New-Item -ItemType Directory -Path $FolderPath
}

New-Item -ItemType File -Path "$FolderPath\Intune-Test.txt" -Force
Set-Content -Path "$FolderPath\Intune-Test.txt" -Value "This file was created by Microsoft Intune."
```

Purpose:

This script creates a folder named `C:\DentalLab-IT` and places a test file inside it. This proves that Intune can run a script on the device.

---

## Step 1: Save the Script

1. Open Notepad or Visual Studio Code.

2. Paste the script.

3. Save the file as:

   `Create-DentalLab-IT-Folder.ps1`

4. Keep the file under 200 KB.

Microsoft notes that Intune PowerShell script files must be less than 200 KB in ASCII format.

---

## Step 2: Upload the Script to Intune

1. Open the Intune admin center.

2. Go to **Devices**.

3. Select **Scripts and remediations**.

4. Select **Platform scripts**.

5. Select **Add**.

6. Choose **Windows 10 and later**.

7. Name the script:

   `Create Dental Lab IT Folder`

8. Add a description:

   `Creates a test IT support folder on managed Windows devices.`

9. Upload the `.ps1` file.

---

## Step 3: Configure Script Settings

Recommended lab settings:

| Setting                                         | Value |
| ----------------------------------------------- | ----- |
| Run this script using the logged-on credentials | No    |
| Enforce script signature check                  | No    |
| Run script in 64-bit PowerShell                 | Yes   |

Explanation:

* **Run as logged-on credentials: No** means the script runs in system context.
* **Signature check: No** is acceptable for a lab, but production environments should use signed scripts when possible.
* **64-bit PowerShell: Yes** is recommended for most modern Windows devices.

---

## Step 4: Assign the Script

1. Go to **Assignments**.

2. Assign the script to:

   `SG-Intune-Pilot-Users`

   or

   `SG-Intune-Windows-Devices`

3. For testing, always start with the pilot group.

4. Review and create the script policy.

Expected result:

The assigned device receives the script during its next Intune check-in.

---

## Step 5: Verify the Script Ran

On the Windows test device:

1. Open File Explorer.

2. Go to:

   `C:\DentalLab-IT`

3. Confirm the file exists:

   `Intune-Test.txt`

4. Open the file and confirm it says:

   `This file was created by Microsoft Intune.`

In Intune:

1. Open the Intune admin center.
2. Go to **Devices**.
3. Select **Scripts and remediations**.
4. Open the script.
5. Review device status.

Expected result:

The script status shows success, and the folder/file exists on the Windows device.

---

# Optional: Remediations

Remediations are more advanced than one-time platform scripts. They use two scripts:

1. A detection script
2. A remediation script

The detection script checks whether a problem exists. The remediation script fixes the issue if needed.

Microsoft states that remediation script packages are retrieved by the Intune Management Extension and can run on a schedule, with script retrieval occurring after restart, after sign-in, and once every eight hours.

Example use case:

* Detection script checks whether `C:\DentalLab-IT` exists.
* Remediation script creates the folder if it is missing.

This is useful for ongoing support tasks, but for this lab, standard platform scripts are enough for the first Intune documentation phase.

---

# Troubleshooting

## Device Does Not Appear in Intune

Check the following:

* User has an Intune license
* Device is Windows Pro, Enterprise, or Education
* User is included in the MDM user scope
* Device has internet access
* User signed in with a work or school account
* Device was not already joined incorrectly
* Time and date are correct on the device

---

## Policy Does Not Apply

Check the following:

* Device is in the correct group
* User is in the correct group
* Policy assignment is correct
* Device has checked in recently
* Device was restarted
* There are no conflicting policies

---

## Script Does Not Run

Check the following:

* Script was assigned to the correct group
* Device is online
* Script file is valid PowerShell
* Script does not require user input
* Script is not larger than the allowed size
* The system clock is correct
* Script is configured to run in the correct context

Microsoft notes that scripts may fail if the device system clock is out of date by months or years.

---

# Screenshots to Add Later

The following screenshots should be added when this lab is tested:

1. Intune tenant status
2. Automatic enrollment settings
3. Entra ID security groups
4. Enrolled Windows device
5. Windows compliance policy
6. Windows configuration profile
7. Pilot update ring
8. Production update ring
9. PowerShell script upload page
10. Script success status
11. `C:\DentalLab-IT` folder created on the test device

---

# Lab Status

Current status:

* Intune documentation created
* Windows enrollment steps documented
* Update ring steps documented
* PowerShell script deployment steps documented
* Physical device testing not completed yet

Future improvements:

* Enroll a Windows test laptop or virtual machine
* Configure Windows Autopilot
* Deploy Microsoft 365 Apps with Intune
* Configure BitLocker policy
* Configure Defender for Endpoint integration
* Create Conditional Access requiring compliant devices
* Add screenshots to this document
* Create a separate document for Autopilot deployment

---

# Summary

Microsoft Intune provides centralized device management for the Dental Lab 732 Microsoft 365 environment. It can be used to enroll Windows laptops, apply compliance policies, push configuration settings, manage Windows updates, and deploy scripts.

For this lab, the most important Intune tasks are:

1. Enable automatic Windows enrollment
2. Enroll a test Windows device
3. Create pilot groups
4. Apply compliance policies
5. Create Windows update rings
6. Test a simple PowerShell script
7. Document screenshots and results

This creates a realistic small-business endpoint management setup that can be shown in a GitHub portfolio.
