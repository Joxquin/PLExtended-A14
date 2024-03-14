package com.android.launcher3.model;

import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.util.C0481n;
import com.android.launcher3.util.C0483p;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.ItemInfoMatcher;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.android.launcher3.model.w0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0397w0 implements LauncherModel.CallbackTask {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4893a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Collection f4894b;

    public /* synthetic */ C0397w0(int i4, Collection collection) {
        this.f4893a = i4;
        this.f4894b = collection;
    }

    @Override // com.android.launcher3.LauncherModel.CallbackTask
    public final void execute(BgDataModel.Callbacks callbacks) {
        int i4 = this.f4893a;
        Collection collection = this.f4894b;
        switch (i4) {
            case 0:
                int i5 = ItemInfoMatcher.f5271a;
                IntSet intSet = new IntSet();
                collection.forEach(new C0483p(intSet));
                callbacks.bindWorkspaceComponentsRemoved(new C0481n(3, intSet));
                return;
            default:
                callbacks.bindItemsModified((ArrayList) collection);
                return;
        }
    }
}
