package com.android.launcher3.util;

import android.content.Context;
import com.android.launcher3.util.MainThreadInitializedObject;
/* renamed from: com.android.launcher3.util.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0471d implements MainThreadInitializedObject.ObjectProvider {
    @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
    public final Object get(Context context) {
        return new DisplayController(context);
    }
}
