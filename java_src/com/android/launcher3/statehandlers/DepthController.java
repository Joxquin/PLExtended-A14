package com.android.launcher3.statehandlers;

import W0.b;
import W0.c;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.FloatProperty;
import android.view.CrossWindowBlurListeners;
import android.view.View;
import android.view.ViewRootImpl;
import android.view.ViewTreeObserver;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.C0339g;
import com.android.launcher3.C0410q;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherRootView;
import com.android.launcher3.LauncherState;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.statehandlers.DepthController;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.quickstep.util.BaseDepthController;
import java.io.PrintWriter;
import java.util.function.Consumer;
import t.C1395a;
import y0.e;
/* loaded from: classes.dex */
public class DepthController extends BaseDepthController implements StateManager.StateHandler, BaseActivity.MultiWindowModeChangedListener {
    private final b mCrossWindowBlurListener;
    private boolean mIgnoreStateChangesDuringMultiWindowAnimation;
    private View.OnAttachStateChangeListener mOnAttachListener;
    private final W0.a mOnDrawListener;
    private final c mOpaquenessListener;

    /* JADX WARN: Type inference failed for: r1v1, types: [W0.a] */
    /* JADX WARN: Type inference failed for: r1v2, types: [W0.b] */
    /* JADX WARN: Type inference failed for: r1v3, types: [W0.c] */
    public DepthController(Launcher launcher) {
        super(launcher);
        this.mOnDrawListener = new ViewTreeObserver.OnDrawListener() { // from class: W0.a
            @Override // android.view.ViewTreeObserver.OnDrawListener
            public final void onDraw() {
                DepthController.c(DepthController.this);
            }
        };
        this.mCrossWindowBlurListener = new Consumer() { // from class: W0.b
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DepthController.this.setCrossWindowBlursEnabled(((Boolean) obj).booleanValue());
            }
        };
        this.mOpaquenessListener = new Runnable() { // from class: W0.c
            @Override // java.lang.Runnable
            public final void run() {
                DepthController.this.applyDepthAndBlur();
            }
        };
        this.mIgnoreStateChangesDuringMultiWindowAnimation = false;
    }

    public static void c(final DepthController depthController) {
        final DragLayer dragLayer = depthController.mLauncher.getDragLayer();
        ViewRootImpl viewRootImpl = dragLayer.getViewRootImpl();
        depthController.setSurface(viewRootImpl != null ? viewRootImpl.getSurfaceControl() : null);
        dragLayer.post(new Runnable() { // from class: W0.d
            @Override // java.lang.Runnable
            public final void run() {
                DepthController.d(DepthController.this, dragLayer);
            }
        });
    }

    public static /* synthetic */ void d(DepthController depthController, View view) {
        depthController.getClass();
        view.getViewTreeObserver().removeOnDrawListener(depthController.mOnDrawListener);
    }

    public static void h(DepthController depthController) {
        b bVar = depthController.mCrossWindowBlurListener;
        if (bVar != null) {
            CrossWindowBlurListeners.getInstance().removeListener(bVar);
        }
        c cVar = depthController.mOpaquenessListener;
        if (cVar != null) {
            depthController.mLauncher.getScrimView().removeOpaquenessListener(cVar);
        }
    }

    @Override // com.android.quickstep.util.BaseDepthController
    public final void applyDepthAndBlur() {
        if (this.mLauncher.getRootView() != null && this.mOnAttachListener == null) {
            LauncherRootView rootView = this.mLauncher.getRootView();
            View.OnAttachStateChangeListener onAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: com.android.launcher3.statehandlers.DepthController.1
                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewAttachedToWindow(View view) {
                    CrossWindowBlurListeners.getInstance().addListener(((BaseDepthController) DepthController.this).mLauncher.getMainExecutor(), DepthController.this.mCrossWindowBlurListener);
                    ((BaseDepthController) DepthController.this).mLauncher.getScrimView().addOpaquenessListener(DepthController.this.mOpaquenessListener);
                    DepthController.this.applyDepthAndBlur();
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewDetachedFromWindow(View view) {
                    DepthController.h(DepthController.this);
                }
            };
            this.mOnAttachListener = onAttachStateChangeListener;
            rootView.addOnAttachStateChangeListener(onAttachStateChangeListener);
            if (rootView.isAttachedToWindow()) {
                this.mOnAttachListener.onViewAttachedToWindow(rootView);
            }
        }
        super.applyDepthAndBlur();
    }

    public final void dispose() {
        b bVar = this.mCrossWindowBlurListener;
        if (bVar != null) {
            CrossWindowBlurListeners.getInstance().removeListener(bVar);
        }
        c cVar = this.mOpaquenessListener;
        if (cVar != null) {
            this.mLauncher.getScrimView().removeOpaquenessListener(cVar);
        }
        if (this.mLauncher.getRootView() == null || this.mOnAttachListener == null) {
            return;
        }
        this.mLauncher.getRootView().removeOnAttachStateChangeListener(this.mOnAttachListener);
        this.mOnAttachListener = null;
    }

    public final void dump(String str, PrintWriter printWriter) {
        StringBuilder a4 = C1395a.a(str);
        a4.append(getClass().getSimpleName());
        printWriter.println(a4.toString());
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\tmMaxBlurRadius=");
        StringBuilder c4 = C0410q.c(C0339g.a(sb, this.mMaxBlurRadius, printWriter, str, "\tmCrossWindowBlursEnabled="), this.mCrossWindowBlursEnabled, printWriter, str, "\tmSurface=");
        c4.append(this.mSurface);
        printWriter.println(c4.toString());
        printWriter.println(str + "\tmStateDepth=" + this.stateDepth.getValue());
        printWriter.println(str + "\tmWidgetDepth=" + this.widgetDepth.getValue());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append("\tmCurrentBlur=");
        StringBuilder c5 = C0410q.c(C0410q.c(C0410q.c(C0339g.a(sb2, this.mCurrentBlur, printWriter, str, "\tmInEarlyWakeUp="), this.mInEarlyWakeUp, printWriter, str, "\tmIgnoreStateChangesDuringMultiWindowAnimation="), this.mIgnoreStateChangesDuringMultiWindowAnimation, printWriter, str, "\tmPauseBlurs="), this.mPauseBlurs, printWriter, str, "\tmWaitingOnSurfaceValidity=");
        c5.append(this.mWaitingOnSurfaceValidity);
        printWriter.println(c5.toString());
    }

    @Override // com.android.quickstep.util.BaseDepthController
    public final void onInvalidSurface() {
        this.mLauncher.getDragLayer().getViewTreeObserver().addOnDrawListener(this.mOnDrawListener);
    }

    @Override // com.android.launcher3.BaseActivity.MultiWindowModeChangedListener
    public final void onMultiWindowModeChanged(boolean z4) {
        float depthUnchecked;
        this.mIgnoreStateChangesDuringMultiWindowAnimation = true;
        MultiPropertyFactory.MultiProperty multiProperty = this.stateDepth;
        FloatProperty floatProperty = MultiPropertyFactory.MULTI_PROPERTY_VALUE;
        float[] fArr = new float[1];
        LauncherState launcherState = (LauncherState) this.mLauncher.getStateManager().getState();
        Launcher launcher = this.mLauncher;
        if (z4) {
            launcherState.getClass();
            depthUnchecked = 0.0f;
        } else {
            depthUnchecked = launcherState.getDepthUnchecked(launcher);
        }
        fArr[0] = depthUnchecked;
        ObjectAnimator duration = ObjectAnimator.ofFloat(multiProperty, floatProperty, fArr).setDuration(300L);
        duration.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.statehandlers.DepthController.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                DepthController.this.mIgnoreStateChangesDuringMultiWindowAnimation = false;
            }
        });
        duration.setAutoCancel(true);
        duration.start();
    }

    public final void setActivityStarted(boolean z4) {
        W0.a aVar = this.mOnDrawListener;
        if (z4) {
            this.mLauncher.getDragLayer().getViewTreeObserver().addOnDrawListener(aVar);
            return;
        }
        this.mLauncher.getDragLayer().getViewTreeObserver().removeOnDrawListener(aVar);
        setSurface(null);
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public final void setState(Object obj) {
        LauncherState launcherState = (LauncherState) obj;
        if (this.mIgnoreStateChangesDuringMultiWindowAnimation) {
            return;
        }
        this.stateDepth.setValue(launcherState.getDepth(this.mLauncher));
        if (launcherState == LauncherState.BACKGROUND_APP) {
            this.mLauncher.getDragLayer().getViewTreeObserver().addOnDrawListener(this.mOnDrawListener);
        }
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public final void setStateWithAnimation(LauncherState launcherState, StateAnimationConfig stateAnimationConfig, PendingAnimation pendingAnimation) {
        if (stateAnimationConfig.hasAnimationFlag(4) || this.mIgnoreStateChangesDuringMultiWindowAnimation) {
            return;
        }
        pendingAnimation.setFloat(this.stateDepth, MultiPropertyFactory.MULTI_PROPERTY_VALUE, launcherState.getDepth(this.mLauncher), stateAnimationConfig.getInterpolator(13, e.f12949m));
    }
}
