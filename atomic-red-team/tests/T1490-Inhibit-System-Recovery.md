Simulate Ransomware Behaviour (T1490)
T1490 – Inhibit System Recovery
Ransomware deletes Shadow Copies to prevent recovery.
Run Atomic Test for T1490:
Invoke-AtomicTest T1490
This executes:
vssadmin delete shadows /all /quiet
