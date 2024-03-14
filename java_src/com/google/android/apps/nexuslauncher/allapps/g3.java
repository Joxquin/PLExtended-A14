package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.Query;
import android.app.search.SearchSession;
import android.app.search.SearchTarget;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.allapps.BaseAllAppsAdapter;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.ArrayList;
import java.util.List;
import z0.C1498f;
import z0.C1499g;
/* loaded from: classes.dex */
public final class g3 extends AbstractC0683p implements SearchSession.Callback {

    /* renamed from: l  reason: collision with root package name */
    public static final BaseAllAppsAdapter.AdapterItem f7062l = new BaseAllAppsAdapter.AdapterItem(32768);

    /* renamed from: a  reason: collision with root package name */
    public final Context f7063a;

    /* renamed from: b  reason: collision with root package name */
    public final C0719y0 f7064b;

    /* renamed from: j  reason: collision with root package name */
    public int f7072j;

    /* renamed from: k  reason: collision with root package name */
    public int f7073k;

    /* renamed from: c  reason: collision with root package name */
    public final List f7065c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    public final List f7066d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    public byte[] f7067e = null;

    /* renamed from: f  reason: collision with root package name */
    public final ArrayList f7068f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    public final ArrayList f7069g = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    public List f7071i = new ArrayList();
    int mWebInsertionIdx = -1;

    /* renamed from: h  reason: collision with root package name */
    public final BaseAllAppsAdapter.AdapterItem f7070h = new BaseAllAppsAdapter.AdapterItem(QuickStepContract.SYSUI_STATE_VOICE_INTERACTION_WINDOW_SHOWING);

