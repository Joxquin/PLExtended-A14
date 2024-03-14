package com.android.quickstep.util;

import android.animation.ValueAnimator;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.SurfaceControl;
import android.window.IRemoteTransition;
import android.window.IRemoteTransitionFinishedCallback;
import android.window.TransitionInfo;
import android.window.WindowContainerTransaction;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.util.Executors;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class FadeOutRemoteTransition extends IRemoteTransition.Stub {
    public void mergeAnimation(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, IBinder mergeTarget, IRemoteTransitionFinishedCallback finishCB) {
        kotlin.jvm.internal.h.e(iBinder, "iBinder");
        kotlin.jvm.internal.h.e(transitionInfo, "transitionInfo");
        kotlin.jvm.internal.h.e(transaction, "transaction");
        kotlin.jvm.internal.h.e(mergeTarget, "mergeTarget");
        kotlin.jvm.internal.h.e(finishCB, "finishCB");
        try {
            finishCB.onTransitionFinished((WindowContainerTransaction) null, new SurfaceControl.Transaction());
        } catch (RemoteException unused) {
        }
    }

    public void startAnimation(IBinder transition, TransitionInfo info, SurfaceControl.Transaction startT, final IRemoteTransitionFinishedCallback finishCB) {
        kotlin.jvm.internal.h.e(transition, "transition");
        kotlin.jvm.internal.h.e(info, "info");
        kotlin.jvm.internal.h.e(startT, "startT");
        kotlin.jvm.internal.h.e(finishCB, "finishCB");
        final ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        final ArrayList arrayList = new ArrayList();
        for (TransitionInfo.Change change : info.getChanges()) {
            startT.show(change.getLeash());
            int mode = change.getMode();
            if (mode == 2 || mode == 4) {
                SurfaceControl leash = change.getLeash();
                kotlin.jvm.internal.h.d(leash, "chg.leash");
                arrayList.add(leash);
            }
        }
        startT.apply();
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.quickstep.util.FadeOutRemoteTransition$startAnimation$1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                List<SurfaceControl> list = arrayList;
                ValueAnimator valueAnimator2 = ofFloat;
                for (SurfaceControl surfaceControl : list) {
                    Object animatedValue = valueAnimator2.getAnimatedValue();
                    kotlin.jvm.internal.h.c(animatedValue, "null cannot be cast to non-null type kotlin.Float");
                    transaction.setAlpha(surfaceControl, ((Float) animatedValue).floatValue());
                }
                transaction.apply();
            }
        });
        ofFloat.addListener(AnimatorListeners.forEndCallback(new Runnable() { // from class: com.android.quickstep.util.FadeOutRemoteTransition$startAnimation$2
            @Override // java.lang.Runnable
            public final void run() {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                for (SurfaceControl surfaceControl : arrayList) {
                    transaction.hide(surfaceControl);
                }
                try {
                    finishCB.onTransitionFinished((WindowContainerTransaction) null, transaction);
                } catch (RemoteException unused) {
                }
            }
        }));
        Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.util.FadeOutRemoteTransition$startAnimation$3
            @Override // java.lang.Runnable
            public final void run() {
                ofFloat.start();
            }
        });
    }
}
