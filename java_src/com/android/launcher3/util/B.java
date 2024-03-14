package com.android.launcher3.util;

import android.content.Intent;
import com.android.launcher3.util.ScreenOnTracker;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class B implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5263a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ScreenOnTracker f5264b;

    public /* synthetic */ B(ScreenOnTracker screenOnTracker, int i4) {
        this.f5263a = i4;
        this.f5264b = screenOnTracker;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5263a) {
            case 0:
                ScreenOnTracker.b(this.f5264b, (Intent) obj);
                return;
            default:
                ScreenOnTracker.a(this.f5264b, (ScreenOnTracker.ScreenOnListener) obj);
                return;
        }
    }
}
