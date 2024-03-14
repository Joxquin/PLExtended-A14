package com.android.launcher3.allapps;

import android.graphics.Rect;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4541a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ DeviceProfile f4542b;

    public /* synthetic */ a(int i4, DeviceProfile deviceProfile) {
        this.f4541a = i4;
        this.f4542b = deviceProfile;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i4 = this.f4541a;
        DeviceProfile deviceProfile = this.f4542b;
        ActivityAllAppsContainerView.AdapterHolder adapterHolder = (ActivityAllAppsContainerView.AdapterHolder) obj;
        Rect rect = adapterHolder.mPadding;
        rect.bottom = i4;
        int i5 = deviceProfile.allAppsLeftRightPadding;
        rect.right = i5;
        rect.left = i5;
        adapterHolder.applyPadding();
    }
}
