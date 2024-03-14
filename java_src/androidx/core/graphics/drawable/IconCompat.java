package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
/* loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: k  reason: collision with root package name */
    public static final PorterDuff.Mode f3067k = PorterDuff.Mode.SRC_IN;

    /* renamed from: a  reason: collision with root package name */
    public int f3068a;

    /* renamed from: b  reason: collision with root package name */
    public Object f3069b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f3070c;

    /* renamed from: d  reason: collision with root package name */
    public Parcelable f3071d;

    /* renamed from: e  reason: collision with root package name */
    public int f3072e;

    /* renamed from: f  reason: collision with root package name */
    public int f3073f;

    /* renamed from: g  reason: collision with root package name */
    public ColorStateList f3074g;

    /* renamed from: h  reason: collision with root package name */
    public PorterDuff.Mode f3075h;

    /* renamed from: i  reason: collision with root package name */
    public String f3076i;

    /* renamed from: j  reason: collision with root package name */
    public String f3077j;

    public IconCompat() {
        this.f3068a = -1;
        this.f3070c = null;
        this.f3071d = null;
        this.f3072e = 0;
        this.f3073f = 0;
        this.f3074g = null;
        this.f3075h = f3067k;
        this.f3076i = null;
    }

    public static IconCompat b(Context context, Icon icon) {
        IconCompat iconCompat;
        icon.getClass();
        int type = icon.getType();
        if (type == 2) {
            String resPackage = icon.getResPackage();
            try {
                return c(icon.getResId(), f(context, resPackage), resPackage);
            } catch (Resources.NotFoundException unused) {
                throw new IllegalArgumentException("Icon resource cannot be found");
            }
        }
        if (type == 4) {
            Uri uri = icon.getUri();
            uri.getClass();
            String uri2 = uri.toString();
            uri2.getClass();
            iconCompat = new IconCompat(4);
            iconCompat.f3069b = uri2;
        } else if (type != 6) {
            IconCompat iconCompat2 = new IconCompat(-1);
            iconCompat2.f3069b = icon;
            return iconCompat2;
        } else {
            Uri uri3 = icon.getUri();
            uri3.getClass();
            String uri4 = uri3.toString();
            uri4.getClass();
            iconCompat = new IconCompat(6);
            iconCompat.f3069b = uri4;
        }
        return iconCompat;
    }

    public static IconCompat c(int i4, Resources resources, String str) {
        str.getClass();
        if (i4 != 0) {
            IconCompat iconCompat = new IconCompat(2);
            iconCompat.f3072e = i4;
            if (resources != null) {
                try {
                    iconCompat.f3069b = resources.getResourceName(i4);
                } catch (Resources.NotFoundException unused) {
                    throw new IllegalArgumentException("Icon resource cannot be found");
                }
            } else {
                iconCompat.f3069b = str;
            }
            iconCompat.f3077j = str;
            return iconCompat;
        }
        throw new IllegalArgumentException("Drawable resource ID must not be 0");
    }

    public static Resources f(Context context, String str) {
        if ("android".equals(str)) {
            return Resources.getSystem();
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 8192);
            if (applicationInfo != null) {
                return packageManager.getResourcesForApplication(applicationInfo);
            }
            return null;
        } catch (PackageManager.NameNotFoundException e4) {
            Log.e("IconCompat", String.format("Unable to find pkg=%s for icon", str), e4);
            return null;
        }
    }

    public final void a(Context context) {
        Object obj;
        if (this.f3068a != 2 || (obj = this.f3069b) == null) {
            return;
        }
        String str = (String) obj;
        if (str.contains(":")) {
            String str2 = str.split(":", -1)[1];
            String str3 = str2.split("/", -1)[0];
            String str4 = str2.split("/", -1)[1];
            String str5 = str.split(":", -1)[0];
            if ("0_resource_name_obfuscated".equals(str4)) {
                Log.i("IconCompat", "Found obfuscated resource, not trying to update resource id for it");
                return;
            }
            String e4 = e();
            int identifier = f(context, e4).getIdentifier(str4, str3, str5);
            if (this.f3072e != identifier) {
                Log.i("IconCompat", "Id has changed for " + e4 + " " + str);
                this.f3072e = identifier;
            }
        }
    }

    public final int d() {
        int i4 = this.f3068a;
        if (i4 == -1) {
            return ((Icon) this.f3069b).getResId();
        }
        if (i4 == 2) {
            return this.f3072e;
        }
        throw new IllegalStateException("called getResId() on " + this);
    }

    public final String e() {
        int i4 = this.f3068a;
        if (i4 == -1) {
            return ((Icon) this.f3069b).getResPackage();
        }
        if (i4 == 2) {
            String str = this.f3077j;
            return (str == null || TextUtils.isEmpty(str)) ? ((String) this.f3069b).split(":", -1)[0] : this.f3077j;
        }
        throw new IllegalStateException("called getResPackage() on " + this);
    }

    public final Uri g() {
        int i4 = this.f3068a;
        if (i4 == -1) {
            return ((Icon) this.f3069b).getUri();
        }
        if (i4 == 4 || i4 == 6) {
            return Uri.parse((String) this.f3069b);
        }
        throw new IllegalStateException("called getUri() on " + this);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable h(android.content.Context r4) {
        /*
            r3 = this;
            r3.a(r4)
            int r0 = r3.f3068a
            switch(r0) {
                case -1: goto L5c;
                case 0: goto L8;
                case 1: goto L43;
                case 2: goto L38;
                case 3: goto L2b;
                case 4: goto L22;
                case 5: goto L19;
                case 6: goto L10;
                default: goto L8;
            }
        L8:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.String r4 = "Unknown type"
            r3.<init>(r4)
            throw r3
        L10:
            android.net.Uri r0 = r3.g()
            android.graphics.drawable.Icon r0 = android.graphics.drawable.Icon.createWithAdaptiveBitmapContentUri(r0)
            goto L4b
        L19:
            java.lang.Object r0 = r3.f3069b
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0
            android.graphics.drawable.Icon r0 = android.graphics.drawable.Icon.createWithAdaptiveBitmap(r0)
            goto L4b
        L22:
            java.lang.Object r0 = r3.f3069b
            java.lang.String r0 = (java.lang.String) r0
            android.graphics.drawable.Icon r0 = android.graphics.drawable.Icon.createWithContentUri(r0)
            goto L4b
        L2b:
            java.lang.Object r0 = r3.f3069b
            byte[] r0 = (byte[]) r0
            int r1 = r3.f3072e
            int r2 = r3.f3073f
            android.graphics.drawable.Icon r0 = android.graphics.drawable.Icon.createWithData(r0, r1, r2)
            goto L4b
        L38:
            java.lang.String r0 = r3.e()
            int r1 = r3.f3072e
            android.graphics.drawable.Icon r0 = android.graphics.drawable.Icon.createWithResource(r0, r1)
            goto L4b
        L43:
            java.lang.Object r0 = r3.f3069b
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0
            android.graphics.drawable.Icon r0 = android.graphics.drawable.Icon.createWithBitmap(r0)
        L4b:
            android.content.res.ColorStateList r1 = r3.f3074g
            if (r1 == 0) goto L52
            r0.setTintList(r1)
        L52:
            android.graphics.PorterDuff$Mode r3 = r3.f3075h
            android.graphics.PorterDuff$Mode r1 = androidx.core.graphics.drawable.IconCompat.f3067k
            if (r3 == r1) goto L61
            r0.setTintMode(r3)
            goto L61
        L5c:
            java.lang.Object r3 = r3.f3069b
            r0 = r3
            android.graphics.drawable.Icon r0 = (android.graphics.drawable.Icon) r0
        L61:
            android.graphics.drawable.Drawable r3 = r0.loadDrawable(r4)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.drawable.IconCompat.h(android.content.Context):android.graphics.drawable.Drawable");
    }

    public final String toString() {
        String str;
        if (this.f3068a == -1) {
            return String.valueOf(this.f3069b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        switch (this.f3068a) {
            case 1:
                str = "BITMAP";
                break;
            case 2:
                str = "RESOURCE";
                break;
            case 3:
                str = "DATA";
                break;
            case 4:
                str = "URI";
                break;
            case 5:
                str = "BITMAP_MASKABLE";
                break;
            case 6:
                str = "URI_MASKABLE";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        sb.append(str);
        switch (this.f3068a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f3069b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f3069b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.f3077j);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(d())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f3072e);
                if (this.f3073f != 0) {
                    sb.append(" off=");
                    sb.append(this.f3073f);
                    break;
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f3069b);
                break;
        }
        if (this.f3074g != null) {
            sb.append(" tint=");
            sb.append(this.f3074g);
        }
        if (this.f3075h != f3067k) {
            sb.append(" mode=");
            sb.append(this.f3075h);
        }
        sb.append(")");
        return sb.toString();
    }

    public IconCompat(int i4) {
        this.f3070c = null;
        this.f3071d = null;
        this.f3072e = 0;
        this.f3073f = 0;
        this.f3074g = null;
        this.f3075h = f3067k;
        this.f3076i = null;
        this.f3068a = i4;
    }
}
