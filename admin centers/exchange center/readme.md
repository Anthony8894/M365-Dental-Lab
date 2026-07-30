# Exchange Admin Center

## Overview

The Exchange Admin Center is used to manage email services in Microsoft 365.

For the M365 Dental Lab, Exchange can be used to manage user mailboxes, shared mailboxes, email groups, permissions, and mail delivery.

# What Can Be Managed

## Mailboxes

Administrators can:

* View user mailboxes
* Create and manage shared mailboxes
* Manage room and equipment mailboxes
* Configure mailbox settings
* View mailbox storage usage
* Convert a user mailbox into a shared mailbox

## Mailbox Permissions

Administrators can assign:

* Read and Manage: Allows a user to open and manage another mailbox.
* Send As: Allows a user to send email directly as the mailbox.
* Send on Behalf: Shows that the user sent the message on behalf of the mailbox.

## Groups

Exchange can be used to manage:

* Distribution groups
* Microsoft 365 groups
* Mail-enabled security groups
* Dynamic distribution groups

## Mail Flow

Administrators can:

* Trace email messages
* Check whether an email was delivered
* Create mail flow rules
* Manage accepted domains
* Configure email connectors

## Reports

Exchange provides reports for:

* Mail flow
* Mailbox usage
* Email delivery
* Migration activity

## Examples from this lab

Exchange Admin Center tasks in this lab may include:

* Creating a frontdesk@ shared mailbox
* Giving Front Office employees access to the mailbox
* Assigning Send As permission for the Billing mailbox
* Troubleshooting a user who cannot receive email
* Checking whether a message was delivered
* Creating a distribution group for all employees
* Converting an offboarded employee’s mailbox into a shared mailbox

## Documentation vs. Scenarios

This folder should explain how Exchange features work and how they are configured.

Specific support problems should be documented in the scenarios folder.

For example:

admin-centers/exchange/
└── shared-mailboxes.md

This document explains how shared mailboxes work.

scenarios/
└── user-cannot-access-shared-mailbox.md

This document shows how a specific shared mailbox problem was investigated and resolved.

## Planned Documentation

Future Exchange documentation may include:

* Shared mailbox management
* Mailbox permissions
* Distribution groups
* Message tracing
* Mail flow rules
* Mailbox storage troubleshooting
* User mailbox conversion
* Exchange Online PowerShell