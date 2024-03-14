package com.google.android.apps.nexuslauncher;

import android.content.Context;
import com.android.launcher3.util.MainThreadInitializedObject;
/* loaded from: classes.dex */
public final class l implements MainThreadInitializedObject.ObjectProvider {

    /* renamed from: a  reason: collision with root package name */
    public static final l f7368a = new l();

    @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
    public final Object get(Context it) {
        kotlin.jvm.internal.h.d(it, "it");
        return new u(it);
    }
}
