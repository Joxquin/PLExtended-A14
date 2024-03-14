package androidx.preference;

import D.o;
import X.a0;
import X.b0;
import X.g0;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.Switch;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class SwitchPreference extends TwoStatePreference {
    private final g0 mListener;
    private CharSequence mSwitchOff;
    private CharSequence mSwitchOn;

    public SwitchPreference() {
        throw null;
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mListener = new g0(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b0.f1997m, i4, 0);
        setSummaryOn(o.b(obtainStyledAttributes, 7, 0));
        setSummaryOff(o.b(obtainStyledAttributes, 6, 1));
        this.mSwitchOn = o.b(obtainStyledAttributes, 9, 3);
        notifyChanged();
        this.mSwitchOff = o.b(obtainStyledAttributes, 8, 4);
        notifyChanged();
        setDisableDependentsState(obtainStyledAttributes.getBoolean(5, obtainStyledAttributes.getBoolean(2, false)));
        obtainStyledAttributes.recycle();
    }

    private void syncSwitchView(View view) {
        boolean z4 = view instanceof Switch;
        if (z4) {
            ((Switch) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.mChecked);
        }
        if (z4) {
            Switch r4 = (Switch) view;
            r4.setTextOn(this.mSwitchOn);
            r4.setTextOff(this.mSwitchOff);
            r4.setOnCheckedChangeListener(this.mListener);
        }
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(a0 a0Var) {
        super.onBindViewHolder(a0Var);
        syncSwitchView(a0Var.a(16908352));
        syncSummaryView(a0Var.a(16908304));
    }

    @Override // androidx.preference.Preference
    public final void performClick(View view) {
        super.performClick(view);
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled()) {
            syncSwitchView(view.findViewById(16908352));
            syncSummaryView(view.findViewById(16908304));
        }
    }

    public SwitchPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, o.a(context, R.attr.switchPreferenceStyle, 16843629));
    }
}
