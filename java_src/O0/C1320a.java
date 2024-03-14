package o0;

import android.content.res.AssetManager;
import android.graphics.drawable.Drawable;
import android.view.View;
import java.util.HashMap;
import java.util.Map;
import p0.C1347i;
import w0.C1446c;
/* renamed from: o0.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1320a {

    /* renamed from: d  reason: collision with root package name */
    public final AssetManager f11843d;

    /* renamed from: a  reason: collision with root package name */
    public final C1347i f11840a = new C1347i();

    /* renamed from: b  reason: collision with root package name */
    public final Map f11841b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public final Map f11842c = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    public final String f11844e = ".ttf";

    public C1320a(Drawable.Callback callback) {
        if (callback instanceof View) {
            this.f11843d = ((View) callback).getContext().getAssets();
            return;
        }
        C1446c.b("LottieDrawable must be inside of a view for images to work.");
        this.f11843d = null;
    }
}
