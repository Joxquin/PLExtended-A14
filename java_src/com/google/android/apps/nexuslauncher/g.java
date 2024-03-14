package com.google.android.apps.nexuslauncher;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.view.RemoteAnimationTarget;
import com.android.launcher3.LauncherAnimationRunner;
import com.android.launcher3.LauncherState;
import com.android.launcher3.QuickstepTransitionManager;
import com.android.launcher3.Workspace;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.quickstep.util.SurfaceTransactionApplier;
import com.google.android.apps.nexuslauncher.v;
import java.util.function.Consumer;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class g implements LauncherAnimationRunner.RemoteAnimationFactory {

    /* renamed from: a  reason: collision with root package name */
    public AnimatorSet f7350a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ h f7351b;

    public g(h hVar) {
        this.f7351b = hVar;
    }

    @Override // com.android.launcher3.LauncherAnimationRunner.RemoteAnimationFactory, com.android.systemui.animation.v
    public final void onAnimationCancelled() {
        AnimatorSet animatorSet = this.f7350a;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    @Override // com.android.launcher3.LauncherAnimationRunner.RemoteAnimationFactory, com.android.systemui.animation.v
    public final void onAnimationStart(int i4, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, LauncherAnimationRunner.AnimationResult animationResult) {
        RemoteAnimationTarget remoteAnimationTarget;
        DragLayer mDragLayer;
        if (remoteAnimationTargetArr != null) {
            int length = remoteAnimationTargetArr.length;
            for (int i5 = 0; i5 < length; i5++) {
                remoteAnimationTarget = remoteAnimationTargetArr[i5];
                if (remoteAnimationTarget.taskInfo.topActivityType == 5) {
                    break;
                }
            }
        }
        remoteAnimationTarget = null;
        h hVar = this.f7351b;
        if (remoteAnimationTarget == null || !hVar.f7352d.isInState(LauncherState.NORMAL)) {
            if (animationResult != null) {
                animationResult.setAnimation(null, hVar.f7352d, null, true);
                return;
            }
            return;
        }
        mDragLayer = ((QuickstepTransitionManager) hVar).mDragLayer;
        kotlin.jvm.internal.h.d(mDragLayer, "mDragLayer");
        final Q1.d dVar = hVar.f7353e;
        dVar.getClass();
        dVar.f1613b.addLog("playAnimation");
        NexusLauncherActivity nexusLauncherActivity = dVar.f1612a;
        nexusLauncherActivity.getAnimationCoordinator().setAnimation(dVar, new Consumer() { // from class: Q1.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                PendingAnimation p02 = (PendingAnimation) obj;
                h.e(p02, "p0");
                d dVar2 = d.this;
                dVar2.f1613b.addLog("onCreateDreamAnimation");
                v vVar = v.f7624a;
                Workspace workspace = dVar2.f1612a.getWorkspace();
                h.d(workspace, "launcher.workspace");
                vVar.b(p02, v.c(workspace), null, dVar2.f1612a, false, 0.37111112f);
            }
        }, 450L);
        SurfaceTransactionApplier surfaceTransactionApplier = new SurfaceTransactionApplier(mDragLayer);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setInterpolator(y0.e.f12949m);
        ofFloat.setDuration(250L);
        ofFloat.setStartDelay(200L);
        ofFloat.addUpdateListener(new Q1.b(surfaceTransactionApplier, remoteAnimationTarget));
        AnimatorPlaybackController playbackController = nexusLauncherActivity.getAnimationCoordinator().getPlaybackController(dVar);
        if (playbackController != null) {
            playbackController.setPlayFraction(1.0f);
            playbackController.reverse();
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ofFloat);
        animatorSet.addListener(new Q1.c(dVar));
        if (animationResult != null) {
            animationResult.setAnimation(animatorSet, hVar.f7352d, null, true);
        }
        this.f7350a = animatorSet;
    }
}
