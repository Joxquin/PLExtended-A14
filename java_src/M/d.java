package M;

import android.view.accessibility.AccessibilityNodeInfo;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final Object f1348a;

    public d(Object obj) {
        this.f1348a = obj;
    }

    public static d a(int i4, int i5, int i6, int i7, boolean z4, boolean z5) {
        return new d(AccessibilityNodeInfo.CollectionItemInfo.obtain(i4, i5, i6, i7, z4, z5));
    }
}
