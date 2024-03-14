package com.google.android.apps.nexuslauncher.overlay;

import H1.g;
import U1.k;
import U1.l;
import U1.m;
import U1.n;
import U1.o;
import android.animation.ObjectAnimator;
import android.app.ActivityOptions;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.view.InputMonitor;
import android.view.MotionEvent;
import android.view.SurfaceControl;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.window.IRemoteTransition;
import android.window.IRemoteTransitionFinishedCallback;
import android.window.RemoteTransition;
import android.window.TransitionInfo;
import android.window.WindowContainerTransaction;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.RunnableList;
import com.android.quickstep.util.SurfaceTransaction;
import com.android.quickstep.util.SurfaceTransactionApplier;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import e3.f;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.h;
import m3.p;
import y0.e;
/* loaded from: classes.dex */
public final class SwipeTransition extends IRemoteTransition.Stub {
    private static final Matrix INVERSE_MATRIX;
    private final String TAG;
    private Workspace callbacks;
    private float carryForwardDisplacement;
    private final Context context;
    private boolean destroyed;
    private final PointF downPoint;
    private boolean dragStarted;
    private final RunnableList endCallbacks;
    private final Matrix evenTransform;
    private boolean finishingToTarget;
    private final boolean isOpeningNegOne;
    private final Lambda launcherTranslation;
    private float maxDisplacement;
    private final InputMonitor monitor;
    private final Lambda negOneTranslation;
    private final int slop;
    private SurfaceTransactionApplier surfaceTransactionApplier;
    private l targetInfo;
    private final AnimatedFloat taskDisplacement;
    private final Matrix tmpMatrix;
    private final float translationMultiplier;
    private final VelocityTracker vTracker;
    private float xAtDragStart;
    private static final p IDENTITY_TRANSLATION = new p() { // from class: com.google.android.apps.nexuslauncher.overlay.SwipeTransition$Companion$IDENTITY_TRANSLATION$1
        @Override // m3.p
        public final Object invoke(Object obj, Object obj2) {
            float floatValue = ((Number) obj).floatValue();
            ((Number) obj2).floatValue();
            return Float.valueOf(floatValue);
        }
    };
    private static final p REVERSE_TRANSLATION = new p() { // from class: com.google.android.apps.nexuslauncher.overlay.SwipeTransition$Companion$REVERSE_TRANSLATION$1
        @Override // m3.p
        public final Object invoke(Object obj, Object obj2) {
            return Float.valueOf(((Number) obj2).floatValue() - ((Number) obj).floatValue());
        }
    };

    static {
        Matrix matrix = new Matrix();
        matrix.setScale(-1.0f, 1.0f);
        INVERSE_MATRIX = matrix;
    }

    public SwipeTransition(Context context, InputMonitor inputMonitor, boolean z4, Matrix matrix) {
        h.e(context, "context");
        this.context = context;
        this.monitor = inputMonitor;
        this.isOpeningNegOne = z4;
        this.evenTransform = matrix;
        this.TAG = "SwipeTransition";
        this.taskDisplacement = new AnimatedFloat(new m(this, 1));
        this.maxDisplacement = ((DisplayController) DisplayController.INSTANCE.get(context)).getInfo().currentSize.x;
        this.vTracker = VelocityTracker.obtain();
        this.slop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.endCallbacks = new RunnableList();
        this.tmpMatrix = new Matrix();
        p pVar = IDENTITY_TRANSLATION;
        p pVar2 = REVERSE_TRANSLATION;
        this.launcherTranslation = (Lambda) (z4 ? pVar : pVar2);
        this.negOneTranslation = (Lambda) (z4 ? pVar2 : pVar);
        this.translationMultiplier = Utilities.isRtl(context.getResources()) ? 1.0f : -1.0f;
        this.downPoint = new PointF();
    }

    public static final void access$onAnimationFinished(SwipeTransition swipeTransition, boolean z4) {
        swipeTransition.finishingToTarget = z4;
        swipeTransition.endHandler();
    }

