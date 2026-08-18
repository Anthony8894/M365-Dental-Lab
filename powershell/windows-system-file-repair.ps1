sfc /scannow

Scans protected Windows system files and attempts to repair corrupted or missing files.

DISM /Online /Cleanup-Image /CheckHealth

Quickly checks whether the Windows image has been flagged as corrupted.

DISM /Online /Cleanup-Image /ScanHealth

Performs a more detailed scan of the Windows image for corruption.

DISM /Online /Cleanup-Image /RestoreHealth

Scans the Windows image and attempts to repair any corruption it finds.

DISM /Online /Cleanup-Image /RestoreHealth
sfc /scannow

Run DISM first to repair the Windows image, then run SFC to repair the system files that depend on it.