package M;

import F2.C0012k;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import androidx.core.view.C0186x;
import androidx.core.view.J;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class b implements AccessibilityManager.TouchExplorationStateChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final C0012k f1333a;

    public b(C0012k c0012k) {
        this.f1333a = c0012k;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            return this.f1333a.equals(((b) obj).f1333a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f1333a.hashCode();
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z4) {
        F2.q qVar = this.f1333a.f453a;
        AutoCompleteTextView autoCompleteTextView = qVar.f459e;
        if (autoCompleteTextView != null) {
            if (autoCompleteTextView.getInputType() != 0) {
                return;
            }
            int i4 = z4 ? 2 : 1;
            WeakHashMap weakHashMap = J.f3079a;
            C0186x.o(qVar.f500d, i4);
        }
    }
}
