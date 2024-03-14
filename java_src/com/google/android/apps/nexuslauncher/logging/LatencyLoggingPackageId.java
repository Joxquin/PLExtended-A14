package com.google.android.apps.nexuslauncher.logging;
/* loaded from: classes.dex */
public enum LatencyLoggingPackageId {
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(0),
    AGA(1),
    AIAI(2),
    LAUNCHER(3),
    IME(4),
    APPSEARCH(5),
    GMS(6),
    SYS_UI(7),
    BLOBSTORE(8);
    
    private final int mId;

    LatencyLoggingPackageId(int i4) {
        this.mId = i4;
    }

    public final int a() {
        return this.mId;
    }
}
