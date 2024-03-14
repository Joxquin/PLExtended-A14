package com.android.launcher3.util;

import android.content.Context;
import com.android.launcher3.util.MainThreadInitializedObject;
/* loaded from: classes.dex */
final class WallpaperColorHints$Companion$INSTANCE$1 implements MainThreadInitializedObject.ObjectProvider {
    public static final WallpaperColorHints$Companion$INSTANCE$1 INSTANCE = new WallpaperColorHints$Companion$INSTANCE$1();

    @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
    public final Object get(Context it) {
        kotlin.jvm.internal.h.d(it, "it");
        return new WallpaperColorHints(it);
    }
}
