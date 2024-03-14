package com.android.wm.shell.common.magnetictarget;

import android.content.Context;
import android.graphics.PointF;
import android.os.VibrationAttributes;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.view.VelocityTracker;
import androidx.dynamicanimation.animation.h;
import androidx.dynamicanimation.animation.q;
import com.android.wm.shell.animation.g;
import com.android.wm.shell.animation.l;
import java.util.ArrayList;
import m3.s;
/* loaded from: classes.dex */
public abstract class d {
    private s animateStuckToTarget;
    private final l animator;
    private final ArrayList associatedTargets;
    private boolean flingToTargetEnabled;
    private float flingToTargetMinVelocity;
    private float flingToTargetWidthPercent;
    private float flingUnstuckFromTargetMinVelocity;
    private g flungIntoTargetSpringConfig;
    private boolean hapticsEnabled;
    public a magnetListener;
    private boolean movedBeyondSlop;
    private final int[] objectLocationOnScreen;
    private g springConfig;
    private float stickToTargetMaxXVelocity;
    private c targetObjectIsStuckTo;
    private PointF touchDown;
    private int touchSlop;
    private final Object underlyingObject;
    private final VelocityTracker velocityTracker;
    private final VibrationAttributes vibrationAttributes;
    private final Vibrator vibrator;
    private final q xProperty;
    private final q yProperty;

    public d(Context context, Object underlyingObject, h xProperty, h yProperty) {
        kotlin.jvm.internal.h.e(context, "context");
        kotlin.jvm.internal.h.e(underlyingObject, "underlyingObject");
        kotlin.jvm.internal.h.e(xProperty, "xProperty");
        kotlin.jvm.internal.h.e(yProperty, "yProperty");
        this.underlyingObject = underlyingObject;
        this.xProperty = xProperty;
        this.yProperty = yProperty;
        m3.l lVar = l.f6287m;
        this.animator = com.android.wm.shell.animation.c.a(underlyingObject);
        this.objectLocationOnScreen = new int[2];
        this.associatedTargets = new ArrayList();
        VelocityTracker obtain = VelocityTracker.obtain();
        kotlin.jvm.internal.h.d(obtain, "obtain()");
        this.velocityTracker = obtain;
        Object systemService = context.getSystemService("vibrator");
        kotlin.jvm.internal.h.c(systemService, "null cannot be cast to non-null type android.os.Vibrator");
        this.vibrator = (Vibrator) systemService;
        VibrationAttributes createForUsage = VibrationAttributes.createForUsage(18);
        kotlin.jvm.internal.h.d(createForUsage, "createForUsage(\n        …onAttributes.USAGE_TOUCH)");
        this.vibrationAttributes = createForUsage;
        this.touchDown = new PointF();
        this.animateStuckToTarget = new MagnetizedObject$animateStuckToTarget$1(this);
        this.flingToTargetEnabled = true;
        this.flingToTargetWidthPercent = 3.0f;
        this.flingToTargetMinVelocity = 4000.0f;
        this.flingUnstuckFromTargetMinVelocity = 4000.0f;
        this.stickToTargetMaxXVelocity = 2000.0f;
        this.hapticsEnabled = true;
        g gVar = new g(1500.0f, 1.0f);
        this.springConfig = gVar;
        this.flungIntoTargetSpringConfig = gVar;
    }

    public static final void access$animateStuckToTargetInternal(d dVar, c cVar, float f4, float f5, boolean z4, m3.a aVar) {
        dVar.getClass();
        cVar.f6344a.post(new b(cVar));
        Object obj = dVar.underlyingObject;
        int[] iArr = dVar.objectLocationOnScreen;
        dVar.getLocationOnScreen(obj, iArr);
        PointF pointF = cVar.f6346c;
        float width = (pointF.x - (dVar.getWidth(obj) / 2.0f)) - iArr[0];
        float height = (pointF.y - (dVar.getHeight(obj) / 2.0f)) - iArr[1];
        g gVar = z4 ? dVar.flungIntoTargetSpringConfig : dVar.springConfig;
        dVar.cancelAnimations$frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib();
        q qVar = dVar.xProperty;
        float value = qVar.getValue(obj) + width;
        l lVar = dVar.animator;
        lVar.g(qVar, value, f4, gVar);
        q qVar2 = dVar.yProperty;
        lVar.g(qVar2, qVar2.getValue(obj) + height, f5, gVar);
        if (aVar != null) {
            ArrayList arrayList = lVar.f6295h;
            ArrayList arrayList2 = new ArrayList();
            m3.a aVar2 = new m3.a[]{aVar}[0];
            if (aVar2 != null) {
                arrayList2.add(aVar2);
            }
            arrayList.addAll(arrayList2);
        }
        lVar.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void vibrateIfEnabled(int i4) {
        if (this.hapticsEnabled) {
            this.vibrator.vibrate(VibrationEffect.createPredefined(i4), this.vibrationAttributes);
        }
    }

    public final void addTarget(c target) {
        kotlin.jvm.internal.h.e(target, "target");
        this.associatedTargets.add(target);
        target.f6344a.post(new b(target));
    }

    public final void cancelAnimations$frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib() {
        this.animator.b(this.xProperty, this.yProperty);
    }

    public abstract float getHeight(Object obj);

    public abstract void getLocationOnScreen(Object obj, int[] iArr);

    public final a getMagnetListener() {
        a aVar = this.magnetListener;
        if (aVar != null) {
            return aVar;
        }
        kotlin.jvm.internal.h.g("magnetListener");
        throw null;
    }

    public final Object getUnderlyingObject() {
        return this.underlyingObject;
    }

    public abstract float getWidth(Object obj);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:125:0x022f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean maybeConsumeMotionEvent(android.view.MotionEvent r18) {
        /*
            Method dump skipped, instructions count: 605
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.common.magnetictarget.d.maybeConsumeMotionEvent(android.view.MotionEvent):boolean");
    }

    public final void setFlingToTargetMinVelocity() {
        this.flingToTargetMinVelocity = 6000.0f;
    }

    public final void setHapticsEnabled() {
        this.hapticsEnabled = true;
    }
}
