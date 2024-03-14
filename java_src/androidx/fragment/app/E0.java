package androidx.fragment.app;

import android.transition.Transition;
import android.view.View;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class E0 implements Transition.TransitionListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ View f3250a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3251b;

    public E0(View view, ArrayList arrayList) {
        this.f3250a = view;
        this.f3251b = arrayList;
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
        this.f3250a.setVisibility(8);
        int size = this.f3251b.size();
        for (int i4 = 0; i4 < size; i4++) {
            ((View) this.f3251b.get(i4)).setVisibility(0);
        }
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionStart(Transition transition) {
        transition.removeListener(this);
        transition.addListener(this);
    }
}
