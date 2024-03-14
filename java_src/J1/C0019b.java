package J1;

import android.os.Bundle;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.ContentParcelables$AppIconType;
/* renamed from: J1.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0019b {

    /* renamed from: a  reason: collision with root package name */
    public String f711a;

    /* renamed from: b  reason: collision with root package name */
    public C0020c f712b;

    /* renamed from: c  reason: collision with root package name */
    public ContentParcelables$AppIconType f713c;

    public C0019b(Bundle bundle) {
        if (bundle.containsKey("iconUri")) {
            this.f711a = bundle.getString("iconUri");
        }
        ContentParcelables$AppIconType contentParcelables$AppIconType = null;
        if (bundle.containsKey("appPackage")) {
            Bundle bundle2 = bundle.getBundle("appPackage");
            if (bundle2 == null) {
                this.f712b = null;
            } else {
                this.f712b = new C0020c(0, bundle2);
            }
        }
        if (bundle.containsKey("appIconType")) {
            Bundle bundle3 = bundle.getBundle("appIconType");
            if (bundle3 == null) {
                this.f713c = null;
                return;
            }
            int i4 = bundle3.getInt("value");
            if (i4 == 0) {
                contentParcelables$AppIconType = ContentParcelables$AppIconType.UNDEFINED;
            } else if (i4 == 1) {
                contentParcelables$AppIconType = ContentParcelables$AppIconType.URI;
            } else if (i4 == 2) {
                contentParcelables$AppIconType = ContentParcelables$AppIconType.DRAWABLE;
            }
            this.f713c = contentParcelables$AppIconType;
        }
    }
}
