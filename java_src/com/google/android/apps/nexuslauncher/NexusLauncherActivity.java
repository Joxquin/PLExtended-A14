package com.google.android.apps.nexuslauncher;

import K2.C0032e;
import T1.w;
import android.animation.AnimatorSet;
import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.SmartspaceTargetEvent;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Bundle;
import android.os.Debug;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.C0339g;
import com.android.launcher3.C0410q;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.LauncherState;
import com.android.launcher3.QuickstepTransitionManager;
import com.android.launcher3.allapps.BaseAllAppsAdapter;
import com.android.launcher3.allapps.BaseSearchConfig;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StartupLatencyLogger;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.ArrowPopup;
import com.android.launcher3.proxy.ProxyActivityStarter;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.quickstep.LauncherActivityInterface;
import com.android.quickstep.SystemUiProxy;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.allapps.A;
import com.google.android.apps.nexuslauncher.allapps.C;
import com.google.android.apps.nexuslauncher.allapps.C0643f;
import com.google.android.apps.nexuslauncher.allapps.C0653h1;
import com.google.android.apps.nexuslauncher.allapps.C0696s1;
import com.google.android.apps.nexuslauncher.allapps.C0700t1;
import com.google.android.apps.nexuslauncher.allapps.C0719y0;
import com.google.android.apps.nexuslauncher.allapps.OneSearchSessionManager$ZeroEntryState;
import com.google.android.apps.nexuslauncher.allapps.P;
import com.google.android.apps.nexuslauncher.allapps.RunnableC0664k0;
import com.google.android.apps.nexuslauncher.allapps.RunnableC0668l0;
import com.google.android.apps.nexuslauncher.allapps.RunnableC0709v2;
import com.google.android.apps.nexuslauncher.allapps.SharedPreferences$OnSharedPreferenceChangeListenerC0725z2;
import com.google.android.apps.nexuslauncher.allapps.T0;
import com.google.android.apps.nexuslauncher.allapps.U;
import com.google.android.apps.nexuslauncher.allapps.X;
import com.google.android.apps.nexuslauncher.allapps.g3;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import com.google.android.apps.nexuslauncher.model.NexusLauncherModelDelegate;
import com.google.android.apps.nexuslauncher.qsb.SearchDelegateView;
import com.google.android.apps.nexuslauncher.qsb.SmartspaceViewContainer;
import com.google.android.systemui.smartspace.BcSmartspaceView;
import f2.x0;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;
import q1.InterfaceC1364d;
import s.C1391a;
/* loaded from: classes.dex */
public class NexusLauncherActivity extends QuickstepLauncher implements SharedPreferences.OnSharedPreferenceChangeListener, m {

    /* renamed from: n  reason: collision with root package name */
    public static final /* synthetic */ int f6472n = 0;

    /* renamed from: g  reason: collision with root package name */
    public U f6476g;

    /* renamed from: i  reason: collision with root package name */
    public List f6478i;

    /* renamed from: j  reason: collision with root package name */
    public b2.h f6479j;

    /* renamed from: k  reason: collision with root package name */
    public SmartspaceViewContainer f6480k;

    /* renamed from: l  reason: collision with root package name */
    public C f6481l;

    /* renamed from: m  reason: collision with root package name */
    public com.google.android.apps.nexuslauncher.logging.b f6482m;

    /* renamed from: d  reason: collision with root package name */
    public final NexusLauncher f6473d = new NexusLauncher(this);

    /* renamed from: e  reason: collision with root package name */
    public final K2.s f6474e = new K2.s();

    /* renamed from: f  reason: collision with root package name */
    public final W1.j f6475f = new W1.j();

    /* renamed from: h  reason: collision with root package name */
    public List f6477h = Collections.emptyList();

