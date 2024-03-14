package N;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.ScrollView;
import androidx.core.view.C0165b;
import androidx.core.widget.NestedScrollView;
/* loaded from: classes.dex */
public final class e extends C0165b {
    @Override // androidx.core.view.C0165b
    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        accessibilityEvent.setClassName(ScrollView.class.getName());
        accessibilityEvent.setScrollable(nestedScrollView.g() > 0);
        accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
        accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
        accessibilityEvent.setMaxScrollX(nestedScrollView.getScrollX());
        accessibilityEvent.setMaxScrollY(nestedScrollView.g());
    }

    @Override // androidx.core.view.C0165b
    public final void onInitializeAccessibilityNodeInfo(View view, M.e eVar) {
        int g4;
        super.onInitializeAccessibilityNodeInfo(view, eVar);
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        eVar.h(ScrollView.class.getName());
        if (!nestedScrollView.isEnabled() || (g4 = nestedScrollView.g()) <= 0) {
            return;
        }
        eVar.f1349a.setScrollable(true);
        if (nestedScrollView.getScrollY() > 0) {
            eVar.b(M.c.f1336g);
            eVar.b(M.c.f1341l);
        }
        if (nestedScrollView.getScrollY() < g4) {
            eVar.b(M.c.f1335f);
            eVar.b(M.c.f1342m);
        }
    }

    @Override // androidx.core.view.C0165b
    public final boolean performAccessibilityAction(View view, int i4, Bundle bundle) {
        if (super.performAccessibilityAction(view, i4, bundle)) {
            return true;
        }
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        if (nestedScrollView.isEnabled()) {
            int height = nestedScrollView.getHeight();
            Rect rect = new Rect();
            if (nestedScrollView.getMatrix().isIdentity() && nestedScrollView.getGlobalVisibleRect(rect)) {
                height = rect.height();
            }
            if (i4 != 4096) {
                if (i4 == 8192 || i4 == 16908344) {
                    int max = Math.max(nestedScrollView.getScrollY() - ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                    if (max != nestedScrollView.getScrollY()) {
                        nestedScrollView.w(0 - nestedScrollView.getScrollX(), max - nestedScrollView.getScrollY(), true);
                        return true;
                    }
                    return false;
                } else if (i4 != 16908346) {
                    return false;
                }
            }
            int min = Math.min(nestedScrollView.getScrollY() + ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.g());
            if (min != nestedScrollView.getScrollY()) {
                nestedScrollView.w(0 - nestedScrollView.getScrollX(), min - nestedScrollView.getScrollY(), true);
                return true;
            }
            return false;
        }
        return false;
    }
}
