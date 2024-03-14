package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Transformation;
import androidx.core.view.ViewTreeObserver$OnPreDrawListenerC0181s;
/* loaded from: classes.dex */
public final class S extends AnimationSet implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final ViewGroup f3327d;

    /* renamed from: e  reason: collision with root package name */
    public final View f3328e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f3329f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f3330g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f3331h;

    public S(Animation animation, ViewGroup viewGroup, View view) {
        super(false);
        this.f3331h = true;
        this.f3327d = viewGroup;
        this.f3328e = view;
        addAnimation(animation);
        viewGroup.post(this);
    }

    @Override // android.view.animation.AnimationSet, android.view.animation.Animation
    public final boolean getTransformation(long j4, Transformation transformation) {
        this.f3331h = true;
        if (this.f3329f) {
            return !this.f3330g;
        }
        if (!super.getTransformation(j4, transformation)) {
            this.f3329f = true;
            ViewTreeObserver$OnPreDrawListenerC0181s.a(this.f3327d, this);
        }
        return true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f3329f || !this.f3331h) {
            this.f3327d.endViewTransition(this.f3328e);
            this.f3330g = true;
            return;
        }
        this.f3331h = false;
        this.f3327d.post(this);
    }

    @Override // android.view.animation.Animation
    public final boolean getTransformation(long j4, Transformation transformation, float f4) {
        this.f3331h = true;
        if (this.f3329f) {
            return !this.f3330g;
        }
        if (!super.getTransformation(j4, transformation, f4)) {
            this.f3329f = true;
            ViewTreeObserver$OnPreDrawListenerC0181s.a(this.f3327d, this);
        }
        return true;
    }
}
