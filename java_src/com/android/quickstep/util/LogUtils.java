package com.android.quickstep.util;

import android.util.Pair;
import com.android.internal.logging.InstanceId;
import com.android.internal.logging.InstanceIdSequence;
/* loaded from: classes.dex */
public final class LogUtils {
    public static final LogUtils INSTANCE = new LogUtils();

    private LogUtils() {
    }

    public static final Pair getShellShareableInstanceId() {
        InstanceId newInstanceId = new InstanceIdSequence(1048576).newInstanceId();
        return new Pair(newInstanceId, new com.android.launcher3.logging.InstanceId(newInstanceId.getId()));
    }

    public static final String splitFailureMessage(String caller, String reason) {
        kotlin.jvm.internal.h.e(caller, "caller");
        kotlin.jvm.internal.h.e(reason, "reason");
        return "(" + caller + ") Splitscreen aborted: " + reason;
    }
}
