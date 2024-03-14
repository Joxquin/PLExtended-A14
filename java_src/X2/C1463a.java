package x2;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.C0165b;
import com.google.android.material.internal.CheckableImageButton;
/* renamed from: x2.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1463a extends C0165b {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ CheckableImageButton f12842d;

    public C1463a(CheckableImageButton checkableImageButton) {
        this.f12842d = checkableImageButton;
    }

    @Override // androidx.core.view.C0165b
    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setChecked(this.f12842d.isChecked());
    }

    @Override // androidx.core.view.C0165b
    public final void onInitializeAccessibilityNodeInfo(View view, M.e eVar) {
        super.onInitializeAccessibilityNodeInfo(view, eVar);
        CheckableImageButton checkableImageButton = this.f12842d;
        boolean z4 = checkableImageButton.f7984h;
        AccessibilityNodeInfo accessibilityNodeInfo = eVar.f1349a;
        accessibilityNodeInfo.setCheckable(z4);
        accessibilityNodeInfo.setChecked(checkableImageButton.isChecked());
    }
}
