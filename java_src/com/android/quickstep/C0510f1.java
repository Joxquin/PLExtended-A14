package com.android.quickstep;

import android.content.Context;
import com.android.launcher3.util.MainThreadInitializedObject;
/* renamed from: com.android.quickstep.f1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0510f1 implements MainThreadInitializedObject.ObjectProvider {
    @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
    public final Object get(Context context) {
        return new SystemUiProxy(context);
    }
}
