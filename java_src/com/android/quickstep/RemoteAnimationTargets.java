package com.android.quickstep;

import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import com.android.quickstep.RemoteAnimationTargets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public class RemoteAnimationTargets {
    public final RemoteAnimationTarget[] apps;
    public final boolean hasRecents;
    private final CopyOnWriteArrayList mReleaseChecks = new CopyOnWriteArrayList();
    private boolean mReleased = false;
    public final RemoteAnimationTarget[] nonApps;
    public final int targetMode;
    public final RemoteAnimationTarget[] unfilteredApps;
    public final RemoteAnimationTarget[] wallpapers;

    /* loaded from: classes.dex */
    public class ReleaseCheck {
        private Runnable mAfterApplyCallback;
        boolean mCanRelease = false;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$addOnSafeToReleaseCallback$0(Runnable runnable, Runnable runnable2) {
            runnable.run();
            runnable2.run();
        }

        public void addOnSafeToReleaseCallback(final Runnable runnable) {
            if (this.mCanRelease) {
                runnable.run();
                return;
            }
            final Runnable runnable2 = this.mAfterApplyCallback;
            if (runnable2 == null) {
                this.mAfterApplyCallback = runnable;
            } else {
                this.mAfterApplyCallback = new Runnable() { // from class: com.android.quickstep.P0
                    @Override // java.lang.Runnable
                    public final void run() {
                        RemoteAnimationTargets.ReleaseCheck.lambda$addOnSafeToReleaseCallback$0(runnable, runnable2);
                    }
                };
            }
        }

        public void setCanRelease(boolean z4) {
            Runnable runnable;
            this.mCanRelease = z4;
            if (!z4 || (runnable = this.mAfterApplyCallback) == null) {
                return;
            }
            this.mAfterApplyCallback = null;
            runnable.run();
        }
    }

    public RemoteAnimationTargets(RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, int i4) {
        boolean z4 = false;
        ArrayList arrayList = new ArrayList();
        if (remoteAnimationTargetArr != null) {
            boolean z5 = false;
            for (RemoteAnimationTarget remoteAnimationTarget : remoteAnimationTargetArr) {
                if (remoteAnimationTarget.mode == i4) {
                    arrayList.add(remoteAnimationTarget);
                }
                z5 |= remoteAnimationTarget.windowConfiguration.getActivityType() == 3;
            }
            z4 = z5;
        }
        this.unfilteredApps = remoteAnimationTargetArr;
        this.apps = (RemoteAnimationTarget[]) arrayList.toArray(new RemoteAnimationTarget[arrayList.size()]);
        this.wallpapers = remoteAnimationTargetArr2;
        this.targetMode = i4;
        this.hasRecents = z4;
        this.nonApps = remoteAnimationTargetArr3;
    }

    public void addReleaseCheck(ReleaseCheck releaseCheck) {
        this.mReleaseChecks.add(releaseCheck);
    }

    public RemoteAnimationTarget findTask(int i4) {
        RemoteAnimationTarget[] remoteAnimationTargetArr;
        for (RemoteAnimationTarget remoteAnimationTarget : this.apps) {
            if (remoteAnimationTarget.taskId == i4) {
                return remoteAnimationTarget;
            }
        }
        return null;
    }

    public RemoteAnimationTarget getFirstAppTarget() {
        RemoteAnimationTarget[] remoteAnimationTargetArr = this.apps;
        if (remoteAnimationTargetArr.length > 0) {
            return remoteAnimationTargetArr[0];
        }
        return null;
    }

    public int getFirstAppTargetTaskId() {
        RemoteAnimationTarget firstAppTarget = getFirstAppTarget();
        if (firstAppTarget == null) {
            return -1;
        }
        return firstAppTarget.taskId;
    }

    public RemoteAnimationTarget getNavBarRemoteAnimationTarget() {
        return getNonAppTargetOfType(2019);
    }

    public RemoteAnimationTarget getNonAppTargetOfType(int i4) {
        RemoteAnimationTarget[] remoteAnimationTargetArr;
        for (RemoteAnimationTarget remoteAnimationTarget : this.nonApps) {
            if (remoteAnimationTarget.windowType == i4) {
                return remoteAnimationTarget;
            }
        }
        return null;
    }

    public boolean isAnimatingHome() {
        for (RemoteAnimationTarget remoteAnimationTarget : this.unfilteredApps) {
            if (remoteAnimationTarget.windowConfiguration.getActivityType() == 2) {
                return true;
            }
        }
        return false;
    }

    public void release() {
        if (this.mReleased) {
            return;
        }
        Iterator it = this.mReleaseChecks.iterator();
        while (it.hasNext()) {
            ReleaseCheck releaseCheck = (ReleaseCheck) it.next();
            if (!releaseCheck.mCanRelease) {
                releaseCheck.addOnSafeToReleaseCallback(new Runnable() { // from class: com.android.quickstep.O0
                    @Override // java.lang.Runnable
                    public final void run() {
                        RemoteAnimationTargets.this.release();
                    }
                });
                return;
            }
        }
        this.mReleaseChecks.clear();
        this.mReleased = true;
        release(this.unfilteredApps);
        release(this.wallpapers);
        release(this.nonApps);
    }

    private static void release(RemoteAnimationTarget[] remoteAnimationTargetArr) {
        for (RemoteAnimationTarget remoteAnimationTarget : remoteAnimationTargetArr) {
            SurfaceControl surfaceControl = remoteAnimationTarget.leash;
            if (surfaceControl != null) {
                surfaceControl.release();
            }
            SurfaceControl surfaceControl2 = remoteAnimationTarget.startLeash;
            if (surfaceControl2 != null) {
                surfaceControl2.release();
            }
        }
    }
}
