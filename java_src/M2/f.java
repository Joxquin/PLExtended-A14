package M2;

import android.content.ContentResolver;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final ContentResolver f1374a;

    /* renamed from: b  reason: collision with root package name */
    public final Uri f1375b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1376c;

    /* renamed from: d  reason: collision with root package name */
    public final Icon.OnDrawableLoadedListener f1377d;

    /* renamed from: e  reason: collision with root package name */
    public Drawable f1378e;

    public f(Uri uri, ContentResolver contentResolver, int i4, b bVar) {
        this.f1375b = uri;
        this.f1376c = i4;
        this.f1374a = contentResolver;
        this.f1377d = bVar;
    }
}
