package com.google.android.apps.nexuslauncher.qsb;

import W1.C0076a;
import W1.C0077b;
import W1.c;
import W1.d;
import W1.e;
import W1.f;
import W1.g;
import android.app.appsearch.AppSearchManager;
import android.app.appsearch.GetByDocumentIdRequest;
import android.content.Context;
import android.net.Uri;
import android.provider.Settings;
import android.util.Log;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.util.EventLogArray;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.util.SettingsCache;
import com.android.launcher3.util.SimpleBroadcastReceiver;
import com.android.quickstep.util.AssistStateManager;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import com.google.android.apps.nexuslauncher.qsb.AssistStateManagerGoogle;
import java.io.PrintWriter;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.Function;
/* loaded from: classes.dex */
public class AssistStateManagerGoogle extends AssistStateManager implements SafeCloseable {

    /* renamed from: q  reason: collision with root package name */
    public static final Uri f7507q = Settings.Secure.getUriFor("search_press_hold_nav_handle_enabled");

    /* renamed from: r  reason: collision with root package name */
    public static final Uri f7508r = Settings.Secure.getUriFor("search_long_press_home_enabled");

    /* renamed from: d  reason: collision with root package name */
    public final CompletableFuture f7509d;

    /* renamed from: e  reason: collision with root package name */
    public final GetByDocumentIdRequest f7510e;

    /* renamed from: f  reason: collision with root package name */
    public final Context f7511f;

    /* renamed from: g  reason: collision with root package name */
    public final g f7512g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f7513h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f7514i;

    /* renamed from: j  reason: collision with root package name */
    public final SimpleBroadcastReceiver f7515j;

    /* renamed from: k  reason: collision with root package name */
    public final EventLogArray f7516k;

    /* renamed from: l  reason: collision with root package name */
    public final SettingsCache f7517l;

    /* renamed from: m  reason: collision with root package name */
    public final C0077b f7518m;

    /* renamed from: n  reason: collision with root package name */
    public final C0077b f7519n;

    /* renamed from: o  reason: collision with root package name */
    public boolean f7520o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f7521p;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [W1.b, com.android.launcher3.util.SettingsCache$OnChangeListener] */
    /* JADX WARN: Type inference failed for: r0v8, types: [W1.b, com.android.launcher3.util.SettingsCache$OnChangeListener] */
    public AssistStateManagerGoogle(Context context) {
        CompletableFuture completableFuture = new CompletableFuture();
        this.f7509d = completableFuture;
        this.f7510e = new GetByDocumentIdRequest.Builder("omni").addIds("entry_point").build();
        this.f7513h = false;
        this.f7514i = false;
        SimpleBroadcastReceiver simpleBroadcastReceiver = new SimpleBroadcastReceiver(new C0076a(this, 0));
        this.f7515j = simpleBroadcastReceiver;
        this.f7516k = new EventLogArray("AssistStateManagerGoogle");
        this.f7511f = context;
        this.f7512g = new g(this, context);
        ((AppSearchManager) context.getSystemService(AppSearchManager.class)).createGlobalSearchSession(new e(1), new C0076a(this, 2));
        completableFuture.thenAcceptAsync((Consumer) new d(this, context), (Executor) new e(0)).exceptionally((Function<Throwable, ? extends Void>) new f(this, context));
        Executors.UI_HELPER_EXECUTOR.execute(new c(this));
        simpleBroadcastReceiver.registerPkgActions(context, "com.google.android.googlequicksearchbox", "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED", "android.intent.action.PACKAGE_REMOVED");
        SettingsCache settingsCache = (SettingsCache) SettingsCache.INSTANCE.get(context);
        this.f7517l = settingsCache;
        ?? r02 = new SettingsCache.OnChangeListener(this) { // from class: W1.b

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ AssistStateManagerGoogle f1887e;

            {
                this.f1887e = this;
            }

            @Override // com.android.launcher3.util.SettingsCache.OnChangeListener
            public final void onSettingsChanged(boolean z4) {
                int i4 = r2;
                AssistStateManagerGoogle assistStateManagerGoogle = this.f1887e;
                switch (i4) {
                    case 0:
                        assistStateManagerGoogle.f7520o = z4;
                        return;
                    default:
                        assistStateManagerGoogle.f7521p = z4;
                        return;
                }
            }
        };
        this.f7518m = r02;
        Uri uri = f7507q;
        settingsCache.register(uri, r02);
        this.f7520o = settingsCache.getValue(1, uri);
        ?? r03 = new SettingsCache.OnChangeListener(this) { // from class: W1.b

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ AssistStateManagerGoogle f1887e;

            {
                this.f1887e = this;
            }

            @Override // com.android.launcher3.util.SettingsCache.OnChangeListener
            public final void onSettingsChanged(boolean z4) {
                int i4 = r2;
                AssistStateManagerGoogle assistStateManagerGoogle = this.f1887e;
                switch (i4) {
                    case 0:
                        assistStateManagerGoogle.f7520o = z4;
                        return;
                    default:
                        assistStateManagerGoogle.f7521p = z4;
                        return;
                }
            }
        };
        this.f7519n = r03;
        Uri uri2 = f7508r;
        settingsCache.register(uri2, r03);
        this.f7521p = settingsCache.getValue(1, uri2);
    }

    public final void a(Context context, Exception exc) {
        StatsLogManager.newInstance(context).logger().log(NexusLauncherEvent.LAUNCHER_READ_OMNI_AVAILABILITY_FROM_APP_SEARCH_FAILED);
        Log.d("AssistStateManagerGoogle", "Failed to fetch from AppSearch", exc);
        synchronized (this.f7516k) {
            this.f7516k.addLog("AppSearch fetch failed");
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.f7509d.thenAcceptAsync((Consumer) new C0076a(this, 1));
        SimpleBroadcastReceiver simpleBroadcastReceiver = this.f7515j;
        Context context = this.f7511f;
        simpleBroadcastReceiver.getClass();
        try {
            context.unregisterReceiver(simpleBroadcastReceiver);
        } catch (IllegalArgumentException unused) {
        }
        this.f7517l.unregister(f7507q, this.f7518m);
        this.f7517l.unregister(f7508r, this.f7519n);
    }

    @Override // com.android.quickstep.util.AssistStateManager
    public final void dump(String str, PrintWriter printWriter) {
        synchronized (this.f7516k) {
            this.f7516k.dump(str, printWriter);
        }
    }

    @Override // com.android.quickstep.util.AssistStateManager
    public final boolean isSearchAvailable() {
        return this.f7514i && this.f7513h;
    }

    @Override // com.android.quickstep.util.AssistStateManager
    public final boolean isSettingsHomeButtonEnabled() {
        return this.f7521p;
    }

    @Override // com.android.quickstep.util.AssistStateManager
    public final boolean isSettingsNavHandleEnabled() {
        return this.f7520o;
    }
}
