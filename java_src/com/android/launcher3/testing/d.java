package com.android.launcher3.testing;

import com.android.launcher3.Launcher;
import com.android.launcher3.util.ActivityTracker;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Supplier {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5184a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f5185b;

    public /* synthetic */ d(int i4, Object obj) {
        this.f5184a = i4;
        this.f5185b = obj;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f5184a) {
            case 0:
                return ((TestInformationHandler) this.f5185b).getCurrentActivity();
            case 1:
                return ((TestInformationHandler) this.f5185b).getCurrentActivity();
            default:
                return (Launcher) ((ActivityTracker) this.f5185b).getCreatedActivity();
        }
    }
}
