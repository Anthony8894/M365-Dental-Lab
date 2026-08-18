# Scenario

A user logs into their computer, but once they are logged in, the desktop does not load correctly.

The screen may be completely black and there is no taskbar, desktop icons, or apps showing.

However, the user is still able to open **Task Manager** by pressing:

```text
Ctrl + Shift + Esc
```

Most of the time, if this happens, one thing we can try is restarting **explorer.exe**.

## What is explorer.exe?

**explorer.exe** is basically what controls a lot of the Windows desktop that the user sees.

This includes things like:

* Taskbar
* Start Menu
* Desktop icons
* File Explorer
* Parts of the Windows desktop

If `explorer.exe` crashes or does not start correctly, Windows may still be running, but the desktop may look like it is completely broken.

## Solution

### Restart explorer.exe

1. Press:

```text
Ctrl + Shift + Esc
```

2. This should open **Task Manager**.

3. Look for **Windows Explorer** under the Processes tab.

4. Right-click **Windows Explorer**.

5. Click **Restart**.

Once it restarts, the taskbar, desktop icons, and background should come back.

## If Windows Explorer is not showing

Sometimes Windows Explorer may not show up inside Task Manager.

If that happens:

1. Open **Task Manager**.

2. Click **Run new task**.

3. Type:

```text
explorer.exe
```

4. Click **OK**.

This should manually start Windows Explorer again.

## Expected Result

If explorer.exe was the issue, the user should now be able to see the normal Windows desktop again.

This includes:

* Taskbar
* Desktop icons
* Start Menu
* Background
* Normal access to apps

## If That Does Not Work

If restarting `explorer.exe` does not fix the issue, we can try a few other things.

* Restart the computer
* Check for Windows updates
* Check if anything was recently installed or updated
* Run System File Checker

```powershell
sfc /scannow
```

This command will check Windows for corrupted system files and attempt to repair them.

## Conclusion

If a user logs into Windows and only sees a black screen with no taskbar or desktop icons, it does not always mean the whole computer is frozen.

If Task Manager still works, restarting **explorer.exe** is one of the first things I would try before moving on to more advanced troubleshooting.
