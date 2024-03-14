package com.android.launcher3.util;

import android.content.Context;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.ResourceBasedOverride;
/* loaded from: classes.dex */
public final /* synthetic */ class u implements MainThreadInitializedObject.ObjectProvider {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Class f5318a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f5319b;

    public /* synthetic */ u(Class cls, int i4) {
        this.f5318a = cls;
        this.f5319b = i4;
    }

    @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
    public final Object get(Context context) {
        return ResourceBasedOverride.Overrides.getObject(this.f5319b, context, this.f5318a);
    }
}
