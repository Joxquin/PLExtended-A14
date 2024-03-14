package com.android.launcher3.util;

import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.android.launcher3.model.l1;
/* loaded from: classes.dex */
public abstract class BgObjectWithLooper {
    public static ContentObserver newContentObserver(Handler handler, final l1 l1Var) {
        return new ContentObserver(handler) { // from class: com.android.launcher3.util.BgObjectWithLooper.1
            @Override // android.database.ContentObserver
            public final void onChange(boolean z4, Uri uri) {
                l1Var.accept(uri);
            }
        };
    }

    public abstract void onInitialized(Looper looper);
}
