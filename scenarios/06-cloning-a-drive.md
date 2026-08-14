# Cloning a Drive to a Larger SSD

## Overview

A user needed additional storage space on their computer. Instead of reinstalling Windows and transferring everything manually, the existing drive was cloned to a larger SSD.

Rescuezilla was used to copy the operating system, applications, settings, and files from the original drive to the replacement SSD.

## links or references

- Rescuezilla: https://rescuezilla.com/
- balenaetcher: https://etcher.balena.io/


## Tools Used

- Rescuezilla
- BalenaEtcher
- USB flash drive
- Replacement SSD

## Steps

### 1. Create the Rescuezilla USB

1. Download the Rescuezilla ISO.
2. Open BalenaEtcher.
3. Select the Rescuezilla ISO.
4. Select the USB flash drive.
5. Flash Rescuezilla onto the USB drive.

**flashing the iso will erase all data**

### 2. Connect the Drives

1. Shut down the computer.
2. Connect the new SSD to the computer.
3. Insert the Rescuezilla USB drive.
4. Start the computer and open the BIOS or boot menu.
5. Change the boot option to the USB drive.

### 3. Clone the Drive

1. Boot into Rescuezilla.
2. Select the option to clone a drive.
3. Select the original SSD as the source drive.
4. Select the new SSD as the destination drive.
5. Confirm that the correct drives were selected.
6. Start the cloning process.
7. Wait for Rescuezilla to finish cloning the drive.

> Selecting the wrong destination drive could erase important data. Always check the drive model and storage capacity before starting.

### 4. Install and Test the New SSD

1. Shut down the computer after the cloning process is complete.
2. Disconnect the original SSD.
3. Leave the new SSD connected as the primary drive.
4. Start the computer normally.
5. Confirm that Windows boots successfully.
6. Verify that the user's files and applications are available.

### 5. Use the Remaining Storage

After starting Windows, the computer detected the larger SSD. However, some of the additional storage appeared as unallocated space.

Command-line tools were used to extend the Windows partition into the unallocated space. After completing this step, Windows displayed the full usable capacity of the new SSD.

![1](../screenshots/cloningadrive/carbon(2).png)

Above are the commands used to free up the allocated disk space via cmd/powershell

## Verification

The following items were tested:

- Windows booted from the new SSD.
- The user could sign in normally.
- Existing files were available.
- Applications were still installed.
- The Windows partition displayed the increased storage capacity.
- The original drive remained unchanged as a temporary backup.

## Result

The original drive was successfully cloned to the larger SSD. Windows booted normally, the existing files and applications remained available, and the Windows partition was extended to use the additional storage.

## Screenshots

Screenshots were not captured during the original cloning process. The steps and commands used have been documented above.

## Lessons Learned

- Rescuezilla can clone an existing Windows installation to a larger SSD.
- The source and destination drives must be checked carefully.
- Cloning to a larger SSD may leave some space unallocated.
- The Windows partition may need to be extended after cloning.
- The original drive should not be erased until the new drive has been tested.