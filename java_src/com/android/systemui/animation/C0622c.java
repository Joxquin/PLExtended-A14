package com.android.systemui.animation;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import android.view.IRemoteAnimationFinishedCallback;
import android.view.RemoteAnimationTarget;
import android.view.SyncRtSurfaceTransactionApplier;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import android.view.ViewOverlay;
import com.android.internal.policy.ScreenDecorationsUtils;
import com.android.launcher3.J0;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;
/* renamed from: com.android.systemui.animation.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0622c implements v {

    /* renamed from: a  reason: collision with root package name */
    public final d f6044a;

    /* renamed from: b  reason: collision with root package name */
    public final J0 f6045b;

    /* renamed from: c  reason: collision with root package name */
    public final e f6046c;

    /* renamed from: d  reason: collision with root package name */
    public final s f6047d;

    /* renamed from: e  reason: collision with root package name */
    public final Context f6048e;

    /* renamed from: f  reason: collision with root package name */
    public final View f6049f;

    /* renamed from: g  reason: collision with root package name */
    public final SyncRtSurfaceTransactionApplier f6050g;

    /* renamed from: h  reason: collision with root package name */
    public final Handler f6051h;

    /* renamed from: i  reason: collision with root package name */
    public final Matrix f6052i;

    /* renamed from: j  reason: collision with root package name */
    public final Matrix f6053j;

    /* renamed from: k  reason: collision with root package name */
    public final Rect f6054k;

    /* renamed from: l  reason: collision with root package name */
    public final RectF f6055l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f6056m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f6057n;

    /* renamed from: o  reason: collision with root package name */
    public r f6058o;

    /* renamed from: p  reason: collision with root package name */
    public final RunnableC0620a f6059p;

    public C0622c(d dVar, J0 j02, e eVar, s launchAnimator, boolean z4) {
        kotlin.jvm.internal.h.e(launchAnimator, "launchAnimator");
        this.f6044a = dVar;
        this.f6045b = j02;
        this.f6046c = eVar;
        this.f6047d = launchAnimator;
        g gVar = (g) dVar;
        this.f6048e = gVar.getLaunchContainer().getContext();
        View openingWindowSyncView = gVar.getOpeningWindowSyncView();
        openingWindowSyncView = openingWindowSyncView == null ? gVar.getLaunchContainer() : openingWindowSyncView;
        this.f6049f = openingWindowSyncView;
        this.f6050g = new SyncRtSurfaceTransactionApplier(openingWindowSyncView);
        this.f6051h = !z4 ? new Handler(Looper.getMainLooper()) : null;
        this.f6052i = new Matrix();
        this.f6053j = new Matrix();
        this.f6054k = new Rect();
        this.f6055l = new RectF();
        this.f6059p = new RunnableC0620a(0, this);
    }

    @Override // com.android.systemui.animation.v
    public final void onAnimationCancelled() {
        if (this.f6056m) {
            return;
        }
        Log.i("ActivityLaunchAnimator", "Remote animation was cancelled");
        this.f6057n = true;
        Handler handler = this.f6051h;
        if (handler != null) {
            handler.removeCallbacks(this.f6059p);
        }
        r rVar = this.f6058o;
        if (rVar != null) {
            rVar.f6137a.element = true;
            rVar.f6138b.cancel();
        }
        if (f.f6062c) {
            Log.d("ActivityLaunchAnimator", "Calling controller.onLaunchAnimationCancelled() [remote animation cancelled]");
        }
        this.f6044a.onLaunchAnimationCancelled(null);
        e eVar = this.f6046c;
        if (eVar != null) {
            eVar.b();
        }
    }

    @Override // com.android.systemui.animation.v
    public final void onAnimationStart(int i4, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback) {
        RemoteAnimationTarget remoteAnimationTarget;
        RemoteAnimationTarget remoteAnimationTarget2;
        int i5;
        int i6;
        RunnableC0620a runnableC0620a = this.f6059p;
        Handler handler = this.f6051h;
        if (handler != null) {
            handler.removeCallbacks(runnableC0620a);
        }
        if (this.f6056m) {
            if (iRemoteAnimationFinishedCallback != null) {
                try {
                    iRemoteAnimationFinishedCallback.onAnimationFinished();
                } catch (RemoteException e4) {
                    e4.printStackTrace();
                }
            }
        } else if (!this.f6057n) {
            if (remoteAnimationTargetArr != null) {
                RemoteAnimationTarget remoteAnimationTarget3 = null;
                int i7 = 0;
                while (true) {
                    if (!(i7 < remoteAnimationTargetArr.length)) {
                        remoteAnimationTarget = remoteAnimationTarget3;
                        break;
                    }
                    int i8 = i7 + 1;
                    try {
                        remoteAnimationTarget = remoteAnimationTargetArr[i7];
                        if (remoteAnimationTarget.mode == 0) {
                            if (remoteAnimationTarget.taskInfo != null && !remoteAnimationTarget.hasAnimatingParent) {
                                break;
                            } else if (remoteAnimationTarget3 == null) {
                                remoteAnimationTarget3 = remoteAnimationTarget;
                            }
                        }
                        i7 = i8;
                    } catch (ArrayIndexOutOfBoundsException e5) {
                        throw new NoSuchElementException(e5.getMessage());
                    }
                }
            } else {
                remoteAnimationTarget = null;
            }
            d dVar = this.f6044a;
            if (remoteAnimationTarget == null) {
                Log.i("ActivityLaunchAnimator", "Aborting the animation as no window is opening");
                if (handler != null) {
                    handler.removeCallbacks(runnableC0620a);
                }
                if (iRemoteAnimationFinishedCallback != null) {
                    try {
                        iRemoteAnimationFinishedCallback.onAnimationFinished();
                    } catch (RemoteException e6) {
                        e6.printStackTrace();
                    }
                }
                if (f.f6062c) {
                    Log.d("ActivityLaunchAnimator", "Calling controller.onLaunchAnimationCancelled() [no window opening]");
                }
                dVar.onLaunchAnimationCancelled(null);
                e eVar = this.f6046c;
                if (eVar != null) {
                    eVar.b();
                    return;
                }
                return;
            }
            if (remoteAnimationTargetArr3 != null) {
                for (RemoteAnimationTarget remoteAnimationTarget4 : remoteAnimationTargetArr3) {
                    if (remoteAnimationTarget4.windowType == 2019) {
                        remoteAnimationTarget2 = remoteAnimationTarget4;
                        break;
                    }
                }
            }
            remoteAnimationTarget2 = null;
            Rect rect = remoteAnimationTarget.screenSpaceBounds;
            n nVar = new n(rect.top, rect.bottom, rect.left, rect.right, 0.0f, 0.0f, 48);
            int a4 = remoteAnimationTarget.taskInfo != null ? this.f6045b.a() : remoteAnimationTarget.backgroundColor;
            ViewGroup launchContainer = dVar.getLaunchContainer();
            s sVar = this.f6047d;
            float windowCornerRadius = sVar.a(launchContainer, nVar) ? ScreenDecorationsUtils.getWindowCornerRadius(this.f6048e) : 0.0f;
            nVar.f6095e = windowCornerRadius;
            nVar.f6096f = windowCornerRadius;
            C0621b c0621b = new C0621b(this.f6044a, this, iRemoteAnimationFinishedCallback, remoteAnimationTarget, remoteAnimationTarget2);
            boolean z4 = !c0621b.isBelowAnimatingWindow();
            boolean z5 = !c0621b.isBelowAnimatingWindow();
            n createAnimatorState = c0621b.createAnimatorState();
            int i9 = createAnimatorState.f6091a;
            int i10 = createAnimatorState.f6092b;
            float f4 = (i5 + i6) / 2.0f;
            int i11 = createAnimatorState.f6094d - createAnimatorState.f6093c;
            float f5 = createAnimatorState.f6095e;
            float f6 = createAnimatorState.f6096f;
            Ref$IntRef ref$IntRef = new Ref$IntRef();
            ref$IntRef.element = nVar.f6091a;
            Ref$IntRef ref$IntRef2 = new Ref$IntRef();
            ref$IntRef2.element = nVar.f6092b;
            Ref$IntRef ref$IntRef3 = new Ref$IntRef();
            ref$IntRef3.element = nVar.f6093c;
            Ref$IntRef ref$IntRef4 = new Ref$IntRef();
            ref$IntRef4.element = nVar.f6094d;
            Ref$FloatRef ref$FloatRef = new Ref$FloatRef();
            ref$FloatRef.element = (ref$IntRef3.element + ref$IntRef4.element) / 2.0f;
            Ref$IntRef ref$IntRef5 = new Ref$IntRef();
            ref$IntRef5.element = ref$IntRef4.element - ref$IntRef3.element;
            float f7 = nVar.f6095e;
            float f8 = nVar.f6096f;
            ViewGroup launchContainer2 = c0621b.getLaunchContainer();
            boolean a5 = sVar.a(launchContainer2, nVar);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(a4);
            gradientDrawable.setAlpha(0);
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            ofFloat.setDuration(sVar.f6140a.f6098a);
            ofFloat.setInterpolator(y0.e.f12949m);
            View openingWindowSyncView = c0621b.getOpeningWindowSyncView();
            ViewOverlay overlay = openingWindowSyncView != null ? openingWindowSyncView.getOverlay() : null;
            boolean z6 = (openingWindowSyncView == null || kotlin.jvm.internal.h.a(openingWindowSyncView.getViewRootImpl(), c0621b.getLaunchContainer().getViewRootImpl())) ? false : true;
            ViewGroupOverlay overlay2 = launchContainer2.getOverlay();
            Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
            Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
            ofFloat.addListener(new p(c0621b, a5, overlay2, gradientDrawable, z6, overlay));
            ofFloat.addUpdateListener(new q(ref$BooleanRef, sVar, f4, ref$FloatRef, i11, ref$IntRef5, createAnimatorState, i9, ref$IntRef, i10, ref$IntRef2, f5, f7, f6, f8, z6, ref$BooleanRef2, overlay2, gradientDrawable, overlay, launchContainer2, openingWindowSyncView, c0621b, z4, z5, nVar, ref$IntRef3, ref$IntRef4));
            ofFloat.start();
            this.f6058o = new r(ref$BooleanRef, ofFloat);
        }
    }
}
