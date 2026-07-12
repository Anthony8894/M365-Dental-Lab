# Microsoft Entra ID Device Join

## Purpose

The objective as of writing this doc, join `DL-FRONTDESK-01` to the Microsoft 365 Dental Lab tenant. However, any VM/computer can use this doc.

For more context, I will Entra ID join devices for each department. Essentially, if I have enough space, there should be 1 computer for each department.

If everything goes according to plan. This should allow front-office employees to sign in using their own dental lab accounts.

## What Is Microsoft Entra ID Join?

Microsoft Entra ID Join connects a Windows device directly to an organization’s Microsoft 365 environment.

After the device is joined, employees can sign in to Windows using their work account instead of a local account. The device also appears in the Microsoft Entra admin center, where administrators can review and manage it.

## Why Entra ID Join Is Useful

Entra ID Join helps organizations manage employee devices and accounts from one central location.

Benefits include:

- Employees can sign in with their Microsoft 365 account
- Administrators can view company devices in Entra ID
- Users can access Microsoft 365 apps with fewer sign-ins
- MFA and Conditional Access can help protect accounts
- Devices can be enrolled into Microsoft Intune
- Administrators can apply security settings and company policies
- Access can be removed when an employee leaves the organization


## Device

| Setting | Value |
|---|---|
| Device Name | DL-FRONTDESK-01 |
| Role | Front Desk Workstation |
| Operating System | Windows 11 |
| Platform | VMware Workstation Pro |

## Planned Steps

1. Open Windows Settings.
2. Go to **Accounts > Access work or school**.
3. Select **Connect**.
4. Choose **Join this device to Microsoft Entra ID**.
5. Sign in with a dental lab user.
6. Restart the VM.
7. Confirm the device appears in the Entra admin center.

## Current Status

Not started.

## screenshots

Screenshots will be added after the device is joined.

## Expected Result

`DL-FRONTDESK-01` will appear as a Microsoft Entra joined device.