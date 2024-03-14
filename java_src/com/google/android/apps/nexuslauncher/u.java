package com.google.android.apps.nexuslauncher;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IOUtils;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.SafeCloseable;
import com.google.android.apps.nexuslauncher.searchwidget.thirdparty.IntentDefinitionType;
import com.google.protobuf.ByteString;
import com.google.protobuf.S;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class u implements SafeCloseable {

    /* renamed from: m  reason: collision with root package name */
    public static final MainThreadInitializedObject f7612m = new MainThreadInitializedObject(l.f7368a);

    /* renamed from: n  reason: collision with root package name */
    public static final Looper f7613n = Executors.createAndStartNewLooper(0, "OSEManager");

    /* renamed from: d  reason: collision with root package name */
    public final Context f7614d;

    /* renamed from: e  reason: collision with root package name */
    public final OSEManager$NetworkFetcher f7615e;

    /* renamed from: f  reason: collision with root package name */
    public final String f7616f;

    /* renamed from: g  reason: collision with root package name */
    public final Object f7617g;

    /* renamed from: h  reason: collision with root package name */
    public final Handler f7618h;

    /* renamed from: i  reason: collision with root package name */
    public p f7619i;

    /* renamed from: j  reason: collision with root package name */
    public final t f7620j;

    /* renamed from: k  reason: collision with root package name */
    public final r f7621k;

    /* renamed from: l  reason: collision with root package name */
    public final List f7622l;

    public u(Context context) {
        OSEManager$NetworkFetcher oSEManager$NetworkFetcher = new OSEManager$NetworkFetcher();
        kotlin.jvm.internal.h.e(context, "context");
        this.f7614d = context;
        this.f7615e = oSEManager$NetworkFetcher;
        this.f7616f = "cached_search_info.pb";
        this.f7617g = new Object();
        Handler handler = new Handler(f7613n);
        this.f7618h = handler;
        this.f7619i = new p("com.google.android.googlequicksearchbox", null);
        this.f7620j = new t(this, handler);
        this.f7621k = new r(this);
        this.f7622l = new ArrayList();
        handler.post(new k(context, this, 0));
        d(0);
    }

    public static Intent b(String str, Z1.b bVar) {
        if (bVar.h() && bVar.f()) {
            if (bVar.e() == IntentDefinitionType.URI_BASED && bVar.i()) {
                return new Intent(bVar.b(), Uri.parse(bVar.getUri())).setPackage(str);
            }
            if (bVar.e() == IntentDefinitionType.CLASS_BASED && bVar.g()) {
                return new Intent(bVar.b()).setComponent(new ComponentName(str, bVar.c()));
            }
            if (bVar.e() == IntentDefinitionType.ACTION_BASED) {
                return new Intent(bVar.b()).setPackage(str);
            }
        }
        return null;
    }

    public final void a(m listener) {
        kotlin.jvm.internal.h.e(listener, "listener");
        ((ArrayList) this.f7622l).add(listener);
    }

    public final void c(m listener) {
        kotlin.jvm.internal.h.e(listener, "listener");
        ((ArrayList) this.f7622l).remove(listener);
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.f7618h.removeCallbacksAndMessages(this.f7617g);
        this.f7618h.post(new q(this));
    }

    public final void d(int i4) {
        long pow = i4 == 0 ? 0L : ((long) Math.pow(2.0d, i4)) * 1000;
        this.f7618h.removeCallbacksAndMessages(this.f7617g);
        this.f7618h.postDelayed(new s(this, i4), this.f7617g, pow);
    }

    public final Bitmap decodeBitmap(byte[] bytes) {
        kotlin.jvm.internal.h.e(bytes, "bytes");
        int length = bytes.length;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.outConfig = Bitmap.Config.HARDWARE;
        e3.f fVar = e3.f.f9037a;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bytes, 0, length, options);
        kotlin.jvm.internal.h.d(decodeByteArray, "decodeByteArray(\n       …nfig.HARDWARE }\n        )");
        return decodeByteArray;
    }

    public final n fetchTargetInfo(String osePkg) {
        Object obj;
        kotlin.jvm.internal.h.e(osePkg, "osePkg");
        this.f7615e.getClass();
        S b4 = Z1.k.c(OSEManager$NetworkFetcher.a("https://www.gstatic.com/android_search/search_providers/v1/search_providers.pb")).b();
        if (b4 != null) {
            Iterator<E> it = b4.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (kotlin.jvm.internal.h.a(((Z1.g) obj).getPackageName(), osePkg)) {
                    break;
                }
            }
            Z1.g gVar = (Z1.g) obj;
            if (gVar == null || !gVar.d()) {
                return null;
            }
            Z1.d l4 = Z1.e.l();
            l4.a(osePkg);
            OSEManager$NetworkFetcher oSEManager$NetworkFetcher = this.f7615e;
            String c4 = gVar.b().c();
            kotlin.jvm.internal.h.d(c4, "provider.searchIcon.iconXxxhdpiUrl");
            oSEManager$NetworkFetcher.getClass();
            byte[] a4 = OSEManager$NetworkFetcher.a(c4);
            l4.b(ByteString.j(a4, 0, a4.length));
            Z1.b d4 = gVar.b().d();
            kotlin.jvm.internal.h.d(d4, "provider.searchIcon.intentDefinition");
            Intent b5 = b(osePkg, d4);
            kotlin.jvm.internal.h.b(b5);
            l4.c(b5.toUri(0));
            if (gVar.e()) {
                Z1.b d5 = gVar.c().d();
                kotlin.jvm.internal.h.d(d5, "provider.voiceIcon.intentDefinition");
                Intent b6 = b(osePkg, d5);
                if (b6 != null) {
                    OSEManager$NetworkFetcher oSEManager$NetworkFetcher2 = this.f7615e;
                    String c5 = gVar.c().c();
                    kotlin.jvm.internal.h.d(c5, "provider.voiceIcon.iconXxxhdpiUrl");
                    oSEManager$NetworkFetcher2.getClass();
                    byte[] a5 = OSEManager$NetworkFetcher.a(c5);
                    l4.d(ByteString.j(a5, 0, a5.length));
                    l4.e(b6.toUri(0));
                }
            }
            byte[] byteArray = ((Z1.e) l4.build()).toByteArray();
            this.f7614d.getFilesDir().mkdirs();
            FileOutputStream openFileOutput = this.f7614d.openFileOutput(this.f7616f, 0);
            try {
                openFileOutput.write(byteArray);
                e3.f fVar = e3.f.f9037a;
                k3.a.a(openFileOutput, null);
                return parseLocalCache(osePkg);
            } finally {
            }
        }
        return null;
    }

    public final n parseLocalCache(String osePkg) {
        o oVar;
        kotlin.jvm.internal.h.e(osePkg, "osePkg");
        try {
            FileInputStream fileInputStream = new FileInputStream(this.f7614d.getFileStreamPath(this.f7616f));
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            IOUtils.copy(fileInputStream, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            fileInputStream.close();
            Z1.e m4 = Z1.e.m(byteArray);
            if (kotlin.jvm.internal.h.a(m4.getPackageName(), osePkg)) {
                byte[] q4 = m4.g().q();
                kotlin.jvm.internal.h.d(q4, "localInfo.searchIcon.toByteArray()");
                Bitmap decodeBitmap = decodeBitmap(q4);
                Intent parseUri = Intent.parseUri(m4.h(), 0);
                kotlin.jvm.internal.h.d(parseUri, "parseUri(localInfo.searchIntent, 0)");
                o oVar2 = new o(decodeBitmap, parseUri);
                if (m4.k()) {
                    byte[] q5 = m4.i().q();
                    kotlin.jvm.internal.h.d(q5, "localInfo.voiceIcon.toByteArray()");
                    Bitmap decodeBitmap2 = decodeBitmap(q5);
                    Intent parseUri2 = Intent.parseUri(m4.j(), 0);
                    kotlin.jvm.internal.h.d(parseUri2, "parseUri(localInfo.voiceIntent, 0)");
                    oVar = new o(decodeBitmap2, parseUri2);
                } else {
                    oVar = null;
                }
                return new n(oVar2, oVar);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
