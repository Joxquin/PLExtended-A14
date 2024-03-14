package androidx.core.view;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import com.android.systemui.shared.R;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
/* renamed from: androidx.core.view.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0164a extends View.AccessibilityDelegate {

    /* renamed from: a  reason: collision with root package name */
    public final C0165b f3101a;

    public C0164a(C0165b c0165b) {
        this.f3101a = c0165b;
    }

    @Override // android.view.View.AccessibilityDelegate
    public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return this.f3101a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
        M.i accessibilityNodeProvider = this.f3101a.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return (AccessibilityNodeProvider) accessibilityNodeProvider.f1353a;
        }
        return null;
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.f3101a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        M.e eVar = new M.e(accessibilityNodeInfo);
        WeakHashMap weakHashMap = J.f3079a;
        Boolean bool = (Boolean) new C0182t(R.id.tag_screen_reader_focusable, 0).b(view);
        boolean z4 = true;
        accessibilityNodeInfo.setScreenReaderFocusable(bool != null && bool.booleanValue());
        Boolean bool2 = (Boolean) new C0182t(R.id.tag_accessibility_heading, 3).b(view);
        accessibilityNodeInfo.setHeading((bool2 == null || !bool2.booleanValue()) ? false : false);
        accessibilityNodeInfo.setPaneTitle((CharSequence) new C0182t(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28, 1).b(view));
        int i4 = I.b.f550a;
        accessibilityNodeInfo.setStateDescription((CharSequence) new C0182t(R.id.tag_state_description, CharSequence.class, 64, 30, 2).b(view));
        this.f3101a.onInitializeAccessibilityNodeInfo(view, eVar);
        accessibilityNodeInfo.getText();
        List list = (List) view.getTag(R.id.tag_accessibility_actions);
        if (list == null) {
            list = Collections.emptyList();
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            eVar.b((M.c) list.get(i5));
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.f3101a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f3101a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final boolean performAccessibilityAction(View view, int i4, Bundle bundle) {
        return this.f3101a.performAccessibilityAction(view, i4, bundle);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void sendAccessibilityEvent(View view, int i4) {
        this.f3101a.sendAccessibilityEvent(view, i4);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        this.f3101a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }
}
