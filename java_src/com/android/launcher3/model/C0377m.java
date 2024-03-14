package com.android.launcher3.model;

import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.BgDataModel;
/* renamed from: com.android.launcher3.model.m  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0377m implements LauncherModel.CallbackTask {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4839a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ StringCache f4840b;

    public /* synthetic */ C0377m(StringCache stringCache, int i4) {
        this.f4839a = i4;
        this.f4840b = stringCache;
    }

    @Override // com.android.launcher3.LauncherModel.CallbackTask
    public final void execute(BgDataModel.Callbacks callbacks) {
        int i4 = this.f4839a;
        StringCache stringCache = this.f4840b;
        switch (i4) {
            case 0:
                callbacks.bindStringCache(stringCache);
                return;
            default:
                callbacks.bindStringCache(stringCache);
                return;
        }
    }
}