    public g3(Context context, C0719y0 c0719y0, C0696s1 c0696s1) {
        this.f7063a = context;
        this.f7064b = c0719y0;
        this.f7072j = c0696s1.f7182e;
        this.f7073k = c0696s1.f7181d;
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.AbstractC0683p
    public final void a(List list) {
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.AbstractC0683p
    public final void b(List list) {
        D2.j("", list);
        if (list != null) {
            synchronized (this.f7068f) {
                ((ArrayList) this.f7066d).clear();
                ((ArrayList) this.f7066d).addAll(list);
                d();
            }
        }
    }

    public final void c(List list) {
        D2.j("", list);
        if (list != null) {
            synchronized (this.f7068f) {
                this.f7071i = list;
                d();
            }
        }
    }

    public final void d() {
        int i4;
        AppInfo app;
        this.f7068f.clear();
        C0719y0 c0719y0 = this.f7064b;
        OneSearchSessionManager$ZeroEntryState oneSearchSessionManager$ZeroEntryState = c0719y0.f7287t;
        int i5 = c0719y0.f7288u;
        boolean z4 = com.google.android.apps.nexuslauncher.c.f7312a.get();
        OneSearchSessionManager$ZeroEntryState oneSearchSessionManager$ZeroEntryState2 = OneSearchSessionManager$ZeroEntryState.f6663d;
        if (z4 && (oneSearchSessionManager$ZeroEntryState == oneSearchSessionManager$ZeroEntryState2 || oneSearchSessionManager$ZeroEntryState == OneSearchSessionManager$ZeroEntryState.f6665f)) {
            i5 *= 2;
        }
        List subList = ((ArrayList) this.f7065c).subList(0, Math.min(i5, ((ArrayList) this.f7065c).size()));
        Query o4 = this.f7064b.o("");
        ArrayList arrayList = new ArrayList();
        for (int i6 = 0; i6 < subList.size(); i6++) {
            arrayList.add(D2.d((ItemInfo) subList.get(i6)));
        }
        D2.a(o4, arrayList);
        ArrayList g4 = C0663k.g(this.f7063a, this.f7064b, new ArrayList(arrayList));
        int size = g4.size();
        if (!((ArrayList) this.f7066d).isEmpty()) {
            this.f7067e = ((SearchTarget) ((ArrayList) this.f7066d).get(0)).getExtras().getByteArray("zero_state_cache");
        }
        OneSearchSessionManager$ZeroEntryState oneSearchSessionManager$ZeroEntryState3 = OneSearchSessionManager$ZeroEntryState.f6664e;
        int i7 = oneSearchSessionManager$ZeroEntryState == oneSearchSessionManager$ZeroEntryState3 ? this.f7072j : this.f7073k;
        ArrayList arrayList2 = (ArrayList) this.f7066d;
        ArrayList arrayList3 = new ArrayList(arrayList2.subList(0, Math.min(arrayList2.size(), i7)));
        this.f7068f.addAll(g4);
        if (LauncherPrefs.getPrefs(this.f7063a).getBoolean("pref_zero_state_query_ready", false)) {
            for (int i8 = 0; i8 < this.f7071i.size(); i8++) {
                SearchTarget searchTarget = (SearchTarget) this.f7071i.get(i8);
                if (C1498f.e(searchTarget)) {
                    AllAppsStore appsStore = ((ActivityContext) this.f7064b.f7271d).getAppsView().getAppsStore();
                    String string = searchTarget.getExtras().getString("class");
                    String str = (TextUtils.isEmpty(string) || (app = appsStore.getApp(new ComponentKey(new ComponentName(searchTarget.getPackageName(), string), searchTarget.getUserHandle()))) == null) ? "" : app.title;
                    if (!TextUtils.isEmpty(str)) {
                        searchTarget.getExtras().putCharSequence("mark_label", str);
                    }
                }
                if (searchTarget.getResultType() == 524288) {
                    C0719y0 c0719y02 = this.f7064b;
                    OneSearchSessionManager$ZeroEntryState oneSearchSessionManager$ZeroEntryState4 = c0719y02.f7287t;
                    if ((oneSearchSessionManager$ZeroEntryState4 == oneSearchSessionManager$ZeroEntryState2 && c0719y02.f7292y) || (oneSearchSessionManager$ZeroEntryState4 == oneSearchSessionManager$ZeroEntryState3 && c0719y02.f7293z)) {
                        D2.k(i8, this.f7071i);
                        if (oneSearchSessionManager$ZeroEntryState == oneSearchSessionManager$ZeroEntryState2 && (i4 = this.mWebInsertionIdx) > -1) {
                            this.mWebInsertionIdx = i4 - 2;
                        }
                    }
                }
                if (i8 < this.f7071i.size() && ((SearchTarget) this.f7071i.get(i8)).getLayoutType().equals("placeholder")) {
                    this.mWebInsertionIdx = this.f7068f.size() + i8;
                    D2.k(i8, this.f7071i);
                }
            }
            if (this.mWebInsertionIdx == -1 && this.f7071i.size() > 0 && arrayList3.size() > 0) {
                this.f7071i.add(C1499g.f12995a);
            }
            this.f7068f.addAll(C0663k.g(this.f7063a, this.f7064b, this.f7071i));
        }
        if (this.f7064b.M() && arrayList3.size() > 0) {
            ArrayList g5 = C0663k.g(this.f7063a, this.f7064b, arrayList3);
            int i9 = this.mWebInsertionIdx;
            BaseAllAppsAdapter.AdapterItem adapterItem = f7062l;
            if (i9 <= -1 || i9 >= this.f7068f.size()) {
                this.f7068f.addAll(g5);
            } else {
                this.f7068f.addAll(this.mWebInsertionIdx, g5);
                this.f7068f.add(arrayList3.size() + this.mWebInsertionIdx, adapterItem);
            }
            if (size > 0) {
                this.f7068f.add(size, adapterItem);
            }
        }
        if (this.f7068f.size() > 0) {
            if (com.google.android.apps.nexuslauncher.c.f7328q.get()) {
                this.f7068f.add(this.f7070h);
            }
            this.f7069g.forEach(new e3());
        }
    }

    public int getAllAppsWebCount() {
        return this.f7073k;
    }

    public int getQsbWebCount() {
        return this.f7072j;
    }

    public List getRecentTargets() {
        return this.f7071i;
    }

    public final void onTargetsAvailable(List list) {
        D2.j("", list);
        for (int i4 = 0; i4 < list.size(); i4++) {
            SearchTarget searchTarget = (SearchTarget) list.get(i4);
            if (searchTarget.getResultType() == 4096) {
                Bundle extras = searchTarget.getExtras();
                this.f7072j = extras.getInt("zero_state_qsb_web_suggest_count", this.f7072j);
                this.f7073k = extras.getInt("zero_state_all_apps_web_suggest_count", this.f7073k);
                LauncherPrefs.getPrefs(this.f7063a).edit().putBoolean("pref_zero_state_query_ready", extras.getBoolean("zero_state_query_ready", false)).apply();
                this.f7064b.f7269I = extras.getBoolean("enable_launch_animations", false);
                return;
            }
        }
    }
}
