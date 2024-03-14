package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcelable;
import i0.c;
import java.nio.charset.Charset;
/* loaded from: classes.dex */
public class IconCompatParcelizer {
    public static IconCompat read(c cVar) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f3068a = cVar.l(iconCompat.f3068a, 1);
        byte[] bArr = iconCompat.f3070c;
        if (cVar.j(2)) {
            bArr = cVar.h();
        }
        iconCompat.f3070c = bArr;
        Parcelable parcelable = iconCompat.f3071d;
        if (cVar.j(3)) {
            parcelable = cVar.n();
        }
        iconCompat.f3071d = parcelable;
        iconCompat.f3072e = cVar.l(iconCompat.f3072e, 4);
        iconCompat.f3073f = cVar.l(iconCompat.f3073f, 5);
        Parcelable parcelable2 = iconCompat.f3074g;
        if (cVar.j(6)) {
            parcelable2 = cVar.n();
        }
        iconCompat.f3074g = (ColorStateList) parcelable2;
        iconCompat.f3076i = cVar.p(7, iconCompat.f3076i);
        iconCompat.f3077j = cVar.p(8, iconCompat.f3077j);
        iconCompat.f3075h = PorterDuff.Mode.valueOf(iconCompat.f3076i);
        switch (iconCompat.f3068a) {
            case -1:
                Parcelable parcelable3 = iconCompat.f3071d;
                if (parcelable3 != null) {
                    iconCompat.f3069b = parcelable3;
                    break;
                } else {
                    throw new IllegalArgumentException("Invalid icon");
                }
            case 1:
            case 5:
                Parcelable parcelable4 = iconCompat.f3071d;
                if (parcelable4 == null) {
                    byte[] bArr2 = iconCompat.f3070c;
                    iconCompat.f3069b = bArr2;
                    iconCompat.f3068a = 3;
                    iconCompat.f3072e = 0;
                    iconCompat.f3073f = bArr2.length;
                    break;
                } else {
                    iconCompat.f3069b = parcelable4;
                    break;
                }
            case 2:
            case 4:
            case 6:
                String str = new String(iconCompat.f3070c, Charset.forName("UTF-16"));
                iconCompat.f3069b = str;
                if (iconCompat.f3068a == 2 && iconCompat.f3077j == null) {
                    iconCompat.f3077j = str.split(":", -1)[0];
                    break;
                }
                break;
            case 3:
                iconCompat.f3069b = iconCompat.f3070c;
                break;
        }
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, c cVar) {
        cVar.getClass();
        iconCompat.f3076i = iconCompat.f3075h.name();
        switch (iconCompat.f3068a) {
            case -1:
                iconCompat.f3071d = (Parcelable) iconCompat.f3069b;
                break;
            case 1:
            case 5:
                iconCompat.f3071d = (Parcelable) iconCompat.f3069b;
                break;
            case 2:
                iconCompat.f3070c = ((String) iconCompat.f3069b).getBytes(Charset.forName("UTF-16"));
                break;
            case 3:
                iconCompat.f3070c = (byte[]) iconCompat.f3069b;
                break;
            case 4:
            case 6:
                iconCompat.f3070c = iconCompat.f3069b.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
        int i4 = iconCompat.f3068a;
        if (-1 != i4) {
            cVar.s(1);
            cVar.y(i4);
        }
        byte[] bArr = iconCompat.f3070c;
        if (bArr != null) {
            cVar.s(2);
            cVar.w(bArr);
        }
        Parcelable parcelable = iconCompat.f3071d;
        if (parcelable != null) {
            cVar.s(3);
            cVar.A(parcelable);
        }
        int i5 = iconCompat.f3072e;
        if (i5 != 0) {
            cVar.s(4);
            cVar.y(i5);
        }
        int i6 = iconCompat.f3073f;
        if (i6 != 0) {
            cVar.s(5);
            cVar.y(i6);
        }
        ColorStateList colorStateList = iconCompat.f3074g;
        if (colorStateList != null) {
            cVar.s(6);
            cVar.A(colorStateList);
        }
        String str = iconCompat.f3076i;
        if (str != null) {
            cVar.B(7, str);
        }
        String str2 = iconCompat.f3077j;
        if (str2 != null) {
            cVar.B(8, str2);
        }
    }
}
