package com.google.android.apps.nexuslauncher.allapps;

import com.android.launcher3.allapps.BaseSearchConfig;
import com.android.launcher3.config.FeatureFlags;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.s1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0696s1 extends BaseSearchConfig {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f7178a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f7179b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f7180c;

    /* renamed from: d  reason: collision with root package name */
    public final int f7181d;

    /* renamed from: e  reason: collision with root package name */
    public final int f7182e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f7183f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f7184g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f7185h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f7186i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f7187j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f7188k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f7189l;

    /* renamed from: m  reason: collision with root package name */
    public final boolean f7190m;

    /* renamed from: n  reason: collision with root package name */
    public final boolean f7191n;

    /* renamed from: o  reason: collision with root package name */
    public final boolean f7192o;

    /* renamed from: p  reason: collision with root package name */
    public final boolean f7193p;

    /* renamed from: q  reason: collision with root package name */
    public final boolean f7194q;

    /* renamed from: r  reason: collision with root package name */
    public final boolean f7195r;

    /* renamed from: s  reason: collision with root package name */
    public final int f7196s;

    /* renamed from: t  reason: collision with root package name */
    public final int f7197t;

    /* renamed from: u  reason: collision with root package name */
    public final int f7198u;

    /* renamed from: v  reason: collision with root package name */
    public final /* synthetic */ C0700t1 f7199v;

    public C0696s1(C0700t1 c0700t1, InterfaceC0692r1 interfaceC0692r1, InterfaceC0692r1 interfaceC0692r12) {
        this.f7199v = c0700t1;
        Boolean bool = Boolean.FALSE;
        this.f7178a = ((Boolean) interfaceC0692r1.a(bool, "enable_web_suggest_on_default_browser")).booleanValue();
        this.f7180c = ((Boolean) interfaceC0692r1.a(bool, "use_fallback_app_search")).booleanValue();
        this.f7183f = ((Boolean) interfaceC0692r1.a(bool, "show_three_dot_menu_qsb")).booleanValue();
        Boolean bool2 = Boolean.TRUE;
        this.f7179b = ((Boolean) interfaceC0692r1.a(bool2, "enable_one_search")).booleanValue();
        this.f7184g = ((Boolean) interfaceC0692r1.a(bool2, "use_app_search_for_web")).booleanValue();
        this.f7185h = ((Boolean) interfaceC0692r1.a(bool2, "ENABLE_QUICK_SEARCH")).booleanValue();
        this.f7186i = ((Boolean) interfaceC0692r1.a(bool2, "SHOW_SEARCH_EDUCARD_QSB")).booleanValue();
        this.f7187j = ((Boolean) interfaceC0692r1.a(bool2, "ENABLE_IME_LATENCY_LOGGER")).booleanValue();
        this.f7188k = ((Boolean) interfaceC0692r1.a(bool2, "ENABLE_KEYBOARD_TRANSITION_SYNC")).booleanValue();
        this.f7189l = ((Boolean) interfaceC0692r1.a(bool2, "enable_rich_answer")).booleanValue();
        this.f7190m = ((Boolean) interfaceC0692r1.a(bool, "enable_quick_launch_v2")).booleanValue();
        this.f7191n = ((Boolean) interfaceC0692r1.a(bool, "enable_quick_launch_v3_qsb")).booleanValue();
        this.f7192o = ((Boolean) interfaceC0692r1.a(bool, "enable_quick_launch_v3_aa")).booleanValue();
        this.f7193p = ((Boolean) interfaceC0692r1.a(bool, "gboard_update_enter_key")).booleanValue();
        this.f7194q = ((Boolean) interfaceC0692r1.a(bool2, "enable_impression_logging")).booleanValue();
        this.f7195r = ((Boolean) interfaceC0692r1.a(bool, "enable_hide_gboard_header_static")).booleanValue();
        this.f7181d = ((Integer) interfaceC0692r12.a(3, "short_suggestion_cnt")).intValue();
        this.f7182e = ((Integer) interfaceC0692r12.a(10, "qsb_web_cnt")).intValue();
        this.f7196s = ((Integer) interfaceC0692r12.a(2, "uninstalled_apps_query_lower_bound")).intValue();
        this.f7197t = ((Integer) interfaceC0692r12.a(20, "uninstalled_apps_query_upper_bound")).intValue();
        this.f7198u = ((Integer) interfaceC0692r12.a(2, "uninstalled_apps_count")).intValue();
    }

    public final boolean a() {
        boolean z4 = com.google.android.apps.nexuslauncher.c.f7334w.get();
        C0700t1 c0700t1 = this.f7199v;
        return FeatureFlags.ENABLE_SEARCH_UNINSTALLED_APPS.get() && c0700t1.f7224q && (z4 ? ((com.google.android.apps.nexuslauncher.u) com.google.android.apps.nexuslauncher.u.f7612m.get(c0700t1.f7213f)).f7619i.f7505c : true);
    }

    @Override // com.android.launcher3.allapps.BaseSearchConfig
    public final boolean isKeyboardSyncEnabled() {
        return this.f7188k;
    }
}
