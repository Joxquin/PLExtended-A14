package com.android.launcher3;

import android.content.Context;
import com.android.launcher3.util.MainThreadInitializedObject;
/* loaded from: classes.dex */
final class LauncherPrefs$Companion$INSTANCE$1 implements MainThreadInitializedObject.ObjectProvider {
    public static final LauncherPrefs$Companion$INSTANCE$1 INSTANCE = new LauncherPrefs$Companion$INSTANCE$1();

    @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
    public final Object get(Context it) {
        kotlin.jvm.internal.h.d(it, "it");
        return new LauncherPrefs(it);
    }
}
