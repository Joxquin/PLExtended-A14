package F2;

import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.C0165b;
import com.google.android.material.textfield.TextInputLayout;
/* loaded from: classes.dex */
public final class L extends C0165b {

    /* renamed from: d  reason: collision with root package name */
    public final TextInputLayout f435d;

    public L(TextInputLayout textInputLayout) {
        this.f435d = textInputLayout;
    }

    @Override // androidx.core.view.C0165b
    public final void onInitializeAccessibilityNodeInfo(View view, M.e eVar) {
        AppCompatTextView appCompatTextView;
        super.onInitializeAccessibilityNodeInfo(view, eVar);
        TextInputLayout textInputLayout = this.f435d;
        EditText editText = textInputLayout.f8099g;
        CharSequence charSequence = null;
        CharSequence text = editText != null ? editText.getText() : null;
        CharSequence charSequence2 = textInputLayout.f8070D ? textInputLayout.f8071E : null;
        A a4 = textInputLayout.f8111m;
        CharSequence charSequence3 = a4.f399k ? a4.f398j : null;
        CharSequence charSequence4 = textInputLayout.f8129v ? textInputLayout.f8127u : null;
        int i4 = textInputLayout.f8115o;
        if (textInputLayout.f8113n && textInputLayout.f8117p && (appCompatTextView = textInputLayout.f8121r) != null) {
            charSequence = appCompatTextView.getContentDescription();
        }
        boolean z4 = !TextUtils.isEmpty(text);
        boolean z5 = !TextUtils.isEmpty(charSequence2);
        boolean z6 = !textInputLayout.f8126t0;
        boolean z7 = !TextUtils.isEmpty(charSequence3);
        boolean z8 = z7 || !TextUtils.isEmpty(charSequence);
        String charSequence5 = z5 ? charSequence2.toString() : "";
        H h4 = textInputLayout.f8095e;
        int visibility = h4.f424e.getVisibility();
        AccessibilityNodeInfo accessibilityNodeInfo = eVar.f1349a;
        if (visibility == 0) {
            accessibilityNodeInfo.setLabelFor(h4.f424e);
            accessibilityNodeInfo.setTraversalAfter(h4.f424e);
        } else {
            accessibilityNodeInfo.setTraversalAfter(h4.f426g);
        }
        if (z4) {
            eVar.k(text);
        } else if (!TextUtils.isEmpty(charSequence5)) {
            eVar.k(charSequence5);
            if (z6 && charSequence4 != null) {
                eVar.k(charSequence5 + ", " + ((Object) charSequence4));
            }
        } else if (charSequence4 != null) {
            eVar.k(charSequence4);
        }
        if (!TextUtils.isEmpty(charSequence5)) {
            accessibilityNodeInfo.setHintText(charSequence5);
            accessibilityNodeInfo.setShowingHintText(!z4);
        }
        accessibilityNodeInfo.setMaxTextLength((text == null || text.length() != i4) ? -1 : -1);
        if (z8) {
            if (!z7) {
                charSequence3 = charSequence;
            }
            accessibilityNodeInfo.setError(charSequence3);
        }
        AppCompatTextView appCompatTextView2 = textInputLayout.f8111m.f406r;
        if (appCompatTextView2 != null) {
            accessibilityNodeInfo.setLabelFor(appCompatTextView2);
        }
        textInputLayout.f8097f.c().n(eVar);
    }

    @Override // androidx.core.view.C0165b
    public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(view, accessibilityEvent);
        this.f435d.f8097f.c().o(accessibilityEvent);
    }
}
