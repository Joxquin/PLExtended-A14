package M;

import android.view.accessibility.AccessibilityNodeInfo;
/* loaded from: classes.dex */
public class g extends f {
    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final AccessibilityNodeInfo findFocus(int i4) {
        e b4 = this.f1352a.b(i4);
        if (b4 == null) {
            return null;
        }
        return b4.f1349a;
    }
}
