# 07 - User Offboarding

## Purpose

This document explains how to offboard a Microsoft 365 user using the tools currently available in this lab environment.

The goal of user offboarding is to remove access from a former employee, preserve important company data, delegate access when needed, and recover the Microsoft 365 license for future use.

This lab currently focuses on Microsoft 365 Admin Center, Exchange Admin Center, Entra ID, users, groups, distribution lists, shared mailboxes, and basic mailbox/OneDrive handling.

Some advanced items, such as Intune device retirement, Conditional Access policies, and automated offboarding workflows, are not configured yet and will be documented in future updates.

---

## Current Lab Tools Available

The following tools and features are currently available in this lab:

| Tool / Feature                      | Status               |
| ----------------------------------- | -------------------- |
| Microsoft 365 Admin Center          | Available            |
| Microsoft Entra ID                  | Available            |
| Exchange Admin Center               | Available            |
| Active Users                        | Available            |
| Distribution Lists                  | Available            |
| Security Groups                     | Available            |
| Microsoft 365 Groups / Teams Groups | Available            |
| Shared Mailboxes                    | Available            |
| Mailbox Delegation                  | Available            |
| License Management                  | Available            |
| OneDrive Access Review              | Basic / Available    |
| Intune                              | Not configured yet   |
| Conditional Access                  | Not configured yet   |
| Device wipe / retire                | Future documentation |
| Automated offboarding               | Future documentation |

---

## Example Scenario

A user is leaving the company and needs to be offboarded from Microsoft 365.

Example user:

* **Name:** John Smith
* **Email:** [john.smith@dentallab732.onmicrosoft.com](mailto:john.smith@dentallab732.onmicrosoft.com)
* **Department:** Front Desk
* **Manager:** Office Manager
* **Replacement User:** Jane Doe

---

## Offboarding Goals

The offboarding process should complete the following:

* Block the user from signing in
* Reset the user’s password
* Revoke active sessions
* Preserve or delegate mailbox access
* Convert the mailbox to a shared mailbox if needed
* Forward mail or set an automatic reply if requested
* Review OneDrive data
* Remove the user from groups and distribution lists
* Remove the Microsoft 365 license
* Document all completed actions

---

## Step 1: Confirm the Offboarding Request

Before making changes, confirm the user and offboarding details.

| Item                            | Notes                                      |
| ------------------------------- | ------------------------------------------ |
| User being offboarded           | Confirm full name and email                |
| Last working day                | Confirm when access should be removed      |
| Mailbox needed after departure? | Yes / No                                   |
| OneDrive files needed?          | Yes / No                                   |
| Manager or replacement user     | Person who should receive access           |
| Groups to remove user from      | Distribution lists, security groups, Teams |
| License removal approved?       | Yes / No                                   |

---

## Step 2: Block User Sign-In

Go to:

**Microsoft 365 Admin Center > Users > Active users**

Select the user and block sign-in.

Recommended action:

```text
Block sign-in: Yes
```

This prevents the former employee from signing into Microsoft 365 services.

---

## Step 3: Reset the User Password

After blocking sign-in, reset the user’s password.

Recommended action:

```text
Reset password
Do not send the password to the former employee
```

This helps prevent the user from accessing the account using a known password.

---

## Step 4: Revoke Active Sessions

Blocking sign-in does not always immediately remove existing sessions from signed-in devices.

Go to:

**Microsoft Entra Admin Center > Users > Select User > Revoke sessions**

Recommended action:

```text
Revoke active sessions
```

This forces Microsoft 365 apps to require a new sign-in.

---

## Step 5: Review the Mailbox

Decide what should happen to the former employee’s mailbox.

Common options:

| Option                    | When to Use                                                     |
| ------------------------- | --------------------------------------------------------------- |
| Convert to shared mailbox | The company needs to keep and access the mailbox                |
| Forward email             | New messages should go to another employee                      |
| Add automatic reply       | Senders need to know the user is no longer with the company     |
| Delete later              | Only after the company confirms the mailbox is no longer needed |

---

## Step 6: Convert Mailbox to Shared Mailbox

If the company needs to keep the mailbox, convert it to a shared mailbox.

Go to:

**Microsoft 365 Admin Center > Users > Active users > Select User > Mail > Convert to shared mailbox**

Example:

```text
john.smith@dentallab732.onmicrosoft.com
```

Converted to:

```text
Shared mailbox
```

Important:

Do not remove the license until the mailbox has been converted and verified.

---

## Step 7: Delegate Mailbox Access

After converting the mailbox to a shared mailbox, assign access to the manager or replacement user.

Go to:

**Microsoft 365 Admin Center > Teams & groups > Shared mailboxes**

Select the shared mailbox and add members.

Example:

| Shared Mailbox                                                                            | Delegate                                                                              |
| ----------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| [john.smith@dentallab732.onmicrosoft.com](mailto:john.smith@dentallab732.onmicrosoft.com) | [jane.doe@dentallab732.onmicrosoft.com](mailto:jane.doe@dentallab732.onmicrosoft.com) |

