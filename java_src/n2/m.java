package n2;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.C0165b;
/* loaded from: classes.dex */
public final class m extends C0165b {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ q f11823d;

    public m(q qVar) {
        this.f11823d = qVar;
    }

    @Override // androidx.core.view.C0165b
    public final void onInitializeAccessibilityNodeInfo(View view, M.e eVar) {
        super.onInitializeAccessibilityNodeInfo(view, eVar);
        boolean z4 = this.f11823d.f11833m;
        AccessibilityNodeInfo accessibilityNodeInfo = eVar.f1349a;
        if (!z4) {
            accessibilityNodeInfo.setDismissable(false);
            return;
        }
        eVar.a(1048576);
        accessibilityNodeInfo.setDismissable(true);
    }

    @Override // androidx.core.view.C0165b
    public final boolean performAccessibilityAction(View view, int i4, Bundle bundle) {
        if (i4 == 1048576) {
            q qVar = this.f11823d;
            if (qVar.f11833m) {
                qVar.cancel();
                return true;
            }
        }
        return super.performAccessibilityAction(view, i4, bundle);
    }
}
