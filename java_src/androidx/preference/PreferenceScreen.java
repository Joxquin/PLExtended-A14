package androidx.preference;

import D.o;
import X.V;
import android.content.Context;
import android.util.AttributeSet;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class PreferenceScreen extends PreferenceGroup {

    /* renamed from: l  reason: collision with root package name */
    public final boolean f3708l;

    public PreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, o.a(context, R.attr.preferenceScreenStyle, 16842891));
        this.f3708l = true;
    }

    @Override // androidx.preference.Preference
    public final void onClick() {
        V v4;
        if (getIntent() != null || getFragment() != null || e() == 0 || (v4 = getPreferenceManager().f1974j) == null) {
            return;
        }
        v4.onNavigateToScreen(this);
    }
}