    public NexusLauncherActivity() {
        getViewCache().setCacheSize(R.layout.suggest_view, 3);
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindAllApplications(AppInfo[] appInfoArr, int i4, Map map) {
        super.bindAllApplications(appInfoArr, i4, map);
        this.f6476g.N();
    }

    @Override // com.android.launcher3.uioverrides.QuickstepLauncher, com.android.launcher3.model.BgDataModel.Callbacks
    public final void bindExtraContainerItems(BgDataModel.FixedContainerItems fixedContainerItems) {
        int i4 = fixedContainerItems.containerId;
        List list = fixedContainerItems.items;
        if (i4 == -201) {
            List<SmartspaceTarget> list2 = (List) list.stream().map(new Function() { // from class: com.google.android.apps.nexuslauncher.e
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    switch (r1) {
                        case 0:
                            int i5 = NexusLauncherActivity.f6472n;
                            return ((T1.l) ((ItemInfo) obj)).f1710d;
                        case 1:
                            int i6 = NexusLauncherActivity.f6472n;
                            return (O1.m) ((ItemInfo) obj);
                        default:
                            int i7 = NexusLauncherActivity.f6472n;
                            return (w) ((ItemInfo) obj);
                    }
                }
            }).collect(Collectors.toList());
            final K2.s sVar = this.f6474e;
            if (K2.s.f1004g) {
                sVar.getClass();
                Log.d("BcSmartspaceDataPlugin", sVar + " onTargetsAvailable called. Callers = " + Debug.getCallers(3));
                StringBuilder sb = new StringBuilder("    targets.size() = ");
                sb.append(list2.size());
                Log.d("BcSmartspaceDataPlugin", sb.toString());
                Log.d("BcSmartspaceDataPlugin", "    targets = " + list2.toString());
            }
            ArrayList arrayList = (ArrayList) sVar.f1006e;
            arrayList.clear();
            for (SmartspaceTarget smartspaceTarget : list2) {
                if (smartspaceTarget.getFeatureType() != 15) {
                    arrayList.add(smartspaceTarget);
                }
            }
            sVar.f1005d.forEach(new Consumer() { // from class: K2.r
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((n1.e) obj).a(s.this.f1006e);
                }
            });
        }
        int i5 = fixedContainerItems.containerId;
        if (i5 == -114) {
            this.f6477h = (List) list.stream().map(new Function() { // from class: com.google.android.apps.nexuslauncher.e
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    switch (r1) {
                        case 0:
                            int i52 = NexusLauncherActivity.f6472n;
                            return ((T1.l) ((ItemInfo) obj)).f1710d;
                        case 1:
                            int i6 = NexusLauncherActivity.f6472n;
                            return (O1.m) ((ItemInfo) obj);
                        default:
                            int i7 = NexusLauncherActivity.f6472n;
                            return (w) ((ItemInfo) obj);
                    }
                }
            }).collect(Collectors.toList());
        } else {
            super.bindExtraContainerItems(fixedContainerItems);
        }
        if (i5 == -102) {
            g3 g3Var = this.f6476g.f7284q;
            synchronized (g3Var.f7068f) {
                ((ArrayList) g3Var.f7065c).clear();
                ((ArrayList) g3Var.f7065c).addAll(list);
                g3Var.d();
            }
        }
        if (i5 == -202) {
            View qsb = getHotseat().getQsb();
            if (qsb instanceof SearchDelegateView) {
                ((SearchDelegateView) qsb).j(list.isEmpty() ? null : (T1.a) list.get(0));
            }
        }
        if (i5 == -203) {
            this.f6478i = (List) list.stream().map(new Function() { // from class: com.google.android.apps.nexuslauncher.e
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    switch (r1) {
                        case 0:
                            int i52 = NexusLauncherActivity.f6472n;
                            return ((T1.l) ((ItemInfo) obj)).f1710d;
                        case 1:
                            int i6 = NexusLauncherActivity.f6472n;
                            return (O1.m) ((ItemInfo) obj);
                        default:
                            int i7 = NexusLauncherActivity.f6472n;
                            return (w) ((ItemInfo) obj);
                    }
                }
            }).collect(Collectors.toList());
        }
    }

    @Override // com.android.launcher3.uioverrides.QuickstepLauncher
    public final QuickstepTransitionManager buildAppTransitionManager() {
        return c.f7317f.get() ? new h(this) : new QuickstepTransitionManager(this);
    }

    @Override // com.google.android.apps.nexuslauncher.m
    public final void c(p pVar) {
        if (c.f7334w.get()) {
            setLauncherOverlay(null);
            onPluginDisconnected();
        }
    }

    @Override // com.android.launcher3.uioverrides.QuickstepLauncher, com.android.launcher3.Launcher, com.android.launcher3.statemanager.StatefulActivity
    public final void collectStateHandlers(List list) {
        super.collectStateHandlers(list);
        list.add(new P(this));
        if (LauncherActivityInterface.INSTANCE.allowAllAppsFromOverview()) {
            list.add(new C0643f(this));
        }
    }

    @Override // com.android.launcher3.Launcher
    public final StartupLatencyLogger createStartupLatencyLogger(StatsLogManager.StatsLatencyLogger.LatencyType latencyType) {
        return new com.google.android.apps.nexuslauncher.logging.c(this, latencyType);
    }

    @Override // com.android.launcher3.uioverrides.QuickstepLauncher, com.android.launcher3.Launcher, android.app.Activity
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.println("NexusLauncher");
        printWriter.println(str + "OneSearch:");
        U u4 = this.f6476g;
        String str2 = str + "\t";
        u4.getClass();
        StringBuilder a4 = t.j.a(str2, "\tshouldShowSuggest=");
        a4.append(u4.M());
        printWriter.println(a4.toString());
        printWriter.println(str2 + "\tSearchRequestTimeout=" + C0719y0.r());
        C0696s1 c0696s1 = u4.f7283p;
        c0696s1.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append("\tmEnableOneSearch=");
        StringBuilder a5 = C0339g.a(C0339g.a(C0339g.a(C0410q.c(C0410q.c(C0410q.c(C0410q.c(C0410q.c(C0410q.c(C0410q.c(C0410q.c(C0410q.c(C0410q.c(C0410q.c(C0410q.c(C0410q.c(C0410q.c(C0410q.c(C0410q.c(sb, c0696s1.f7179b, printWriter, str2, "\tmUseFallbackAppSearch="), c0696s1.f7180c, printWriter, str2, "\tmShowThreeDotMenuInQsb="), c0696s1.f7183f, printWriter, str2, "\tmLaunchOnDefaultBrowser="), c0696s1.f7178a, printWriter, str2, "\tmUseAppSearchForWeb="), c0696s1.f7184g, printWriter, str2, "\tmEnableQuickSearch="), c0696s1.f7185h, printWriter, str2, "\tmShowSearchEducardQsb="), c0696s1.f7186i, printWriter, str2, "\tmEnableImeLatencyLogger="), c0696s1.f7187j, printWriter, str2, "\tmEnableKeyboardSync="), c0696s1.f7188k, printWriter, str2, "\tmEnableRichAnswer="), c0696s1.f7189l, printWriter, str2, "\tmEnableQuickLaunchV2="), c0696s1.f7190m, printWriter, str2, "\tmEnableQuickLaunchV3Qsb="), c0696s1.f7191n, printWriter, str2, "\tmEnableQuickLaunchV3AA="), c0696s1.f7192o, printWriter, str2, "\tmGboardUpdateEnterKey="), c0696s1.f7193p, printWriter, str2, "\tmEnableImpressionLogging="), c0696s1.f7194q, printWriter, str2, "\tmEnableHideGboardHeaderStatic="), c0696s1.f7195r, printWriter, str2, "\tmUninstalledAppsQueryLenLowerBound="), c0696s1.f7196s, printWriter, str2, "\tmUninstalledAppsQueryLenUpperBound="), c0696s1.f7197t, printWriter, str2, "\tmUninstalledAppsCount="), c0696s1.f7198u, printWriter, str2, "\tmIsTrampolineActivityEnabled=");
        C0700t1 c0700t1 = c0696s1.f7199v;
        StringBuilder c4 = C0410q.c(C0410q.c(a5, c0700t1.f7221n, printWriter, str2, "\tmIsOpenSrpInBrowserSupported="), c0700t1.f7223p, printWriter, str2, "\tmIsZeroStateDeviceResultsEnabled=");
        c4.append(c0700t1.f7225r);
        printWriter.println(c4.toString());
        printWriter.println(str + "LauncherSmartspace:");
        SmartspaceViewContainer smartspaceViewContainer = this.f6480k;
        String a6 = C1391a.a(str, "\t");
        BcSmartspaceView bcSmartspaceView = smartspaceViewContainer.f7542e;
        if (bcSmartspaceView != null) {
            StringBuilder c5 = C0410q.c(C0410q.c(t.j.a(a6, "\tmUpdatesPaused="), bcSmartspaceView.f8339p, printWriter, a6, "\tmIsAodEnabled="), bcSmartspaceView.f8330g, printWriter, a6, "\tmLastReceivedTargetIds=");
            c5.append(bcSmartspaceView.f8329f);
            printWriter.println(c5.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(a6);
            sb2.append("\tmAnimateSmartspaceUpdate=");
            StringBuilder a7 = C0339g.a(C0410q.c(sb2, bcSmartspaceView.f8336m, printWriter, a6, "\tmScrollState="), bcSmartspaceView.f8337n, printWriter, a6, "\tmCardPosition=");
            a7.append(bcSmartspaceView.f8333j);
            printWriter.println(a7.toString());
            List list = bcSmartspaceView.f8338o;
            printWriter.println(a6 + "\tmPendingTargetIds=" + (list == null ? Collections.emptyList() : (List) list.stream().map(new K2.u(1)).collect(Collectors.toList())));
        }
        b2.h hVar = this.f6479j;
        String prefix = str + "\tRingAppearAnimation\t";
        hVar.getClass();
        kotlin.jvm.internal.h.e(prefix, "prefix");
        hVar.f4234f.dump(prefix, printWriter);
    }

    @Override // com.android.launcher3.Launcher
    public final Optional getAllAppsEntryEvent() {
        U u4 = this.f6476g;
        OneSearchSessionManager$ZeroEntryState oneSearchSessionManager$ZeroEntryState = u4.f7287t;
        if (oneSearchSessionManager$ZeroEntryState == OneSearchSessionManager$ZeroEntryState.f6663d || oneSearchSessionManager$ZeroEntryState == OneSearchSessionManager$ZeroEntryState.f6665f) {
            return Optional.of(u4.m() ? NexusLauncherEvent.LAUNCHER_GOOGLE_ALL_APPS_ENTRY_WITH_KEYBOARD_ENABLED : NexusLauncherEvent.LAUNCHER_GOOGLE_ALL_APPS_ENTRY_WITH_KEYBOARD_DISABLED);
        }
        return Optional.empty();
    }

    @Override // com.android.launcher3.Launcher
    public final Optional getAllAppsExitEvent() {
        OneSearchSessionManager$ZeroEntryState oneSearchSessionManager$ZeroEntryState = this.f6476g.f7287t;
        return (oneSearchSessionManager$ZeroEntryState == OneSearchSessionManager$ZeroEntryState.f6663d || oneSearchSessionManager$ZeroEntryState == OneSearchSessionManager$ZeroEntryState.f6665f) ? super.getAllAppsExitEvent() : Optional.empty();
    }

    @Override // com.android.launcher3.Launcher
    public final InterfaceC1364d getDefaultOverlay() {
        return (!c.f7334w.get() || ((u) u.f7612m.get(this)).f7619i.f7505c) ? c.f7329r.get() ? new U1.c(this) : (FeatureFlags.ENABLE_OVERLAY_CONNECTION_OPTIM.get() && this.f6476g.f7283p.f7179b && !getSharedPrefs().getBoolean("pref_enable_minus_one", true)) ? super.getDefaultOverlay() : new j(this, this) : super.getDefaultOverlay();
    }

    @Override // com.android.launcher3.Launcher
    public ArrowPopup getOptionsPopup() {
        AbstractFloatingView openView = AbstractFloatingView.getOpenView(this, 16384);
        return openView instanceof O1.k ? ((O1.k) openView).getOptionsPopup() : super.getOptionsPopup();
    }

    @Override // com.android.launcher3.Launcher
    public final BaseSearchConfig getSearchConfig() {
        return this.f6476g.f7283p;
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.BaseActivity, android.app.Activity
    public final void onActivityResult(int i4, int i5, Intent intent) {
        if (i4 == 15) {
            AbstractFloatingView.closeOpenViews(this, false, 65536);
        }
        super.onActivityResult(i4, i5, intent);
    }

    @Override // com.android.launcher3.uioverrides.QuickstepLauncher, com.android.launcher3.Launcher, com.android.launcher3.statemanager.StatefulActivity, com.android.launcher3.BaseDraggingActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        com.google.android.apps.nexuslauncher.logging.b bVar = new com.google.android.apps.nexuslauncher.logging.b(new com.google.android.apps.nexuslauncher.logging.a(this), getStatsLogManager().keyboardStateManager());
        this.f6482m = bVar;
        this.f6481l = new C(bVar);
        getSharedPrefs().registerOnSharedPreferenceChangeListener(this);
        final NexusLauncherModelDelegate nexusLauncherModelDelegate = (NexusLauncherModelDelegate) getModel().getModelDelegate();
        K2.s sVar = this.f6474e;
        Objects.requireNonNull(nexusLauncherModelDelegate);
        sVar.f1007f = new n1.d() { // from class: com.google.android.apps.nexuslauncher.d
            @Override // n1.d
            public final void a(SmartspaceTargetEvent smartspaceTargetEvent) {
                NexusLauncherModelDelegate.this.b(smartspaceTargetEvent);
            }
        };
        if (c.f7334w.get()) {
            ((u) u.f7612m.get(this)).a(this);
        }
    }

    @Override // com.android.launcher3.uioverrides.QuickstepLauncher, com.android.launcher3.Launcher, com.android.launcher3.statemanager.StatefulActivity
    public final void onDeferredResumed() {
        super.onDeferredResumed();
        if (this.f6476g.f7283p.f7187j) {
            getAppsView().getWindowInsetsController().setSystemDrivenInsetsAnimationLoggingListener(this.f6481l);
        }
        U u4 = this.f6476g;
        if (((NexusLauncherActivity) u4.f7271d).isInState(LauncherState.ALL_APPS) && ((NexusLauncherActivity) u4.f7271d).getAppsView().isSearching() && u4.f7283p.f7179b) {
            u4.z(u4.o(u4.q()), C0719y0.f7257L);
            if (u4.M()) {
                u4.f7290w = false;
                if (u4.f7261A == 0) {
                    u4.f7261A = 0L;
                }
                u4.f7262B = 0L;
                ((ArrayList) u4.f7263C).clear();
                ((ArrayList) u4.f7264D).clear();
                if (((ArrayList) u4.f7289v).size() > 0) {
                    ArrayList arrayList = (ArrayList) u4.f7289v;
                    ((ArrayList) u4.f7289v).clear();
                    ((ArrayList) u4.f7289v).add((x0) arrayList.get(arrayList.size() - 1));
                }
                if (u4.M()) {
                    C0719y0.g().execute(new X(0, u4, null));
                }
            }
        }
        if (!u4.f7291x && u4.M()) {
            u4.P(false);
        }
        ExtendedEditText editText = ((NexusLauncherActivity) u4.f7271d).getAppsView().getSearchUiManager().getEditText();
        if (TextUtils.isEmpty(u4.f6894P) || editText == null) {
            return;
        }
        ((NexusLauncherActivity) u4.f7271d).getAppsView().getSearchTransitionController().setSkipAnimationWithinAllApps();
        editText.setText(u4.f6894P);
        editText.setSelection(u4.f6894P.length());
        u4.f6894P = null;
    }

    @Override // com.android.launcher3.uioverrides.QuickstepLauncher, com.android.launcher3.Launcher, com.android.launcher3.BaseDraggingActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        this.f6481l = null;
        b2.h hVar = this.f6479j;
        hVar.getClass();
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(hVar.f4229a)).setLauncherUnlockAnimationController(null);
        this.f6476g.C();
        getSharedPrefs().unregisterOnSharedPreferenceChangeListener(this);
        SmartspaceViewContainer smartspaceViewContainer = this.f6480k;
        if (smartspaceViewContainer != null) {
            smartspaceViewContainer.f7542e.getClass();
            C0032e.f977a = null;
        }
        if (c.f7334w.get()) {
            ((u) u.f7612m.get(this)).c(this);
        }
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity, com.android.launcher3.InvariantDeviceProfile.OnIDPChangeListener
    public final void onIdpChanged(boolean z4) {
        onHandleConfigurationChanged();
        U u4 = this.f6476g;
        int i4 = getDeviceProfile().numShownAllAppsColumns;
        if (u4.f7288u != i4) {
            u4.f7288u = i4;
            SharedPreferences$OnSharedPreferenceChangeListenerC0725z2 sharedPreferences$OnSharedPreferenceChangeListenerC0725z2 = u4.f7277j;
            if (sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7310l) {
                Executors.UI_HELPER_EXECUTOR.execute(new RunnableC0709v2(sharedPreferences$OnSharedPreferenceChangeListenerC0725z2, 1));
            }
        }
        if (z4) {
            getAppsView().getSearchUiManager().resetSearch();
        } else {
            getAppsView().getSearchUiManager().refreshResults();
        }
    }

    @Override // com.android.launcher3.Launcher
    public final void onOverlayVisibilityChanged(boolean z4) {
        super.onOverlayVisibilityChanged(z4);
        this.f6479j.a();
    }

    @Override // com.android.launcher3.Launcher
    public final void onPageEndTransition() {
        this.f6479j.a();
    }

    @Override // com.android.launcher3.uioverrides.QuickstepLauncher, com.android.launcher3.Launcher, com.android.launcher3.BaseActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (this.f6476g.f7283p.f7187j) {
            getAppsView().getWindowInsetsController().setSystemDrivenInsetsAnimationLoggingListener(null);
        }
    }

    @Override // com.android.launcher3.Launcher, android.app.Activity
    public final void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        U u4 = this.f6476g;
        u4.getClass();
        if (bundle == null) {
            return;
        }
        Configuration configuration = (Configuration) bundle.getParcelable("nexus.launcher.configuration");
        if (((configuration != null ? configuration.diff(((NexusLauncherActivity) u4.f7271d).getResources().getConfiguration()) : 0) & (-536887809)) == 0) {
            u4.f6894P = bundle.getString("nexus.launcher.user_input");
        }
    }

    @Override // com.android.launcher3.uioverrides.QuickstepLauncher, com.android.launcher3.Launcher, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        U u4 = this.f6476g;
        ExtendedEditText editText = ((NexusLauncherActivity) u4.f7271d).getAppsView().getSearchUiManager().getEditText();
        if (editText == null) {
            return;
        }
        List adapterItems = ((NexusLauncherActivity) u4.f7271d).getAppsView().getSearchResultList().getAdapterItems();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Iterator it = ((ArrayList) adapterItems).iterator();
        while (it.hasNext()) {
            BaseAllAppsAdapter.AdapterItem adapterItem = (BaseAllAppsAdapter.AdapterItem) it.next();
            if (adapterItem instanceof C0653h1) {
                C0653h1 c0653h1 = (C0653h1) adapterItem;
                arrayList.add(c0653h1.f7080a);
                List list = c0653h1.f7081b;
                if (((ArrayList) list).size() > 0) {
                    arrayList.addAll(list);
                }
            }
        }
        try {
            Bundle bundle2 = new Bundle();
            bundle2.putParcelableArrayList("nexus.launcher.search_target.list", arrayList);
            Parcel obtain = Parcel.obtain();
            obtain.writeBundle(bundle2);
            int dataSize = obtain.dataSize();
            obtain.recycle();
            ((NexusLauncherActivity) u4.f7271d).getStatsLogManager().logger().withCardinality(dataSize).log(NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCH_RESTORE_LIST_SIZE_AFTER_ACTIVITY_RESTART);
        } catch (Exception e4) {
            Log.e("LauncherSSManager", "Failed to calculate restore list size", e4);
        }
        bundle.putParcelable("nexus.launcher.configuration", ((NexusLauncherActivity) u4.f7271d).getResources().getConfiguration());
        bundle.putString("nexus.launcher.user_input", editText.getText().toString());
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (FeatureFlags.ENABLE_OVERLAY_CONNECTION_OPTIM.get() && this.f6476g.f7283p.f7179b && "pref_enable_minus_one".equals(str)) {
            setLauncherOverlay(null);
            onPluginDisconnected();
        }
    }

    @Override // com.android.launcher3.Launcher
    public final void onStateBack() {
        if (this.f6476g.s()) {
            return;
        }
        super.onStateBack();
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.statemanager.StatefulActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public final void onStop() {
        super.onStop();
        U u4 = this.f6476g;
        u4.getClass();
        LooperExecutor g4 = C0719y0.g();
        T0 t02 = u4.f7285r;
        Objects.requireNonNull(t02);
        g4.execute(new RunnableC0664k0(0, t02));
        LooperExecutor j4 = C0719y0.j();
        A a4 = u4.f7286s;
        Objects.requireNonNull(a4);
        j4.execute(new RunnableC0668l0(a4, 0));
        if (c.f7322k.get()) {
            U u5 = this.f6476g;
            if (u5.f7270J) {
                u5.f7270J = false;
                startActivity(ProxyActivityStarter.getLaunchIntent(this, null));
            }
        }
    }

    public void openWidgetEducationInPixelTips(View view) {
        Intent intent = new Intent("android.intent.action.VIEW").setData(Uri.parse("https://g.co/pixeltips/tips_widget")).setPackage("com.google.android.apps.tips");
        if (getApplicationContext().getPackageManager().resolveActivity(intent, 0) != null) {
            startActivityForResult(intent, 15);
            return;
        }
        Toast.makeText(getApplicationContext(), (int) R.string.widget_education_tips_not_available, 0).show();
        AbstractFloatingView.closeOpenViews(this, false, 65536);
    }

    @Override // com.android.launcher3.Launcher
    public final void pauseExpensiveViewUpdates() {
        BcSmartspaceView bcSmartspaceView;
        super.pauseExpensiveViewUpdates();
        SmartspaceViewContainer smartspaceViewContainer = this.f6480k;
        if (smartspaceViewContainer != null && (bcSmartspaceView = smartspaceViewContainer.f7542e) != null) {
            bcSmartspaceView.f8339p = true;
            List list = bcSmartspaceView.f8338o;
            if (list != null) {
                bcSmartspaceView.a(list);
            }
        }
        w(true);
    }

    @Override // com.android.launcher3.Launcher
    public final void resumeExpensiveViewUpdates() {
        BcSmartspaceView bcSmartspaceView;
        super.resumeExpensiveViewUpdates();
        SmartspaceViewContainer smartspaceViewContainer = this.f6480k;
        if (smartspaceViewContainer != null && (bcSmartspaceView = smartspaceViewContainer.f7542e) != null) {
            bcSmartspaceView.f8339p = false;
            List list = bcSmartspaceView.f8338o;
            if (list != null) {
                bcSmartspaceView.a(list);
            }
        }
        w(false);
    }

    @Override // com.android.launcher3.uioverrides.QuickstepLauncher, com.android.launcher3.Launcher
    public final void setupViews() {
        this.f6476g = new U(this);
        super.setupViews();
        SmartspaceViewContainer smartspaceViewContainer = (SmartspaceViewContainer) findViewById(R.id.search_container_workspace);
        this.f6480k = smartspaceViewContainer;
        BcSmartspaceView bcSmartspaceView = smartspaceViewContainer.f7542e;
        f fVar = new f(this);
        bcSmartspaceView.getClass();
        C0032e.f977a = fVar;
        W1.j value = this.f6475f;
        bcSmartspaceView.f8328e = value;
        K2.C c4 = bcSmartspaceView.f8341r;
        c4.getClass();
        kotlin.jvm.internal.h.e(value, "value");
        c4.f930r = value;
        bcSmartspaceView.e(this.f6474e);
        this.f6479j = new b2.h(this, bcSmartspaceView);
    }

    @Override // com.android.launcher3.Launcher
    public final void showDefaultOptions(float f4, float f5) {
        if (this.f6477h.size() <= 1) {
            super.showDefaultOptions(f4, f5);
            return;
        }
        O1.l lVar = new O1.l(this, this.f6477h);
        RectF popupTarget = getPopupTarget(f4, f5);
        lVar.a();
        lVar.f1465n.getApplication().registerActivityLifecycleCallbacks(lVar);
        lVar.f1460i.setTargetRect(popupTarget);
        lVar.f1458g.show();
    }

    public final void w(boolean z4) {
        P1.f fVar;
        View qsb = getHotseat().getQsb();
        if (!(qsb instanceof SearchDelegateView) || (fVar = ((SearchDelegateView) qsb).f7538o) == null) {
            return;
        }
        if (!z4) {
            fVar.d();
            return;
        }
        AnimatorSet animatorSet = fVar.f1555m;
        if (animatorSet != null) {
            animatorSet.pause();
        }
    }
}
