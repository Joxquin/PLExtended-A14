package com.android.launcher3.model;

import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.BgDataModel;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.android.launcher3.model.e0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0362e0 implements LauncherModel.CallbackTask {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4799a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f4800b;

    public /* synthetic */ C0362e0(int i4, Object obj) {
        this.f4799a = i4;
        this.f4800b = obj;
    }

    @Override // com.android.launcher3.LauncherModel.CallbackTask
    public final void execute(BgDataModel.Callbacks callbacks) {
        int i4 = this.f4799a;
        Object obj = this.f4800b;
        switch (i4) {
            case 0:
                callbacks.bindDeepShortcutMap((HashMap) obj);
                return;
            default:
                callbacks.bindAllWidgets((List) obj);
                return;
        }
    }
}
