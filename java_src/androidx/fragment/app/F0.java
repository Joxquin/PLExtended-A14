package androidx.fragment.app;

import android.transition.Transition;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class F0 implements Transition.TransitionListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Object f3257a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3258b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Object f3259c = null;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3260d = null;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f3261e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3262f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ H0 f3263g;

    public F0(H0 h02, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2) {
        this.f3263g = h02;
        this.f3257a = obj;
        this.f3258b = arrayList;
        this.f3261e = obj2;
        this.f3262f = arrayList2;
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionStart(Transition transition) {
        Object obj = this.f3257a;
        if (obj != null) {
            this.f3263g.t(obj, this.f3258b, null);
        }
        Object obj2 = this.f3259c;
        if (obj2 != null) {
            this.f3263g.t(obj2, this.f3260d, null);
        }
        Object obj3 = this.f3261e;
        if (obj3 != null) {
            this.f3263g.t(obj3, this.f3262f, null);
        }
    }
}
