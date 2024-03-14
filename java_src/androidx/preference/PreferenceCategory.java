package androidx.preference;

import D.o;
import X.a0;
import android.content.Context;
import android.util.AttributeSet;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class PreferenceCategory extends PreferenceGroup {
    public PreferenceCategory() {
        throw null;
    }

    public PreferenceCategory(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, o.a(context, R.attr.preferenceCategoryStyle, 16842892), 0);
    }

    @Override // androidx.preference.Preference
    public final boolean isEnabled() {
        return false;
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(a0 a0Var) {
        super.onBindViewHolder(a0Var);
        a0Var.itemView.setAccessibilityHeading(true);
    }

    @Override // androidx.preference.Preference
    public final boolean shouldDisableDependents() {
        return !super.isEnabled();
    }
}
