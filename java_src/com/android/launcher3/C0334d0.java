package com.android.launcher3;

import android.content.Intent;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.util.PackageUserKey;
import java.util.function.Consumer;
/* renamed from: com.android.launcher3.d0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0334d0 implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4579a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ LauncherModel f4580b;

    public /* synthetic */ C0334d0(LauncherModel launcherModel, int i4) {
        this.f4579a = i4;
        this.f4580b = launcherModel;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f4579a) {
            case 0:
                this.f4580b.onBroadcastIntent((Intent) obj);
                return;
            default:
                LauncherModel launcherModel = this.f4580b;
                launcherModel.getClass();
                launcherModel.enqueueModelUpdateTask(new LauncherModel.AnonymousClass2((PackageUserKey) obj, 2));
                return;
        }
    }
}
