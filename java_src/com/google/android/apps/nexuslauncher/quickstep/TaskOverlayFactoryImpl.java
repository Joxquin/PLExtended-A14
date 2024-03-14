package com.google.android.apps.nexuslauncher.quickstep;

import J1.m;
import J1.n;
import J1.o;
import L1.O;
import M1.b;
import X1.g;
import X1.h;
import X1.u;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.SparseArray;
import com.android.launcher3.LauncherPrefs;
import com.android.quickstep.TaskOverlayFactory;
import com.android.quickstep.views.TaskThumbnailView;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$OverviewFeedback$OverviewInteraction;
import com.google.android.apps.nexuslauncher.c;
import com.google.android.apps.nexuslauncher.quickstep.TaskOverlayFactoryImpl;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class TaskOverlayFactoryImpl extends TaskOverlayFactory {

    /* renamed from: i  reason: collision with root package name */
    public static final /* synthetic */ int f7544i = 0;

    /* renamed from: d  reason: collision with root package name */
    public final Context f7545d;

    /* renamed from: f  reason: collision with root package name */
    public boolean f7547f = false;

    /* renamed from: g  reason: collision with root package name */
    public final SparseArray f7548g = new SparseArray();

    /* renamed from: h  reason: collision with root package name */
    public final g f7549h = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: X1.g
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            TaskOverlayFactoryImpl taskOverlayFactoryImpl = TaskOverlayFactoryImpl.this;
            int i4 = TaskOverlayFactoryImpl.f7544i;
            taskOverlayFactoryImpl.getClass();
            if ("pref_overview_action_suggestions".equals(str)) {
                taskOverlayFactoryImpl.f7547f = sharedPreferences.getBoolean("pref_overview_action_suggestions", true);
                taskOverlayFactoryImpl.clearAllActiveState();
                taskOverlayFactoryImpl.f7548g.clear();
            }
        }
    };

    /* renamed from: e  reason: collision with root package name */
    public final Handler f7546e = new Handler(Looper.getMainLooper());

    /* JADX WARN: Type inference failed for: r0v2, types: [X1.g] */
    public TaskOverlayFactoryImpl(Context context) {
        this.f7545d = context.getApplicationContext();
    }

    @Override // com.android.quickstep.TaskOverlayFactory
    public final void clearAllActiveState() {
        if (c.f7333v.get()) {
            SparseArray sparseArray = this.f7548g;
            for (int size = sparseArray.size() - 1; size >= 0; size--) {
                h hVar = (h) sparseArray.valueAt(size);
                if (hVar.f2040c) {
                    O o4 = hVar.f2038a;
                    o4.getClass();
                    b.c(String.format("Overview Session Dismissed - OverviewSessionId : %s", "null_session_id"));
                    ArrayList arrayList = new ArrayList();
                    m mVar = new m();
                    arrayList.add(mVar);
                    mVar.f759b = SystemClock.elapsedRealtime();
                    o oVar = new o();
                    oVar.f766c = "null_session_id";
                    mVar.f758a = oVar;
                    oVar.f764a = FeedbackParcelables$OverviewFeedback$OverviewInteraction.OVERVIEW_SCREEN_DISMISSED;
                    n nVar = new n();
                    nVar.f762b = 0;
                    nVar.f763c = "null_session_id";
                    int i4 = M1.c.f1362a;
                    nVar.f761a = arrayList;
                    o4.reportMetricsToService("null_session_id", nVar, null);
                    hVar.f2040c = false;
                }
            }
        }
    }

    @Override // com.android.quickstep.TaskOverlayFactory
    public final TaskOverlayFactory.TaskOverlay createOverlay(TaskThumbnailView taskThumbnailView) {
        return new u(this, taskThumbnailView);
    }

    @Override // com.android.quickstep.TaskOverlayFactory
    public final void initListeners() {
        SharedPreferences prefs = LauncherPrefs.getPrefs(this.f7545d);
        prefs.registerOnSharedPreferenceChangeListener(this.f7549h);
        this.f7547f = prefs.getBoolean("pref_overview_action_suggestions", true);
        clearAllActiveState();
        this.f7548g.clear();
    }

    @Override // com.android.quickstep.TaskOverlayFactory
    public final void removeListeners() {
        LauncherPrefs.getPrefs(this.f7545d).unregisterOnSharedPreferenceChangeListener(this.f7549h);
    }
}
