package com.android.launcher3.util;

import com.android.launcher3.model.data.ItemInfo;
import java.util.function.Consumer;
/* renamed from: com.android.launcher3.util.p  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0483p implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ IntSet f5308a;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f5308a.add(((ItemInfo) obj).id);
    }
}
