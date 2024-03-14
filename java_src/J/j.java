package J;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static final q.l f596a = new q.l(16);

    /* renamed from: b  reason: collision with root package name */
    public static final ExecutorService f597b;

    /* renamed from: c  reason: collision with root package name */
    public static final Object f598c;

    /* renamed from: d  reason: collision with root package name */
    public static final q.m f599d;

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new n());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f597b = threadPoolExecutor;
        f598c = new Object();
        f599d = new q.m();
    }

    public static i a(String str, Context context, f fVar, int i4) {
        int i5;
        ParcelFileDescriptor openFileDescriptor;
        q.l lVar = f596a;
        Typeface typeface = (Typeface) lVar.a(str);
        if (typeface != null) {
            return new i(typeface);
        }
        try {
            k a4 = e.a(context, fVar);
            l[] lVarArr = a4.f601b;
            int i6 = a4.f600a;
            if (i6 != 0) {
                if (i6 == 1) {
                    i5 = -2;
                }
                i5 = -3;
            } else if (lVarArr == null || lVarArr.length == 0) {
                i5 = 1;
            } else {
                int length = lVarArr.length;
                int i7 = 0;
                while (true) {
                    if (i7 >= length) {
                        i5 = 0;
                        break;
                    }
                    int i8 = lVarArr[i7].f606e;
                    if (i8 == 0) {
                        i7++;
                    } else if (i8 >= 0) {
                        i5 = i8;
                    }
                }
            }
            if (i5 != 0) {
                return new i(i5);
            }
            E.g.f336a.getClass();
            ContentResolver contentResolver = context.getContentResolver();
            Typeface typeface2 = null;
            try {
                FontFamily.Builder builder = null;
                for (l lVar2 : lVarArr) {
                    try {
                        openFileDescriptor = contentResolver.openFileDescriptor(lVar2.f602a, "r", null);
                    } catch (IOException unused) {
                    }
                    if (openFileDescriptor != null) {
                        try {
                            Font build = new Font.Builder(openFileDescriptor).setWeight(lVar2.f604c).setSlant(lVar2.f605d ? 1 : 0).setTtcIndex(lVar2.f603b).build();
                            if (builder == null) {
                                builder = new FontFamily.Builder(build);
                            } else {
                                builder.addFont(build);
                            }
                        } catch (Throwable th) {
                            try {
                                openFileDescriptor.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                            break;
                        }
                    } else if (openFileDescriptor == null) {
                    }
                    openFileDescriptor.close();
                }
                if (builder != null) {
                    FontFamily build2 = builder.build();
                    typeface2 = new Typeface.CustomFallbackBuilder(build2).setStyle(E.h.a(build2, i4).getStyle()).build();
                }
            } catch (Exception unused2) {
            }
            if (typeface2 != null) {
                lVar.b(str, typeface2);
                return new i(typeface2);
            }
            return new i(-3);
        } catch (PackageManager.NameNotFoundException unused3) {
            return new i(-1);
        }
    }
}
