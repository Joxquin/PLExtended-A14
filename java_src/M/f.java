package M;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;
/* loaded from: classes.dex */
public class f extends AccessibilityNodeProvider {

    /* renamed from: a  reason: collision with root package name */
    public final i f1352a;

    public f(i iVar) {
        this.f1352a = iVar;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i4) {
        e a4 = this.f1352a.a(i4);
        if (a4 == null) {
            return null;
        }
        return a4.f1349a;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final List findAccessibilityNodeInfosByText(String str, int i4) {
        this.f1352a.getClass();
        return null;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final boolean performAction(int i4, int i5, Bundle bundle) {
        return this.f1352a.c(i4, i5, bundle);
    }
}
