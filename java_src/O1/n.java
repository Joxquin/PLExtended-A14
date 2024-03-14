package O1;

import android.content.Context;
import android.net.Uri;
/* loaded from: classes.dex */
public final class n {

    /* renamed from: b  reason: collision with root package name */
    public static final Uri f1472b;

    /* renamed from: c  reason: collision with root package name */
    public static final String[] f1473c;

    /* renamed from: d  reason: collision with root package name */
    public static final Uri f1474d;

    /* renamed from: a  reason: collision with root package name */
    public final Context f1475a;

    static {
        Uri build = new Uri.Builder().scheme("content").authority("com.google.android.apps.wallpaper.recents").build();
        f1472b = build;
        f1473c = new String[]{"id", "placeholder_color", "component", "title"};
        f1474d = build.buildUpon().appendPath("list_recent").build();
    }

    public n(Context context) {
        this.f1475a = context;
    }
}
