# Entra ID or Identity

## Purpose

In Entra ID, you can control or dictate what a user has access to. Additonally, you can also enforce or enable MFA for all users. Entra ID is a complete new world and will take some time to fully document, meaning this document will update from time to time.

This document explains how Multi-Factor Authentication MFA was configured in the Microsoft 365 Dental Lab tenant.

MFA adds an extra layer of security by requiring users to verify their identity with something besides only a password. This helps protect user accounts, administrator accounts, email, OneDrive, SharePoint, and other Microsoft 365 services.

## future steps

This lab currently uses Security Defaults for basic MFA protection.
Conditional Access / Conditional MFA is not configured yet.
Conditional Access may be added later to create more specific MFA rules, such as requiring MFA for admins, external sign-ins, risky sign-ins, or specific cloud apps.

In addition to this: the admin account is the only account with MFA, realistically everybody will be required to setup MFA. 




## users

* any of the users you create in m365 admin portal, users will automatically appear in Entra ID. 
* In Entra ID, you can also give users roles like **global admin**. 


## groups

* pretty much the same as the groups inside admin center.
* You can create and delete groups and you can add users into the groups.
* Something I noticed is **assigned vs dynamic**, this setting was not in the m365 admin portal.
* **Assigned groups** = groups that you manually add users into. 
* **Dynamic groups** = groups that automatically add users into. 
* **NOTE** devices that are on entra can also be added into groups if they are in the dynamic groups. This makes it a little more automated.


## device is Entra ID joined

* Entra ID registered - means that your computer is your own but you can still access company resources.
* Entra ID joined - if you log into your company resources if you open the computer with your company details. Out of scope but will soon be established, you can also enroll the device in Microsoft intune. 

## Applications

* A majority of the applications listed will be microsoft.
  * However, you can create or link 3rd party applications like dropbox, adobe, etc. 


## MFA

* in this lab, I want all users to have some sort of authentication enabled. 
* Just like many other sections in Entra ID, I think I may need to split Authentication in a seperate document.


## conditional access

* Zero Trust policy engine
  

## next steps 
* 07/05/2026 - setup VM's and connect to lab/entra ID