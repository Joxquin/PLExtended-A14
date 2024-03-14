package com.android.launcher3.util;

import android.content.Context;
import com.android.launcher3.util.MainThreadInitializedObject;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public final /* synthetic */ class t implements Callable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5315d = 1;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ MainThreadInitializedObject f5316e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Context f5317f;

    public /* synthetic */ t(MainThreadInitializedObject.SandboxContext sandboxContext, MainThreadInitializedObject mainThreadInitializedObject) {
        this.f5317f = sandboxContext;
        this.f5316e = mainThreadInitializedObject;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i4 = this.f5315d;
        Context context = this.f5317f;
        MainThreadInitializedObject mainThreadInitializedObject = this.f5316e;
        switch (i4) {
            case 0:
                return mainThreadInitializedObject.get(context);
            default:
                int i5 = MainThreadInitializedObject.SandboxContext.f5278a;
                return ((MainThreadInitializedObject.SandboxContext) context).getObject(mainThreadInitializedObject);
        }
    }

    public /* synthetic */ t(MainThreadInitializedObject mainThreadInitializedObject, Context context) {
        this.f5316e = mainThreadInitializedObject;
        this.f5317f = context;
    }
}
