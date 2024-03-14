package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import androidx.lifecycle.InterfaceC0251q;
/* renamed from: androidx.fragment.app.u  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0228u implements androidx.lifecycle.z {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ DialogFragment f3511d;

    public C0228u(DialogFragment dialogFragment) {
        this.f3511d = dialogFragment;
    }

    @Override // androidx.lifecycle.z
    public final void i(Object obj) {
        if (((InterfaceC0251q) obj) != null) {
            DialogFragment dialogFragment = this.f3511d;
            if (DialogFragment.access$200(dialogFragment)) {
                View requireView = dialogFragment.requireView();
                if (requireView.getParent() != null) {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
                if (DialogFragment.access$000(dialogFragment) != null) {
                    if (AbstractC0220p0.H(3)) {
                        Log.d("FragmentManager", "DialogFragment " + this + " setting the content view on " + DialogFragment.access$000(dialogFragment));
                    }
                    DialogFragment.access$000(dialogFragment).setContentView(requireView);
                }
            }
        }
    }
}
