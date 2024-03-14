package j2;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.Log;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import java.util.ArrayList;
import java.util.List;
import q.m;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final m f10709a = new m();

    /* renamed from: b  reason: collision with root package name */
    public final m f10710b = new m();

    public static g a(int i4, Context context) {
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i4);
            if (loadAnimator instanceof AnimatorSet) {
                return b(((AnimatorSet) loadAnimator).getChildAnimations());
            }
            if (loadAnimator != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(loadAnimator);
                return b(arrayList);
            }
            return null;
        } catch (Exception e4) {
            Log.w("MotionSpec", "Can't load animation resource ID #0x" + Integer.toHexString(i4), e4);
            return null;
        }
    }

    public static g b(List list) {
        g gVar = new g();
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            Animator animator = (Animator) list.get(i4);
            if (!(animator instanceof ObjectAnimator)) {
                throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
            }
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            gVar.f10710b.put(objectAnimator.getPropertyName(), objectAnimator.getValues());
            String propertyName = objectAnimator.getPropertyName();
            long startDelay = objectAnimator.getStartDelay();
            long duration = objectAnimator.getDuration();
            TimeInterpolator interpolator = objectAnimator.getInterpolator();
            if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
                interpolator = C1114a.f10701b;
            } else if (interpolator instanceof AccelerateInterpolator) {
                interpolator = C1114a.f10702c;
            } else if (interpolator instanceof DecelerateInterpolator) {
                interpolator = C1114a.f10703d;
            }
            h hVar = new h(startDelay, duration, interpolator);
            hVar.f10714d = objectAnimator.getRepeatCount();
            hVar.f10715e = objectAnimator.getRepeatMode();
            gVar.f10709a.put(propertyName, hVar);
        }
        return gVar;
    }

    public final h c(String str) {
        m mVar = this.f10709a;
        if (mVar.get(str) != null) {
            return (h) mVar.get(str);
        }
        throw new IllegalArgumentException();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            return this.f10709a.equals(((g) obj).f10709a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f10709a.hashCode();
    }

    public final String toString() {
        return "\n" + g.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f10709a + "}\n";
    }
}
