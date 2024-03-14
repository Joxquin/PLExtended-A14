package com.android.launcher3.model;

import android.os.UserHandle;
import com.android.launcher3.model.ItemInstallQueue;
import com.android.launcher3.shortcuts.ShortcutKey;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class Z implements Function {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4782a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f4783b;

    public /* synthetic */ Z(int i4, Object obj) {
        this.f4782a = i4;
        this.f4783b = obj;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f4782a) {
            case 0:
                return ItemInstallQueue.b((ItemInstallQueue) this.f4783b, (ItemInstallQueue.PendingInstallShortcutInfo) obj);
            default:
                return ShortcutKey.fromIntent(((ItemInstallQueue.PendingInstallShortcutInfo) obj).intent, (UserHandle) this.f4783b);
        }
    }
}