    public final void endHandler() {
        this.destroyed = true;
        this.vTracker.recycle();
        this.endCallbacks.executeAllAndDestroy();
        finishTargets();
    }

    private final void finishTargets() {
        WindowContainerTransaction windowContainerTransaction;
        Workspace workspace = this.callbacks;
        if (workspace != null) {
            workspace.onOverlayScrollChanged(0.0f);
        }
        l lVar = this.targetInfo;
        if (lVar == null) {
            return;
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        boolean z4 = this.finishingToTarget;
        TransitionInfo.Change change = lVar.f1763b;
        if (z4) {
            transaction.hide(change.getLeash());
            windowContainerTransaction = null;
        } else {
            windowContainerTransaction = new WindowContainerTransaction();
            TransitionInfo.Change change2 = lVar.f1762a;
            windowContainerTransaction.reorder(change2.getContainer(), false);
            windowContainerTransaction.reorder(change.getContainer(), true);
            transaction.hide(change2.getLeash());
            transaction.show(change.getLeash());
            MainThreadInitializedObject mainThreadInitializedObject = k.f1754k;
            ((k) k.f1754k.get(this.context)).b(transaction, change);
        }
        MainThreadInitializedObject mainThreadInitializedObject2 = k.f1754k;
        ((k) k.f1754k.get(this.context)).b(transaction, lVar.f1764c);
        try {
            lVar.f1765d.onTransitionFinished(windowContainerTransaction, transaction);
        } catch (RemoteException e4) {
            Log.e("TargetInfo", "Failed to finish transition ", e4);
        }
        this.targetInfo = null;
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [m3.p, kotlin.jvm.internal.Lambda] */
    /* JADX WARN: Type inference failed for: r3v0, types: [m3.p, kotlin.jvm.internal.Lambda] */
    public final void onTaskMovementChanged() {
        f fVar;
        Workspace workspace = this.callbacks;
        if (workspace != null) {
            int width = workspace.getWidth();
            if (1 >= width) {
                width = 1;
            }
            float f4 = width;
            workspace.onOverlayScrollChanged(((Number) this.launcherTranslation.invoke(Float.valueOf(this.taskDisplacement.value), Float.valueOf(f4))).floatValue() / f4);
        }
        l lVar = this.targetInfo;
        if (lVar != null) {
            SurfaceTransaction surfaceTransaction = new SurfaceTransaction();
            this.tmpMatrix.setTranslate(((Number) this.negOneTranslation.invoke(Float.valueOf(this.taskDisplacement.value), Float.valueOf(this.maxDisplacement))).floatValue() * this.translationMultiplier, 0.0f);
            surfaceTransaction.forSurface(lVar.f1764c.getLeash()).setMatrix(this.tmpMatrix);
            SurfaceTransactionApplier surfaceTransactionApplier = this.surfaceTransactionApplier;
            if (surfaceTransactionApplier != null) {
                surfaceTransactionApplier.scheduleApply(surfaceTransaction);
                fVar = f.f9037a;
            } else {
                fVar = null;
            }
            if (fVar == null) {
                surfaceTransaction.getTransaction().apply();
            }
        }
    }

    public final Context getContext() {
        return this.context;
    }

    public final RunnableList getEndCallbacks() {
        return this.endCallbacks;
    }

    public final void mergeAnimation(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, IBinder mergeTarget, IRemoteTransitionFinishedCallback finishedCallback) {
        h.e(iBinder, "iBinder");
        h.e(transitionInfo, "transitionInfo");
        h.e(transaction, "transaction");
        h.e(mergeTarget, "mergeTarget");
        h.e(finishedCallback, "finishedCallback");
        Executors.MAIN_EXECUTOR.execute(new m(this, 0));
    }

    public final void onMotionEvent(MotionEvent ev) {
        boolean z4;
        TransitionInfo.Change change;
        Rect startAbsBounds;
        h.e(ev, "ev");
        if (this.destroyed) {
            return;
        }
        Matrix matrix = this.evenTransform;
        if (matrix != null) {
            ev.transform(matrix);
        }
        this.vTracker.addMovement(ev);
        int action = ev.getAction();
        if (action == 0) {
            if (!this.dragStarted) {
                this.downPoint.set(ev.getX(), ev.getY());
                return;
            }
            this.xAtDragStart = ev.getX();
            AnimatedFloat animatedFloat = this.taskDisplacement;
            this.carryForwardDisplacement = animatedFloat.value;
            animatedFloat.cancelAnimation();
            this.monitor.pilferPointers();
            return;
        }
        if (action == 1) {
            this.vTracker.computeCurrentVelocity(1000);
            float xVelocity = this.vTracker.getXVelocity();
            boolean z5 = Math.abs(xVelocity) > ((float) this.context.getResources().getDimensionPixelSize(R.dimen.fling_threshold_velocity));
            l lVar = this.targetInfo;
            int width = (lVar == null || (change = lVar.f1762a) == null || (startAbsBounds = change.getStartAbsBounds()) == null) ? ((DisplayController) DisplayController.INSTANCE.get(this.context)).getInfo().realBounds.bounds.width() : startAbsBounds.width();
            if (z5) {
                z4 = xVelocity < 0.0f;
                if (xVelocity <= 0.0f) {
                    r1 = width;
                }
            } else {
                float f4 = width;
                z4 = this.taskDisplacement.value > f4 / ((float) 2);
                if (z4) {
                    r1 = f4;
                }
            }
            ObjectAnimator animateToValue = this.taskDisplacement.animateToValue(r1);
            h.d(animateToValue, "taskDisplacement.animateToValue(endValue)");
            animateToValue.addListener(AnimatorListeners.forSuccessCallback(new n(this, z4)));
            if (z5) {
                float f5 = this.taskDisplacement.value - r1;
                float f6 = width;
                float abs = Math.abs(f5 / f6);
                if (1.0f <= abs) {
                    abs = 1.0f;
                }
                float sin = ((f6 * ((float) Math.sin((abs - 0.5f) * 0.4712389f))) / 2.0f) + (f6 / 2.0f);
                float dimension = this.context.getResources().getDimension(R.dimen.min_page_snap_velocity);
                float abs2 = Math.abs(xVelocity);
                if (dimension < abs2) {
                    dimension = abs2;
                }
                long j4 = 4;
                double abs3 = Math.abs(sin / dimension) * 1000;
                if (Double.isNaN(abs3)) {
                    throw new IllegalArgumentException("Cannot round NaN value.");
                }
                animateToValue.setDuration(Math.round(abs3) * j4);
                animateToValue.setInterpolator(e.f12935I);
            }
            animateToValue.start();
        } else if (action != 2) {
            if (action != 3) {
                return;
            }
            this.finishingToTarget = false;
            endHandler();
        } else if (this.dragStarted) {
            float x4 = (this.carryForwardDisplacement + this.xAtDragStart) - ev.getX();
            AnimatedFloat animatedFloat2 = this.taskDisplacement;
            float f7 = this.maxDisplacement;
            r1 = 0.0f < x4 ? x4 : 0.0f;
            if (f7 > r1) {
                f7 = r1;
            }
            animatedFloat2.updateValue(f7);
        } else {
            float x5 = this.downPoint.x - ev.getX();
            float abs4 = Math.abs(this.downPoint.y - ev.getY());
            if (abs4 > x5 && abs4 > this.slop) {
                endHandler();
                return;
            }
            float f8 = this.slop;
            if (x5 <= f8 || x5 <= abs4) {
                return;
            }
            this.xAtDragStart = this.downPoint.x - f8;
            this.dragStarted = true;
            if (!this.isOpeningNegOne) {
                this.monitor.pilferPointers();
                Intent homeIntent = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").setFlags(268435456).setComponent(new ComponentName(this.context, NexusLauncherActivity.class));
                h.d(homeIntent, "homeIntent");
                startActivity(homeIntent);
            }
            float x6 = this.xAtDragStart - ev.getX();
            AnimatedFloat animatedFloat3 = this.taskDisplacement;
            float f9 = this.maxDisplacement;
            r1 = 0.0f < x6 ? x6 : 0.0f;
            if (f9 > r1) {
                f9 = r1;
            }
            animatedFloat3.updateValue(f9);
        }
    }

    public final void onTargetReceived(l targetInfo) {
        h.e(targetInfo, "targetInfo");
        this.targetInfo = targetInfo;
        this.maxDisplacement = targetInfo.f1764c.getEndAbsBounds().right;
        if (this.destroyed) {
            finishTargets();
        } else {
            onTaskMovementChanged();
        }
    }

    public final void setCallbacks(Workspace workspace) {
        this.callbacks = workspace;
        this.surfaceTransactionApplier = workspace != null ? new SurfaceTransactionApplier(workspace) : null;
        if (!this.dragStarted || this.destroyed) {
            return;
        }
        onTaskMovementChanged();
    }

    public final void setDragStarted() {
        this.dragStarted = true;
    }

    public final void startActivity(Intent intent) {
        ActivityOptions makeRemoteTransition = ActivityOptions.makeRemoteTransition(new RemoteTransition(this, (String) null));
        makeRemoteTransition.setTransientLaunch();
        Executors.UI_HELPER_EXECUTOR.execute(new o(this, intent, makeRemoteTransition));
    }

    public final void startAnimation(IBinder transition, TransitionInfo info, SurfaceControl.Transaction startT, IRemoteTransitionFinishedCallback finishCB) {
        h.e(transition, "transition");
        h.e(info, "info");
        h.e(startT, "startT");
        h.e(finishCB, "finishCB");
        TransitionInfo.Change change = null;
        TransitionInfo.Change change2 = null;
        for (TransitionInfo.Change change3 : info.getChanges()) {
            if (change3.getTaskInfo() != null) {
                int mode = change3.getMode();
                boolean z4 = false;
                if ((mode == 1 || mode == 3 || mode == 7) && change == null) {
                    change = change3;
                } else {
                    int mode2 = change3.getMode();
                    if (((mode2 == 2 || mode2 == 4) ? true : true) && change2 == null) {
                        change2 = change3;
                    }
                }
            }
        }
        if (change == null || change2 == null) {
            startT.apply();
            try {
                finishCB.onTransitionFinished((WindowContainerTransaction) null, (SurfaceControl.Transaction) null);
                return;
            } catch (RemoteException e4) {
                Log.e(this.TAG, "Failed to finish transition", e4);
                return;
            }
        }
        boolean z5 = this.isOpeningNegOne;
        TransitionInfo.Change change4 = z5 ? change : change2;
        TransitionInfo.Change change5 = z5 ? change2 : change;
        startT.reparent(this.monitor.getSurface(), info.getRoot(g.b(change4, info)).getLeash());
        startT.show(change.getLeash());
        startT.show(change2.getLeash());
        startT.setAlpha(change.getLeash(), 1.0f);
        startT.setAlpha(change2.getLeash(), 1.0f);
        startT.setPosition(change.getLeash(), 0.0f, 0.0f);
        startT.setPosition(change2.getLeash(), 0.0f, 0.0f);
        startT.setPosition(change5.getLeash(), 0.0f, 0.0f);
        startT.setLayer(change4.getLeash(), 30);
        startT.setLayer(change5.getLeash(), 10);
        if (this.isOpeningNegOne) {
            this.tmpMatrix.setTranslate(-change4.getEndAbsBounds().right, 0.0f);
            startT.setMatrix(change4.getLeash(), this.tmpMatrix, new float[9]);
        }
        startT.apply();
        Executors.MAIN_EXECUTOR.execute(new U1.p(this, new l(change, change2, change5, change4, finishCB)));
    }
}
