package com.android.quickstep;

import android.content.Context;
import com.android.launcher3.util.MainThreadInitializedObject;
/* loaded from: classes.dex */
public final /* synthetic */ class X0 implements MainThreadInitializedObject.ObjectProvider {
    @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
    public final Object get(Context context) {
        return new SimpleOrientationTouchTransformer(context);
    }
}
