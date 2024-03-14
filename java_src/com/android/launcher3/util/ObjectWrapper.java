package com.android.launcher3.util;

import android.os.Binder;
import android.os.IBinder;
/* loaded from: classes.dex */
public final class ObjectWrapper extends Binder {
    private Object mObject;

    public ObjectWrapper(Object obj) {
        this.mObject = obj;
    }

    public static Object unwrap(IBinder iBinder) {
        if (iBinder instanceof ObjectWrapper) {
            return ((ObjectWrapper) iBinder).mObject;
        }
        return null;
    }
}
