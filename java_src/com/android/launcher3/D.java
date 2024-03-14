package com.android.launcher3;

import android.content.Context;
import com.android.launcher3.model.DeviceGridState;
/* loaded from: classes.dex */
public final /* synthetic */ class D implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4422d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ InvariantDeviceProfile f4423e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Context f4424f;

    public /* synthetic */ D(int i4, Context context, InvariantDeviceProfile invariantDeviceProfile) {
        this.f4422d = i4;
        this.f4423e = invariantDeviceProfile;
        this.f4424f = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4422d) {
            case 0:
                InvariantDeviceProfile.b(this.f4424f, this.f4423e);
                return;
            default:
                InvariantDeviceProfile invariantDeviceProfile = this.f4423e;
                Context context = this.f4424f;
                invariantDeviceProfile.getClass();
                new DeviceGridState(invariantDeviceProfile).writeToPrefs(context);
                return;
        }
    }
}
