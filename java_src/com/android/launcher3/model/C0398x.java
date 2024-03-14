package com.android.launcher3.model;

import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.BgDataModel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.function.Predicate;
/* renamed from: com.android.launcher3.model.x  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0398x implements LauncherModel.CallbackTask {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4897a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f4898b;

    public /* synthetic */ C0398x(int i4, Object obj) {
        this.f4897a = i4;
        this.f4898b = obj;
    }

    @Override // com.android.launcher3.LauncherModel.CallbackTask
    public final void execute(BgDataModel.Callbacks callbacks) {
        int i4 = this.f4897a;
        Object obj = this.f4898b;
        switch (i4) {
            case 0:
                callbacks.bindExtraContainerItems((BgDataModel.FixedContainerItems) obj);
                return;
            case 1:
                callbacks.bindAllWidgets((ArrayList) obj);
                return;
            case 2:
                callbacks.bindWorkspaceItemsChanged((List) obj);
                return;
            case 3:
                callbacks.bindDeepShortcutMap((HashMap) obj);
                return;
            default:
                callbacks.bindWorkspaceComponentsRemoved((Predicate) obj);
                return;
        }
    }
}
