package com.android.launcher3;

import android.content.Context;
import com.android.launcher3.util.MainThreadInitializedObject;
/* renamed from: com.android.launcher3.b0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0330b0 implements MainThreadInitializedObject.ObjectProvider {
    @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
    public final Object get(Context context) {
        return new LauncherAppState(context);
    }
}
