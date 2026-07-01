# shared mailboxes

Shared mailboxes allows multiple users to access the same mailbox without needing to share a password. Shared mailboxes are used for general business addresses such as front desk, billing, support, etc. In this lab, the shared mailboxes are used to simulate how a dental office manages shared communication. 

## shared mailboxes enabled

```
Front-desk@dentallab732.onmicrosoft.com
```
used for front desk employees, customers can email this shared mailbox and any front desk employees would have access to it. 

```
billing@dentallab732.onmicrosoft.com
```
this mailbox can be used for invoices, payments, or billing related questions. Any purchases will be forwarded to this email address.

```
Support@dentallab732.onmicrosoft.com
```
used for IT or internal support requests. A new monitor is needed at the front desk office, send a request to this mailbox. 

## shared mailbox vs distribution list

A shared mailbox is different from a distribution list.
A distribution list sends a copy of an email to multiple users, but it does not create a shared inbox. Users receive the email in their own mailbox.

A shared mailbox creates one central mailbox that multiple users can open, monitor, and reply from.

* Use a distribution list when users only need to receive messages.
* Use a shared mailbox when users need to manage one shared inbox and reply from the same email address.

You should use a shared mailbox when multiple users need access to the same inbox. Users need to reply from a shared email address. A department or role needs a general email address. The mailbox should not belong to one specific person. Messages need to stay centralized for visibility and tracking


## steps to enable a shared mailbox 

You can enable a shared mailbox in admin center or in exchange. 

### admin center steps

![1]

1. open up admin center
2. click on "teams & groups" then "shared mailboxes"
3. a new page will open.
   1. click on "add a shared mailbox" then start filling out details.
      1. keep in mind that you can not use a repeating email address from the other distribution lists or security groups.


### Exchange center steps

![2]

1. Open up exchange admin center
2. on the left hand side, open "mailboxes" under recipients. 
3. click "add a shared mailbox"
   1. note that all of the pre-existing mailboxes are listed below. Meaning you can turn a user's mailbox into a shared mailbox. 


## permissions

There are additional options/settings you can apply to the shared mailboxes. 

* full access - Allows the user to open and read the shared mailbox
* Send as - Allows the user to send email as the shared mailbox address
* Send as behalf - Allows the user to send on behalf of the shared mailbox

