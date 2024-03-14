package o0;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import java.util.HashMap;
import java.util.Map;
import k0.C1179D;
import w0.C1446c;
/* renamed from: o0.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1321b {

    /* renamed from: d  reason: collision with root package name */
    public static final Object f11845d = new Object();

    /* renamed from: a  reason: collision with root package name */
    public final Context f11846a;

    /* renamed from: b  reason: collision with root package name */
    public final String f11847b;

    /* renamed from: c  reason: collision with root package name */
    public final Map f11848c;

    public C1321b(Drawable.Callback callback, String str, Map map) {
        if (TextUtils.isEmpty(str) || str.charAt(str.length() - 1) == '/') {
            this.f11847b = str;
        } else {
            this.f11847b = str.concat("/");
        }
        if (callback instanceof View) {
            this.f11846a = ((View) callback).getContext();
            this.f11848c = map;
            return;
        }
        C1446c.b("LottieDrawable must be inside of a view for images to work.");
        this.f11848c = new HashMap();
        this.f11846a = null;
    }

    public final void a(String str, Bitmap bitmap) {
        synchronized (f11845d) {
            ((C1179D) this.f11848c.get(str)).f11047d = bitmap;
        }
    }
}
