package K2;

import android.content.ContentResolver;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.android.launcher3.icons.RoundDrawableWrapper;
import java.lang.ref.WeakReference;
/* renamed from: K2.k  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0038k extends RoundDrawableWrapper {

    /* renamed from: d  reason: collision with root package name */
    public final ContentResolver f989d;

    /* renamed from: e  reason: collision with root package name */
    public final Uri f990e;

    /* renamed from: f  reason: collision with root package name */
    public Drawable f991f;

    /* renamed from: g  reason: collision with root package name */
    public final int f992g;

    /* renamed from: h  reason: collision with root package name */
    public final WeakReference f993h;

    /* renamed from: i  reason: collision with root package name */
    public final WeakReference f994i;

    public C0038k(float f4, int i4, ContentResolver contentResolver, Uri uri, WeakReference weakReference, WeakReference weakReference2) {
        super(new ColorDrawable(0), f4);
        this.f990e = uri;
        this.f992g = i4;
        this.f989d = contentResolver;
        this.f993h = weakReference;
        this.f994i = weakReference2;
    }
}
