package com.android.systemui.shared.system;

import android.os.IBinder;
import android.os.RemoteException;
import android.util.ArrayMap;
import android.util.Log;
import android.view.IRemoteAnimationFinishedCallback;
import android.view.IRemoteAnimationRunner;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.window.IRemoteTransition;
import android.window.IRemoteTransitionFinishedCallback;
import android.window.TransitionInfo;
import android.window.WindowContainerTransaction;
/* loaded from: classes.dex */
public abstract class RemoteAnimationRunnerCompat extends IRemoteAnimationRunner.Stub {
    private static final String TAG = "RemoteAnimRunnerCompat";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.systemui.shared.system.RemoteAnimationRunnerCompat$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends IRemoteTransition.Stub {
        final ArrayMap mFinishRunnables = new ArrayMap();
        final /* synthetic */ IRemoteAnimationRunner val$runner;

        public AnonymousClass1(IRemoteAnimationRunner iRemoteAnimationRunner) {
            this.val$runner = iRemoteAnimationRunner;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void lambda$startAnimation$0(H1.a aVar, H1.a aVar2, TransitionInfo transitionInfo, ArrayMap arrayMap, IRemoteTransitionFinishedCallback iRemoteTransitionFinishedCallback) {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            SurfaceControl surfaceControl = aVar.f532a;
            if (surfaceControl != null) {
                transaction.remove(surfaceControl);
            }
            SurfaceControl surfaceControl2 = aVar2.f532a;
            if (surfaceControl2 != null) {
                transaction.remove(surfaceControl2);
            }
            transitionInfo.releaseAllSurfaces();
            arrayMap.clear();
            try {
                iRemoteTransitionFinishedCallback.onTransitionFinished((WindowContainerTransaction) null, transaction);
                transaction.close();
            } catch (RemoteException e4) {
                Log.e(RemoteAnimationRunnerCompat.TAG, "Failed to call app controlled animation finished callback", e4);
            }
        }

        public void mergeAnimation(IBinder iBinder, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, IBinder iBinder2, IRemoteTransitionFinishedCallback iRemoteTransitionFinishedCallback) {
            Runnable runnable;
            synchronized (this.mFinishRunnables) {
                runnable = (Runnable) this.mFinishRunnables.remove(iBinder2);
            }
            transaction.close();
            transitionInfo.releaseAllSurfaces();
            if (runnable == null) {
                return;
            }
            this.val$runner.onAnimationCancelled();
            runnable.run();
        }

        /* JADX WARN: Removed duplicated region for block: B:98:0x024e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void startAnimation(final android.os.IBinder r25, final android.window.TransitionInfo r26, android.view.SurfaceControl.Transaction r27, final android.window.IRemoteTransitionFinishedCallback r28) {
            /*
                Method dump skipped, instructions count: 617
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.shared.system.RemoteAnimationRunnerCompat.AnonymousClass1.startAnimation(android.os.IBinder, android.window.TransitionInfo, android.view.SurfaceControl$Transaction, android.window.IRemoteTransitionFinishedCallback):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onAnimationStart$0(IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback) {
        try {
            iRemoteAnimationFinishedCallback.onAnimationFinished();
        } catch (RemoteException e4) {
            Log.e(TAG, "Failed to call app controlled animation finished callback", e4);
        }
    }

    public static IRemoteTransition.Stub wrap(IRemoteAnimationRunner iRemoteAnimationRunner) {
        return new AnonymousClass1(iRemoteAnimationRunner);
    }

    public final void onAnimationStart(int i4, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, final IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback) {
        onAnimationStart(i4, remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, new Runnable() { // from class: com.android.systemui.shared.system.a
            @Override // java.lang.Runnable
            public final void run() {
                RemoteAnimationRunnerCompat.lambda$onAnimationStart$0(iRemoteAnimationFinishedCallback);
            }
        });
    }

    public abstract void onAnimationStart(int i4, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, Runnable runnable);

    public IRemoteTransition toRemoteTransition() {
        return wrap(this);
    }
}
