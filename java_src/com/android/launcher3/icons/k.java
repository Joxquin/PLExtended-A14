package com.android.launcher3.icons;

import android.content.pm.LauncherActivityInfo;
import android.content.pm.ShortcutInfo;
import com.android.launcher3.model.data.IconRequestInfo;
import java.util.List;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public final /* synthetic */ class k implements Supplier {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4672a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f4673b;

    public /* synthetic */ k(int i4, Object obj) {
        this.f4672a = i4;
        this.f4673b = obj;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f4672a) {
            case 0:
                return (ComponentWithLabel) this.f4673b;
            case 1:
                return (ShortcutInfo) this.f4673b;
            case 2:
                return (LauncherActivityInfo) this.f4673b;
            default:
                return ((IconRequestInfo) ((List) this.f4673b).get(0)).launcherActivityInfo;
        }
    }
}
