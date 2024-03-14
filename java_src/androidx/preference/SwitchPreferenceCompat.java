package androidx.preference;

import D.o;
import X.a0;
import X.b0;
import X.h0;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.view.C0182t;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class SwitchPreferenceCompat extends TwoStatePreference {

    /* renamed from: d  reason: collision with root package name */
    public final h0 f3721d;

    /* renamed from: e  reason: collision with root package name */
    public CharSequence f3722e;

    /* renamed from: f  reason: collision with root package name */
    public CharSequence f3723f;

    public SwitchPreferenceCompat() {
        throw null;
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, R.attr.switchPreferenceCompatStyle);
        this.f3721d = new h0(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b0.f1998n, R.attr.switchPreferenceCompatStyle, 0);
        setSummaryOn(o.b(obtainStyledAttributes, 7, 0));
        setSummaryOff(o.b(obtainStyledAttributes, 6, 1));
        this.f3722e = o.b(obtainStyledAttributes, 9, 3);
        notifyChanged();
        this.f3723f = o.b(obtainStyledAttributes, 8, 4);
        notifyChanged();
        setDisableDependentsState(obtainStyledAttributes.getBoolean(5, obtainStyledAttributes.getBoolean(2, false)));
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(a0 a0Var) {
        super.onBindViewHolder(a0Var);
        syncSwitchView(a0Var.a(R.id.switchWidget));
        syncSummaryView(a0Var.a(16908304));
    }

    @Override // androidx.preference.Preference
    public final void performClick(View view) {
        super.performClick(view);
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled()) {
            syncSwitchView(view.findViewById(R.id.switchWidget));
            syncSummaryView(view.findViewById(16908304));
        }
    }

    public final void syncSwitchView(View view) {
        boolean z4 = view instanceof SwitchCompat;
        if (z4) {
            ((SwitchCompat) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.mChecked);
        }
        if (z4) {
            SwitchCompat switchCompat = (SwitchCompat) view;
            switchCompat.f(this.f3722e);
            switchCompat.requestLayout();
            if (switchCompat.isChecked()) {
                Object obj = switchCompat.f2632r;
                if (obj == null) {
                    obj = switchCompat.getResources().getString(R.string.abc_capital_on);
                }
                WeakHashMap weakHashMap = J.f3079a;
                new C0182t(R.id.tag_state_description, CharSequence.class, 64, 30, 2).c(switchCompat, obj);
            }
            switchCompat.e(this.f3723f);
            switchCompat.requestLayout();
            if (!switchCompat.isChecked()) {
                Object obj2 = switchCompat.f2634t;
                if (obj2 == null) {
                    obj2 = switchCompat.getResources().getString(R.string.abc_capital_off);
                }
                WeakHashMap weakHashMap2 = J.f3079a;
                new C0182t(R.id.tag_state_description, CharSequence.class, 64, 30, 2).c(switchCompat, obj2);
            }
            switchCompat.setOnCheckedChangeListener(this.f3721d);
        }
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
