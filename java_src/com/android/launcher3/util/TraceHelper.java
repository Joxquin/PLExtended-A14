package com.android.launcher3.util;

import android.os.Trace;
import com.android.launcher3.Utilities;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public class TraceHelper {
    public static final int FLAG_ALLOW_BINDER_TRACKING = 1;
    public static final int FLAG_IGNORE_BINDERS = 2;
    public static TraceHelper INSTANCE = new TraceHelper();

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$allowIpcs$2() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$beginAsyncSection$0() {
    }

    public SafeCloseable allowIpcs(final String str) {
        if (!Utilities.ATLEAST_Q) {
            return new G();
        }
        final int a4 = o3.d.f11877d.a();
        Trace.beginAsyncSection(str, a4);
        return new SafeCloseable() { // from class: com.android.launcher3.util.H
            @Override // java.lang.AutoCloseable
            public final void close() {
                Trace.endAsyncSection(str, a4);
            }
        };
    }

    public SafeCloseable beginAsyncSection(final String str) {
        if (Utilities.ATLEAST_Q) {
            final int a4 = o3.d.f11877d.a();
            Trace.beginAsyncSection(str, a4);
            return new SafeCloseable() { // from class: com.android.launcher3.util.F
                @Override // java.lang.AutoCloseable
                public final void close() {
                    Trace.endAsyncSection(str, a4);
                }
            };
        }
        return new E();
    }

    public void beginSection(String str) {
        Trace.beginSection(str);
    }

    public void endSection() {
        Trace.endSection();
    }

    public static Object allowIpcs(String str, Supplier supplier) {
        SafeCloseable allowIpcs = INSTANCE.allowIpcs(str);
        try {
            Object obj = supplier.get();
            if (allowIpcs != null) {
                allowIpcs.close();
            }
            return obj;
        } catch (Throwable th) {
            if (allowIpcs != null) {
                try {
                    allowIpcs.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