Recommended permissions:

```text
Read and manage
```

Optional permissions:

```text
Send as
Send on behalf
```

Only assign send permissions if the business needs the replacement user to send email from that mailbox.

---

## Step 8: Configure Mail Forwarding or Automatic Reply

If requested, configure forwarding or an automatic reply.

Example forwarding:

```text
Forward mail from:
john.smith@dentallab732.onmicrosoft.com

Forward mail to:
frontdesk@dentallab732.onmicrosoft.com
```

Example automatic reply:

```text
Thank you for your message. John Smith is no longer with the company. Please contact frontdesk@dentallab732.onmicrosoft.com for assistance.
```

This helps make sure new messages are not missed after the user leaves.

---

## Step 9: Review OneDrive Data

If the user saved company files in OneDrive, review the files before deleting the user.

Recommended actions:

* Check if the user has important files in OneDrive
* Grant access to the manager if needed
* Move important files to a shared company location
* Confirm the replacement user can access the files

Example destination:

```text
SharePoint > Company Documents > Former Employees > John Smith
```

At this stage of the lab, OneDrive review is documented at a basic level. More advanced OneDrive retention and SharePoint migration steps will be documented later.

---

## Step 10: Remove User From Groups

Remove the user from groups they no longer need access to.

Check the following areas:

* Distribution lists
* Security groups
* Microsoft 365 groups
* Teams groups
* Shared mailbox permissions

Example:

| Group / Mailbox        | Action                          |
| ---------------------- | ------------------------------- |
| FrontDesk-DL           | Remove user                     |
| Billing-DL             | Remove user                     |
| Dental Lab Team        | Remove user                     |
| Support Shared Mailbox | Remove user if no longer needed |

This helps prevent the former employee account from keeping unnecessary access.

---

## Step 11: Remove Microsoft 365 License

After access is blocked and mailbox/OneDrive data has been handled, remove the Microsoft 365 license.

Go to:

**Microsoft 365 Admin Center > Users > Active users > Select User > Licenses and apps**

Recommended action:

```text
Remove assigned license
```

This allows the license to be reused for another employee.

Important:

Only remove the license after confirming the mailbox has been converted or the company no longer needs the mailbox.

---

## Step 12: Device Handling

This lab does not currently have Intune configured, so device wipe, retire, or remote reset actions are not included yet.

For now, device handling should be documented manually.

| Item                  | Status             |
| --------------------- | ------------------ |
| Laptop returned       | Pending / Complete |
| Charger returned      | Pending / Complete |
| Dock returned         | Pending / Complete |
| Local files checked   | Pending / Complete |
| Device reset manually | Pending / Complete |

Future documentation will include:

* Intune device retirement
* Intune device wipe
* Removing devices from Entra ID
* Autopilot reset
* Device compliance checks

---

## Step 13: Final Verification

Before closing the offboarding task, verify the following:

| Task                                               | Complete |
| -------------------------------------------------- | -------- |
| User sign-in blocked                               | ☐        |
| Password reset                                     | ☐        |
| Active sessions revoked                            | ☐        |
| Mailbox reviewed                                   | ☐        |
| Mailbox converted to shared mailbox if needed      | ☐        |
| Mailbox permissions assigned                       | ☐        |
| Forwarding or automatic reply configured if needed | ☐        |
| OneDrive reviewed                                  | ☐        |
| Important files transferred                        | ☐        |
| User removed from groups                           | ☐        |
| License removed                                    | ☐        |
| Device return documented                           | ☐        |
| Notes added to documentation                       | ☐        |

---

## What Will Be Documented Later

The following items are not configured in the lab yet but will be documented in future updates:

| Future Topic          | Description                                                    |
| --------------------- | -------------------------------------------------------------- |
| Intune Offboarding    | Retiring, wiping, or resetting managed devices                 |
| Conditional Access    | Blocking access based on location, device, or risk             |
| Defender for Endpoint | Reviewing security alerts before offboarding                   |
| Automated Offboarding | Using PowerShell or scripts to automate repeatable steps       |
| Retention Policies    | Preserving mailbox and OneDrive data using compliance policies |
| Litigation Hold       | Preserving mailbox data for legal or compliance reasons        |
| Autopilot Reset       | Resetting company devices for reassignment                     |

---

## Lab Summary

In this lab, I documented a basic Microsoft 365 user offboarding process using the tools currently available in my environment.

The process included blocking sign-in, resetting the password, revoking sessions, reviewing mailbox data, converting a mailbox to a shared mailbox, assigning mailbox access, reviewing OneDrive files, removing the user from groups, and reclaiming the Microsoft 365 license.

This lab helped me understand how user accounts, Exchange mailboxes, groups, licenses, and OneDrive data are connected during the employee offboarding process.

Advanced device management and security automation will be documented later after Intune and additional Microsoft 365 security features are configured.
