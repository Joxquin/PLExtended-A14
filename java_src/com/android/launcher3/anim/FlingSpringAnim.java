package com.android.launcher3.anim;

import android.content.Context;
import androidx.dynamicanimation.animation.m;
import androidx.dynamicanimation.animation.o;
import androidx.dynamicanimation.animation.q;
import androidx.dynamicanimation.animation.s;
import androidx.dynamicanimation.animation.t;
import com.android.launcher3.util.DynamicResource;
import com.android.quickstep.util.F;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class FlingSpringAnim {
    private final o mFlingAnim;
    private final boolean mSkipFlingAnim;
    private s mSpringAnim;
    private float mTargetPosition;

    public FlingSpringAnim(final Object obj, Context context, final q qVar, float f4, float f5, float f6, float f7, float f8, float f9, final float f10, final float f11, final F f12) {
        float f13 = DynamicResource.provider(context).getFloat(R.dimen.swipe_up_rect_xy_fling_friction);
        o oVar = new o(qVar, obj);
        if (f13 <= 0.0f) {
            throw new IllegalArgumentException("Friction must be positive");
        }
        oVar.f3209x.f3206a = f13 * (-4.2f);
        oVar.e(f7);
        oVar.f3194a = f6;
        oVar.f3201h = f8;
        oVar.f3200g = f9;
        this.mFlingAnim = oVar;
        this.mTargetPosition = f5;
        this.mSkipFlingAnim = (f4 <= f8 && f6 < 0.0f) || (f4 >= f9 && f6 > 0.0f);
        oVar.a(new androidx.dynamicanimation.animation.j() { // from class: com.android.launcher3.anim.h
            @Override // androidx.dynamicanimation.animation.j
            public final void onAnimationEnd(m mVar, boolean z4, float f14, float f15) {
                FlingSpringAnim.a(FlingSpringAnim.this, obj, qVar, f11, f10, f12, f14, f15);
            }
        });
    }

    public static void a(FlingSpringAnim flingSpringAnim, Object obj, q qVar, float f4, float f5, androidx.dynamicanimation.animation.j jVar, float f6, float f7) {
        flingSpringAnim.getClass();
        s sVar = new s(qVar, obj);
        sVar.f3195b = f6;
        sVar.f3196c = true;
        sVar.f3194a = f7;
        t tVar = new t(flingSpringAnim.mTargetPosition);
        tVar.b(f4);
        tVar.a(f5);
        sVar.f3211x = tVar;
        flingSpringAnim.mSpringAnim = sVar;
        sVar.a(jVar);
        flingSpringAnim.mSpringAnim.j(flingSpringAnim.mTargetPosition);
    }

    public final void end() {
        this.mFlingAnim.b();
        s sVar = this.mSpringAnim;
        if (sVar.f3211x.f3215b > 0.0d) {
            sVar.k();
        }
    }

    public final float getTargetPosition() {
        return this.mTargetPosition;
    }

    public final void start() {
        o oVar = this.mFlingAnim;
        oVar.h();
        if (this.mSkipFlingAnim) {
            oVar.b();
        }
    }

    public final void updatePosition(float f4, float f5) {
        float min = Math.min(f4, f5);
        o oVar = this.mFlingAnim;
        oVar.f3201h = min;
        oVar.f3200g = Math.max(f4, f5);
        this.mTargetPosition = f5;
        s sVar = this.mSpringAnim;
        if (sVar != null) {
            sVar.j(f5);
        }
    }
}
