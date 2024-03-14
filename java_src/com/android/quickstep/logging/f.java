package com.android.quickstep.logging;

import android.content.Context;
import com.android.launcher3.util.MainThreadInitializedObject;
/* loaded from: classes.dex */
public final /* synthetic */ class f implements MainThreadInitializedObject.ObjectProvider {
    @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
    public final Object get(Context context) {
        return SettingsChangeLogger.e(context);
    }
}
