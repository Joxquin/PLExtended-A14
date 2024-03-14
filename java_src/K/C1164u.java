package k;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import com.android.systemui.shared.R;
import java.lang.reflect.Method;
/* renamed from: k.u  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1164u extends Button {

    /* renamed from: d  reason: collision with root package name */
    public final C1162t f10983d;

    /* renamed from: e  reason: collision with root package name */
    public final C1134e0 f10984e;

    /* renamed from: f  reason: collision with root package name */
    public C1121E f10985f;

    public C1164u(Context context) {
        this(context, null);
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C1162t c1162t = this.f10983d;
        if (c1162t != null) {
            c1162t.a();
        }
        C1134e0 c1134e0 = this.f10984e;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView
    public final int getAutoSizeMaxTextSize() {
        Method method = c1.f10879a;
        return super.getAutoSizeMaxTextSize();
    }

    @Override // android.widget.TextView
    public final int getAutoSizeMinTextSize() {
        Method method = c1.f10879a;
        return super.getAutoSizeMinTextSize();
    }

    @Override // android.widget.TextView
    public final int getAutoSizeStepGranularity() {
        Method method = c1.f10879a;
        return super.getAutoSizeStepGranularity();
    }

    @Override // android.widget.TextView
    public final int[] getAutoSizeTextAvailableSizes() {
        Method method = c1.f10879a;
        return super.getAutoSizeTextAvailableSizes();
    }

    @Override // android.widget.TextView
    public final int getAutoSizeTextType() {
        Method method = c1.f10879a;
        return super.getAutoSizeTextType() == 1 ? 1 : 0;
    }

    @Override // android.widget.TextView
    public final ActionMode.Callback getCustomSelectionActionModeCallback() {
        return N.i.b(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        C1134e0 c1134e0 = this.f10984e;
        if (c1134e0 != null) {
            c1134e0.getClass();
            Method method = c1.f10879a;
        }
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
        super.onTextChanged(charSequence, i4, i5, i6);
        if (this.f10984e != null) {
            Method method = c1.f10879a;
        }
    }

    @Override // android.widget.TextView
    public final void setAllCaps(boolean z4) {
        super.setAllCaps(z4);
        if (this.f10985f == null) {
            this.f10985f = new C1121E(this);
        }
        this.f10985f.c(z4);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithConfiguration(int i4, int i5, int i6, int i7) {
        Method method = c1.f10879a;
        super.setAutoSizeTextTypeUniformWithConfiguration(i4, i5, i6, i7);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i4) {
        Method method = c1.f10879a;
        super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i4);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeWithDefaults(int i4) {
        Method method = c1.f10879a;
        super.setAutoSizeTextTypeWithDefaults(i4);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C1162t c1162t = this.f10983d;
        if (c1162t != null) {
            c1162t.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i4) {
        super.setBackgroundResource(i4);
        C1162t c1162t = this.f10983d;
        if (c1162t != null) {
            c1162t.f(i4);
        }
    }

    @Override // android.widget.TextView
    public final void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    @Override // android.widget.TextView
    public final void setFilters(InputFilter[] inputFilterArr) {
        if (this.f10985f == null) {
            this.f10985f = new C1121E(this);
        }
        super.setFilters(this.f10985f.a(inputFilterArr));
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i4) {
        super.setTextAppearance(context, i4);
        C1134e0 c1134e0 = this.f10984e;
        if (c1134e0 != null) {
            c1134e0.e(i4, context);
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i4, float f4) {
        Method method = c1.f10879a;
        super.setTextSize(i4, f4);
    }

    public C1164u(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.buttonStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1164u(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        O0.a(context);
        M0.a(this, getContext());
        C1162t c1162t = new C1162t(this);
        this.f10983d = c1162t;
        c1162t.d(attributeSet, i4);
        C1134e0 c1134e0 = new C1134e0(this);
        this.f10984e = c1134e0;
        c1134e0.d(attributeSet, i4);
        c1134e0.b();
        if (this.f10985f == null) {
            this.f10985f = new C1121E(this);
        }
        this.f10985f.b(attributeSet, i4);
    }
}
