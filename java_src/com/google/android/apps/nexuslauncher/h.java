package com.google.android.apps.nexuslauncher;

import android.window.IRemoteTransition;
import android.window.RemoteTransition;
import android.window.TransitionFilter;
import com.android.launcher3.LauncherAnimationRunner;
import com.android.launcher3.QuickstepTransitionManager;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.quickstep.SystemUiProxy;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public final class h extends QuickstepTransitionManager {

    /* renamed from: d  reason: collision with root package name */
    public final NexusLauncherActivity f7352d;

    /* renamed from: e  reason: collision with root package name */
    public final Q1.d f7353e;

    /* renamed from: f  reason: collision with root package name */
    public g f7354f;

    /* renamed from: g  reason: collision with root package name */
    public RemoteTransition f7355g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(NexusLauncherActivity launcher) {
        super(launcher);
        kotlin.jvm.internal.h.e(launcher, "launcher");
        this.f7352d = launcher;
        this.f7353e = new Q1.d(launcher);
    }

    @Override // com.android.launcher3.QuickstepTransitionManager
    public final void dump(String prefix, PrintWriter writer) {
        kotlin.jvm.internal.h.e(prefix, "prefix");
        kotlin.jvm.internal.h.e(writer, "writer");
        Q1.d dVar = this.f7353e;
        dVar.getClass();
        dVar.f1613b.dump(prefix, writer);
    }

    @Override // com.android.launcher3.QuickstepTransitionManager
    public final void registerRemoteTransitions() {
        super.registerRemoteTransitions();
        if (hasControlRemoteAppTransitionPermission()) {
            this.f7354f = new g(this);
            IRemoteTransition remoteTransition = new LauncherAnimationRunner(this.mHandler, this.f7354f, true).toRemoteTransition();
            QuickstepLauncher quickstepLauncher = this.mLauncher;
            this.f7355g = new RemoteTransition(remoteTransition, quickstepLauncher.getIApplicationThread(), "LauncherToDream");
            TransitionFilter transitionFilter = new TransitionFilter();
            TransitionFilter.Requirement requirement = new TransitionFilter.Requirement();
            requirement.mActivityType = 5;
            requirement.mModes = new int[]{1, 3};
            e3.f fVar = e3.f.f9037a;
            TransitionFilter.Requirement requirement2 = new TransitionFilter.Requirement();
            requirement2.mActivityType = 2;
            requirement2.mModes = new int[]{2, 4};
            transitionFilter.mRequirements = new TransitionFilter.Requirement[]{requirement, requirement2};
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(quickstepLauncher)).registerRemoteTransition(this.f7355g, transitionFilter);
        }
    }

    @Override // com.android.launcher3.QuickstepTransitionManager
    public final void unregisterRemoteTransitions() {
        super.unregisterRemoteTransitions();
        if (this.f7355g == null) {
            return;
        }
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mLauncher)).unregisterRemoteTransition(this.f7355g);
        this.f7355g = null;
        this.f7354f = null;
    }
}
