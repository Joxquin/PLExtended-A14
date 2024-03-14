package com.google.android.apps.nexuslauncher.model;

import T1.b;
import T1.h;
import T1.j;
import T1.m;
import T1.p;
import T1.s;
import T1.x;
import android.app.WallpaperManager;
import android.app.smartspace.SmartspaceConfig;
import android.app.smartspace.SmartspaceManager;
import android.app.smartspace.SmartspaceSession;
import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.SmartspaceTargetEvent;
import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.QuickstepModelDelegate;
import com.android.launcher3.model.UserManagerState;
import com.android.launcher3.util.Executors;
import com.android.quickstep.util.AssistStateManager;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.c;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;
import java.util.function.Consumer;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public class NexusLauncherModelDelegate extends QuickstepModelDelegate implements SmartspaceSession.OnTargetsAvailableListener {

    /* renamed from: d  reason: collision with root package name */
    public final Context f7477d;

    /* renamed from: e  reason: collision with root package name */
    public final Deque f7478e;

    /* renamed from: f  reason: collision with root package name */
    public final p f7479f;

    /* renamed from: g  reason: collision with root package name */
    public final b f7480g;

    /* renamed from: h  reason: collision with root package name */
    public final x f7481h;

    /* renamed from: i  reason: collision with root package name */
    public SmartspaceSession f7482i;

    /* renamed from: j  reason: collision with root package name */
    public final StatsLogManager f7483j;

    public NexusLauncherModelDelegate(Context context) {
        super(context);
        this.f7478e = new LinkedList();
        this.f7477d = context;
        this.f7483j = StatsLogManager.newInstance(context);
        this.f7479f = new p(context);
        this.f7480g = new b(context);
        this.f7481h = new x(context);
    }

    @Override // com.android.launcher3.model.QuickstepModelDelegate
    public final void additionalSnapshotEvents(InstanceId instanceId) {
        SharedPreferences prefs = LauncherPrefs.getPrefs(this.f7477d);
        this.f7483j.logger().withInstanceId(instanceId).log(prefs.getBoolean("pref_search_show_keyboard", this.f7477d.getResources().getBoolean(R.bool.search_pref_show_ime)) ? NexusLauncherEvent.LAUNCHER_GOOGLE_OPEN_ALLAPPS_WITH_IME_ENABLED : NexusLauncherEvent.LAUNCHER_GOOGLE_OPEN_ALLAPPS_WITH_IME_DISABLED);
        this.f7483j.logger().withInstanceId(instanceId).withRank(prefs.getInt("ALL_APPS_SEARCH_CORPUS_PREFERENCE", 0)).log(NexusLauncherEvent.LAUNCHER_GOOGLE_ALLAPPS_SEARCH_CORPUS_CODE);
        AssistStateManager assistStateManager = (AssistStateManager) AssistStateManager.INSTANCE.get(this.f7477d);
        if (c.f7315d.get()) {
            this.f7483j.logger().withInstanceId(instanceId).withInputType(assistStateManager.isSettingsNavHandleEnabled() ? 1 : 0).log(NexusLauncherEvent.LAUNCHER_SETTINGS_OMNI_NAV_HANDLE_TOGGLE_VALUE);
        }
        if (c.f7316e.get()) {
            this.f7483j.logger().withInstanceId(instanceId).withInputType(assistStateManager.isSettingsHomeButtonEnabled() ? 1 : 0).log(NexusLauncherEvent.LAUNCHER_SETTINGS_OMNI_HOME_BUTTON_TOGGLE_VALUE);
        }
    }

    public final void b(SmartspaceTargetEvent smartspaceTargetEvent) {
        Log.d("NexusLauncherModelDelegate", "notifySmartspaceEvent: " + smartspaceTargetEvent);
        this.mApp.getModel().enqueueModelUpdateTask(new j(this, smartspaceTargetEvent));
    }

    public final void c() {
        SmartspaceSession smartspaceSession = this.f7482i;
        if (smartspaceSession != null) {
            smartspaceSession.close();
            this.f7482i = null;
        }
        if (this.mActive) {
            Context context = this.mApp.getContext();
            SmartspaceSession createSmartspaceSession = ((SmartspaceManager) context.getSystemService(SmartspaceManager.class)).createSmartspaceSession(new SmartspaceConfig.Builder(context, "home").build());
            this.f7482i = createSmartspaceSession;
            createSmartspaceSession.addOnTargetsAvailableListener(Executors.MODEL_EXECUTOR, this);
            this.f7482i.requestSmartspaceUpdate();
        }
    }

    @Override // com.android.launcher3.model.QuickstepModelDelegate, com.android.launcher3.model.ModelDelegate
    public final void destroy() {
        x xVar;
        CompletableFuture completableFuture;
        super.destroy();
        SmartspaceSession smartspaceSession = this.f7482i;
        if (smartspaceSession != null) {
            smartspaceSession.close();
            this.f7482i = null;
        }
        this.f7479f.a();
        this.f7480g.a();
        if (!c.f7327p.get() || (completableFuture = (xVar = this.f7481h).f1724c) == null) {
            return;
        }
        completableFuture.thenAcceptAsync((Consumer) new s(xVar));
        xVar.f1724c = null;
    }

    @Override // com.android.launcher3.model.ModelDelegate
    public final void dump(final String str, FileDescriptor fileDescriptor, final PrintWriter printWriter, String[] strArr) {
        printWriter.println(str + "Recent BC Smartspace Targets (most recent first)");
        synchronized (this.f7478e) {
            if (((LinkedList) this.f7478e).size() != 0) {
                ((LinkedList) this.f7478e).descendingIterator().forEachRemaining(new Consumer() { // from class: T1.i
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        PrintWriter printWriter2 = printWriter;
                        String str2 = str;
                        List list = (List) obj;
                        StringBuilder a4 = t.j.a(str2, "   Number of targets: ");
                        a4.append(list.size());
                        printWriter2.println(a4.toString());
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            printWriter2.println(str2 + "      " + ((SmartspaceTarget) it.next()));
                        }
                        printWriter2.println();
                    }
                });
                return;
            }
            printWriter.println(str + "   No data\n");
        }
    }

    @Override // com.android.launcher3.model.QuickstepModelDelegate, com.android.launcher3.model.ModelDelegate
    public final void loadAndBindOtherItems(BgDataModel.Callbacks[] callbacksArr) {
        super.loadAndBindOtherItems(callbacksArr);
        if (FeatureFlags.CHANGE_MODEL_DELEGATE_LOADING_ORDER.get()) {
            if (((WallpaperManager) this.f7477d.getSystemService(WallpaperManager.class)).isWallpaperSupported() && ((WallpaperManager) this.f7477d.getSystemService(WallpaperManager.class)).isSetWallpaperAllowed()) {
                this.f7479f.c();
            }
            this.f7480g.c();
            if (c.f7327p.get()) {
                this.f7481h.c();
            }
        }
    }

    @Override // com.android.launcher3.model.QuickstepModelDelegate, com.android.launcher3.model.ModelDelegate
    public final void loadAndBindWorkspaceItems(UserManagerState userManagerState, BgDataModel.Callbacks[] callbacksArr, Map map) {
        super.loadAndBindWorkspaceItems(userManagerState, callbacksArr, map);
        if (FeatureFlags.CHANGE_MODEL_DELEGATE_LOADING_ORDER.get()) {
            c();
        }
    }

    public final void onTargetsAvailable(List list) {
        synchronized (this.f7478e) {
            List list2 = (List) list.stream().filter(new h()).collect(Collectors.toList());
            ((LinkedList) this.f7478e).offerLast(list2);
            if (((LinkedList) this.f7478e).size() > 5) {
                ((LinkedList) this.f7478e).pollFirst();
            }
            this.mApp.getModel().enqueueModelUpdateTask(new m(list2));
        }
    }

    @Override // com.android.launcher3.model.QuickstepModelDelegate, com.android.launcher3.model.ModelDelegate
    public final void validateData() {
        super.validateData();
        SmartspaceSession smartspaceSession = this.f7482i;
        if (smartspaceSession != null) {
            smartspaceSession.requestSmartspaceUpdate();
        }
    }

    @Override // com.android.launcher3.model.QuickstepModelDelegate, com.android.launcher3.model.ModelDelegate
    public final void workspaceLoadComplete() {
        super.workspaceLoadComplete();
        AssistStateManager.INSTANCE.get(this.f7477d);
        if (FeatureFlags.CHANGE_MODEL_DELEGATE_LOADING_ORDER.get()) {
            return;
        }
        c();
        Context context = this.f7477d;
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        if (((WallpaperManager) context.getSystemService(WallpaperManager.class)).isWallpaperSupported() && ((WallpaperManager) this.f7477d.getSystemService(WallpaperManager.class)).isSetWallpaperAllowed()) {
            this.f7479f.c();
        }
        this.f7480g.c();
        if (c.f7327p.get()) {
            this.f7481h.c();
        }
    }
}
