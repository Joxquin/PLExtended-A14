package androidx.fragment.app.strictmode;

import android.view.ViewGroup;
import androidx.fragment.app.K;
/* loaded from: classes.dex */
public final class WrongFragmentContainerViolation extends Violation {
    private final ViewGroup container;

    public WrongFragmentContainerViolation(K k4, ViewGroup viewGroup) {
        super(k4, "Attempting to add fragment " + k4 + " to container " + viewGroup + " which is not a FragmentContainerView");
        this.container = viewGroup;
    }
}
