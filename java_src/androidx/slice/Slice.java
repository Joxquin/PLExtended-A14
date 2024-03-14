package androidx.slice;

import android.net.Uri;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import t.j;
/* loaded from: classes.dex */
public final class Slice extends CustomVersionedParcelable {

    /* renamed from: e  reason: collision with root package name */
    public static final String[] f4050e = new String[0];

    /* renamed from: f  reason: collision with root package name */
    public static final SliceItem[] f4051f = new SliceItem[0];

    /* renamed from: a  reason: collision with root package name */
    public SliceSpec f4052a;

    /* renamed from: b  reason: collision with root package name */
    public SliceItem[] f4053b;

    /* renamed from: c  reason: collision with root package name */
    public String[] f4054c;

    /* renamed from: d  reason: collision with root package name */
    public String f4055d;

    public Slice(ArrayList arrayList, String[] strArr, Uri uri, SliceSpec sliceSpec) {
        this.f4052a = null;
        this.f4053b = f4051f;
        this.f4055d = null;
        this.f4054c = strArr;
        this.f4053b = (SliceItem[]) arrayList.toArray(new SliceItem[arrayList.size()]);
        this.f4055d = uri.toString();
        this.f4052a = sliceSpec;
    }

    public static void a(StringBuilder sb, String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return;
        }
        sb.append('(');
        int length = strArr.length - 1;
        for (int i4 = 0; i4 < length; i4++) {
            sb.append(strArr[i4]);
            sb.append(", ");
        }
        sb.append(strArr[length]);
        sb.append(")");
    }

    public static boolean d(IconCompat iconCompat) {
        if (iconCompat.f3068a == 2 && iconCompat.d() == 0) {
            throw new IllegalArgumentException("Failed to add icon, invalid resource id: " + iconCompat.d());
        }
        return true;
    }

    public final List b() {
        return Arrays.asList(this.f4053b);
    }

    public final Uri c() {
        return Uri.parse(this.f4055d);
    }

    public final String e(String str) {
        StringBuilder a4 = j.a(str, "Slice ");
        String[] strArr = this.f4054c;
        if (strArr.length > 0) {
            a(a4, strArr);
            a4.append(' ');
        }
        a4.append('[');
        a4.append(this.f4055d);
        a4.append("] {\n");
        String str2 = str + "  ";
        int i4 = 0;
        while (true) {
            SliceItem[] sliceItemArr = this.f4053b;
            if (i4 >= sliceItemArr.length) {
                a4.append(str);
                a4.append('}');
                return a4.toString();
            }
            a4.append(sliceItemArr[i4].j(str2));
            i4++;
        }
    }

    public final String toString() {
        return e("");
    }

    public Slice() {
        this.f4052a = null;
        this.f4053b = f4051f;
        this.f4054c = f4050e;
        this.f4055d = null;
    }
}
