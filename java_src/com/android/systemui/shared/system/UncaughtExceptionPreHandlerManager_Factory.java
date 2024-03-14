package com.android.systemui.shared.system;
/* loaded from: classes.dex */
public final class UncaughtExceptionPreHandlerManager_Factory implements d3.a {

    /* loaded from: classes.dex */
    final class InstanceHolder {
        private static final UncaughtExceptionPreHandlerManager_Factory INSTANCE = new UncaughtExceptionPreHandlerManager_Factory();

        private InstanceHolder() {
        }
    }

    public static UncaughtExceptionPreHandlerManager_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static UncaughtExceptionPreHandlerManager newInstance() {
        return new UncaughtExceptionPreHandlerManager();
    }

    @Override // d3.a
    public UncaughtExceptionPreHandlerManager get() {
        return newInstance();
    }
}
