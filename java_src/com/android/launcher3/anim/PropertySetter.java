package com.android.launcher3.anim;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.util.FloatProperty;
import android.util.IntProperty;
import android.view.View;
import com.android.launcher3.views.ScrimView;
import com.google.android.apps.nexuslauncher.allapps.c3;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public abstract class PropertySetter {
    public static final PropertySetter NO_ANIM_PROPERTY_SETTER = new AnonymousClass1();
    protected static final AnimatorSet NO_OP = new AnimatorSet();

    /* renamed from: com.android.launcher3.anim.PropertySetter$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 extends PropertySetter {
        @Override // com.android.launcher3.anim.PropertySetter
        public final void add(Animator animator) {
            animator.setDuration(0L);
            animator.start();
            animator.end();
        }
    }

    public abstract void add(Animator animator);

    public void addEndListener(Consumer consumer) {
        ((c3) consumer).accept(Boolean.TRUE);
    }

    public AnimatorSet buildAnim() {
        return NO_OP;
    }

    public Animator setColor(Object obj, IntProperty intProperty, int i4, TimeInterpolator timeInterpolator) {
        intProperty.setValue(obj, i4);
        return NO_OP;
    }

    public Animator setFloat(Object obj, FloatProperty floatProperty, float f4, TimeInterpolator timeInterpolator) {
        floatProperty.setValue(obj, f4);
        return NO_OP;
    }

    public Animator setInt(Object obj, IntProperty intProperty, int i4, TimeInterpolator timeInterpolator) {
        intProperty.setValue(obj, i4);
        return NO_OP;
    }

    public Animator setViewAlpha(View view, float f4, TimeInterpolator timeInterpolator) {
        if (view != null) {
            view.setAlpha(f4);
            AlphaUpdateListener.updateVisibility(view, 4);
        }
        return NO_OP;
    }

    public void setViewBackgroundColor(ScrimView scrimView, int i4, TimeInterpolator timeInterpolator) {
        if (scrimView != null) {
            scrimView.setBackgroundColor(i4);
        }
    }
}
