package k0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import p0.C1345g;
import w0.C1446c;
/* loaded from: classes.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    public static final Map f11150a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public static final byte[] f11151b = {80, 75, 3, 4};

    public static K a(final String str, Callable callable) {
        Throwable th;
        final C1198m c1198m = str == null ? null : (C1198m) C1345g.f11921b.f11922a.a(str);
        if (c1198m != null) {
            return new K(new Callable() { // from class: k0.p
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new C1183H(C1198m.this);
                }
            }, false);
        }
        Map map = f11150a;
        if (str != null) {
            HashMap hashMap = (HashMap) map;
            if (hashMap.containsKey(str)) {
                return (K) hashMap.get(str);
            }
        }
        K k4 = new K(callable, false);
        if (str != null) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            k4.a(new InterfaceC1180E() { // from class: k0.q
                @Override // k0.InterfaceC1180E
                public final void a(Object obj) {
                    int i4 = r3;
                    AtomicBoolean atomicBoolean2 = atomicBoolean;
                    String str2 = str;
                    switch (i4) {
                        case 0:
                            C1198m c1198m2 = (C1198m) obj;
                            ((HashMap) s.f11150a).remove(str2);
                            atomicBoolean2.set(true);
                            return;
                        default:
                            Throwable th2 = (Throwable) obj;
                            ((HashMap) s.f11150a).remove(str2);
                            atomicBoolean2.set(true);
                            return;
                    }
                }
            });
            InterfaceC1180E interfaceC1180E = new InterfaceC1180E() { // from class: k0.q
                @Override // k0.InterfaceC1180E
                public final void a(Object obj) {
                    int i4 = r3;
                    AtomicBoolean atomicBoolean2 = atomicBoolean;
                    String str2 = str;
                    switch (i4) {
                        case 0:
                            C1198m c1198m2 = (C1198m) obj;
                            ((HashMap) s.f11150a).remove(str2);
                            atomicBoolean2.set(true);
                            return;
                        default:
                            Throwable th2 = (Throwable) obj;
                            ((HashMap) s.f11150a).remove(str2);
                            atomicBoolean2.set(true);
                            return;
                    }
                }
            };
            synchronized (k4) {
                C1183H c1183h = k4.f11097d;
                if (c1183h != null && (th = c1183h.f11090b) != null) {
                    interfaceC1180E.a(th);
                }
                k4.f11095b.add(interfaceC1180E);
            }
            if (!atomicBoolean.get()) {
                ((HashMap) map).put(str, k4);
            }
        }
        return k4;
    }

    public static C1183H b(Context context, String str, String str2) {
        try {
            if (!str.endsWith(".zip") && !str.endsWith(".lottie")) {
                return c(context.getAssets().open(str), str2);
            }
            return f(new ZipInputStream(context.getAssets().open(str)), str2);
        } catch (IOException e4) {
            return new C1183H(e4);
        }
    }

    public static C1183H c(InputStream inputStream, String str) {
        try {
            x3.k kVar = new x3.k(x3.e.a(inputStream));
            String[] strArr = com.airbnb.lottie.parser.moshi.a.f4383h;
            return d(new com.airbnb.lottie.parser.moshi.b(kVar), str, true);
        } finally {
            w0.h.b(inputStream);
        }
    }

    public static C1183H d(com.airbnb.lottie.parser.moshi.b bVar, String str, boolean z4) {
        try {
            try {
                C1198m a4 = u0.w.a(bVar);
                if (str != null) {
                    C1345g.f11921b.f11922a.b(str, a4);
                }
                C1183H c1183h = new C1183H(a4);
                if (z4) {
                    w0.h.b(bVar);
                }
                return c1183h;
            } catch (Exception e4) {
                C1183H c1183h2 = new C1183H(e4);
                if (z4) {
                    w0.h.b(bVar);
                }
                return c1183h2;
            }
        } catch (Throwable th) {
            if (z4) {
                w0.h.b(bVar);
            }
            throw th;
        }
    }

    public static C1183H e(int i4, Context context, String str) {
        Boolean bool;
        try {
            x3.k kVar = new x3.k(x3.e.a(context.getResources().openRawResource(i4)));
            try {
                x3.k a4 = kVar.a();
                byte[] bArr = f11151b;
                int length = bArr.length;
                int i5 = 0;
                while (true) {
                    if (i5 >= length) {
                        a4.close();
                        bool = Boolean.TRUE;
                        break;
                    }
                    if (a4.b() != bArr[i5]) {
                        bool = Boolean.FALSE;
                        break;
                    }
                    i5++;
                }
            } catch (Exception unused) {
                C1446c.f12720a.getClass();
                bool = Boolean.FALSE;
            } catch (NoSuchMethodError unused2) {
                bool = Boolean.FALSE;
            }
            return bool.booleanValue() ? f(new ZipInputStream(new x3.j(kVar)), str) : c(new x3.j(kVar), str);
        } catch (Resources.NotFoundException e4) {
            return new C1183H(e4);
        }
    }

    public static C1183H f(ZipInputStream zipInputStream, String str) {
        try {
            return g(zipInputStream, str);
        } finally {
            w0.h.b(zipInputStream);
        }
    }

    public static C1183H g(ZipInputStream zipInputStream, String str) {
        C1179D c1179d;
        String[] split;
        HashMap hashMap = new HashMap();
        try {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            C1198m c1198m = null;
            while (nextEntry != null) {
                String name = nextEntry.getName();
                if (name.contains("__MACOSX")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().equalsIgnoreCase("manifest.json")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().contains(".json")) {
                    x3.k kVar = new x3.k(x3.e.a(zipInputStream));
                    String[] strArr = com.airbnb.lottie.parser.moshi.a.f4383h;
                    c1198m = (C1198m) d(new com.airbnb.lottie.parser.moshi.b(kVar), null, false).f11089a;
                } else {
                    if (!name.contains(".png") && !name.contains(".webp") && !name.contains(".jpg") && !name.contains(".jpeg")) {
                        zipInputStream.closeEntry();
                    }
                    hashMap.put(name.split("/")[split.length - 1], BitmapFactory.decodeStream(zipInputStream));
                }
                nextEntry = zipInputStream.getNextEntry();
            }
            if (c1198m == null) {
                return new C1183H(new IllegalArgumentException("Unable to parse composition"));
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                String str2 = (String) entry.getKey();
                Iterator it = c1198m.f11124d.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        c1179d = null;
                        break;
                    }
                    c1179d = (C1179D) it.next();
                    if (c1179d.f11046c.equals(str2)) {
                        break;
                    }
                }
                if (c1179d != null) {
                    Bitmap bitmap = (Bitmap) entry.getValue();
                    w0.g gVar = w0.h.f12735a;
                    int width = bitmap.getWidth();
                    int i4 = c1179d.f11044a;
                    int i5 = c1179d.f11045b;
                    if (width != i4 || bitmap.getHeight() != i5) {
                        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i4, i5, true);
                        bitmap.recycle();
                        bitmap = createScaledBitmap;
                    }
                    c1179d.f11047d = bitmap;
                }
            }
            for (Map.Entry entry2 : c1198m.f11124d.entrySet()) {
                if (((C1179D) entry2.getValue()).f11047d == null) {
                    return new C1183H(new IllegalStateException("There is no image for " + ((C1179D) entry2.getValue()).f11046c));
                }
            }
            if (str != null) {
                C1345g.f11921b.f11922a.b(str, c1198m);
            }
            return new C1183H(c1198m);
        } catch (IOException e4) {
            return new C1183H(e4);
        }
    }

    public static String h(int i4, Context context) {
        StringBuilder sb = new StringBuilder("rawRes");
        sb.append((context.getResources().getConfiguration().uiMode & 48) == 32 ? "_night_" : "_day_");
        sb.append(i4);
        return sb.toString();
    }
}
