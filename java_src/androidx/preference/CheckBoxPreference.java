package androidx.preference;

import D.o;
import X.C0078a;
import X.a0;
import X.b0;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class CheckBoxPreference extends TwoStatePreference {

    /* renamed from: d  reason: collision with root package name */
    public final C0078a f3638d;

    public CheckBoxPreference() {
        throw null;
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f3638d = new C0078a(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b0.f1986b, i4, 0);
        setSummaryOn(o.b(obtainStyledAttributes, 5, 0));
        setSummaryOff(o.b(obtainStyledAttributes, 4, 1));
        setDisableDependentsState(obtainStyledAttributes.getBoolean(3, obtainStyledAttributes.getBoolean(2, false)));
        obtainStyledAttributes.recycle();
    }

    public final void a(View view) {
        boolean z4 = view instanceof CompoundButton;
        if (z4) {
            ((CompoundButton) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.mChecked);
        }
        if (z4) {
            ((CompoundButton) view).setOnCheckedChangeListener(this.f3638d);
        }
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(a0 a0Var) {
        super.onBindViewHolder(a0Var);
        a(a0Var.a(16908289));
        syncSummaryView(a0Var.a(16908304));
    }

    @Override // androidx.preference.Preference
    public final void performClick(View view) {
        super.performClick(view);
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled()) {
            a(view.findViewById(16908289));
            syncSummaryView(view.findViewById(16908304));
        }
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, o.a(context, R.attr.checkBoxPreferenceStyle, 16842895));
    }
}
