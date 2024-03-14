package com.android.launcher3.util;

import android.content.Context;
import com.android.launcher3.util.MainThreadInitializedObject;
/* loaded from: classes.dex */
public final /* synthetic */ class A implements MainThreadInitializedObject.ObjectProvider {
    @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
    public final Object get(Context context) {
        return ScreenOnTracker.c(context);
    }
}
