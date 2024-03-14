package com.android.launcher3;

import android.app.backup.BackupAgent;
import android.app.backup.BackupDataInput;
import android.app.backup.BackupDataOutput;
import android.os.ParcelFileDescriptor;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.DeviceGridState;
import java.io.File;
import kotlin.Pair;
/* loaded from: classes.dex */
public class LauncherBackupAgent extends BackupAgent {
    @Override // android.app.backup.BackupAgent
    public final void onBackup(ParcelFileDescriptor parcelFileDescriptor, BackupDataOutput backupDataOutput, ParcelFileDescriptor parcelFileDescriptor2) {
    }

    @Override // android.app.backup.BackupAgent
    public final void onCreate() {
        super.onCreate();
        FileLog.setDir(getFilesDir());
    }

    @Override // android.app.backup.BackupAgent
    public final void onRestore(BackupDataInput backupDataInput, int i4, ParcelFileDescriptor parcelFileDescriptor) {
    }

    @Override // android.app.backup.BackupAgent
    public final void onRestoreFile(ParcelFileDescriptor parcelFileDescriptor, long j4, File file, int i4, long j5, long j6) {
        if (file.delete()) {
            FileLog.d("LauncherBackupAgent", "onRestoreFile: Removed obsolete file " + file);
        }
        super.onRestoreFile(parcelFileDescriptor, j4, file, i4, j5, j6);
    }

    @Override // android.app.backup.BackupAgent
    public final void onRestoreFinished() {
        FileLog.d("LauncherBackupAgent", "onRestoreFinished: set pending for RestoreDbTask");
        FileLog.d("RestoreDbTask", "Restore data received through full backup");
        LauncherPrefs.Companion companion = LauncherPrefs.Companion;
        LauncherPrefs launcherPrefs = LauncherPrefs.Companion.get(this);
        ConstantItem constantItem = LauncherPrefs.RESTORE_DEVICE;
        Integer valueOf = Integer.valueOf(new DeviceGridState(this).getDeviceType());
        constantItem.getClass();
        launcherPrefs.putSync(new Pair(constantItem, valueOf));
    }
}
