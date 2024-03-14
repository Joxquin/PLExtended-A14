package androidx.fragment.app.strictmode;

import android.view.ViewGroup;
import androidx.fragment.app.K;
/* loaded from: classes.dex */
public final class FragmentTagUsageViolation extends Violation {
    private final ViewGroup parentContainer;

    public FragmentTagUsageViolation(K k4, ViewGroup viewGroup) {
        super(k4, "Attempting to use <fragment> tag to add fragment " + k4 + " to container " + viewGroup);
        this.parentContainer = viewGroup;
    }
}
