package f0;

import android.text.TextUtils;
import android.util.Log;
import androidx.slice.SliceItem;
import b0.C0307a;
import d0.C0797e;
import java.util.ArrayList;
import java.util.List;
/* renamed from: f0.p  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0849p extends G {

    /* renamed from: f  reason: collision with root package name */
    public SliceItem f9203f;

    /* renamed from: g  reason: collision with root package name */
    public SliceItem f9204g;

    /* renamed from: h  reason: collision with root package name */
    public SliceItem f9205h;

    /* renamed from: i  reason: collision with root package name */
    public SliceItem f9206i;

    /* renamed from: j  reason: collision with root package name */
    public SliceItem f9207j;

    /* renamed from: k  reason: collision with root package name */
    public final ArrayList f9208k;

    /* renamed from: l  reason: collision with root package name */
    public final ArrayList f9209l;

    /* renamed from: m  reason: collision with root package name */
    public SliceItem f9210m;

    /* renamed from: n  reason: collision with root package name */
    public SliceItem f9211n;

    /* renamed from: o  reason: collision with root package name */
    public boolean f9212o;

    /* renamed from: p  reason: collision with root package name */
    public int f9213p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f9214q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f9215r;

    /* renamed from: s  reason: collision with root package name */
    public boolean f9216s;

    public C0849p(SliceItem sliceItem, int i4) {
        super(sliceItem, i4);
        boolean z4;
        this.f9208k = new ArrayList();
        this.f9209l = new ArrayList();
        this.f9213p = 0;
        boolean z5 = i4 == 0;
        if (sliceItem.i("end_of_section")) {
            this.f9215r = true;
        }
        this.f9212o = z5;
        if (!h(sliceItem)) {
            Log.w("RowContent", "Provided SliceItem is invalid for RowContent");
            return;
        }
        ArrayList arrayList = (ArrayList) C0797e.f(sliceItem, null, new String[]{"title"}, new String[]{null});
        if (arrayList.size() > 0) {
            String str = ((SliceItem) arrayList.get(0)).f4057b;
            if (("action".equals(str) && C0797e.e((SliceItem) arrayList.get(0), "image", null, null) != null) || "slice".equals(str) || "long".equals(str) || "image".equals(str)) {
                this.f9204g = (SliceItem) arrayList.get(0);
            }
        }
        String[] strArr = {"shortcut", "title"};
        ArrayList arrayList2 = (ArrayList) C0797e.f(sliceItem, "slice", strArr, null);
        arrayList2.addAll(C0797e.f(sliceItem, "action", strArr, null));
        if (arrayList2.isEmpty() && "action".equals(sliceItem.f4057b) && sliceItem.g().b().size() == 1) {
            this.f9203f = sliceItem;
        } else if (this.f9204g != null && arrayList2.size() > 1 && arrayList2.get(0) == this.f9204g) {
            this.f9203f = (SliceItem) arrayList2.get(1);
        } else if (arrayList2.size() > 0) {
            this.f9203f = (SliceItem) arrayList2.get(0);
        }
        ArrayList d4 = d(sliceItem);
        if (d4.size() == 1 && (("action".equals(((SliceItem) d4.get(0)).f4057b) || "slice".equals(((SliceItem) d4.get(0)).f4057b)) && !((SliceItem) d4.get(0)).h("shortcut", "title") && h((SliceItem) d4.get(0)))) {
            sliceItem = (SliceItem) d4.get(0);
            d4 = d(sliceItem);
            z4 = true;
        } else {
            z4 = false;
        }
        if ("range".equals(sliceItem.f4058c)) {
            if (C0797e.i(sliceItem, "action", "range") == null || z4) {
                this.f9210m = sliceItem;
            } else {
                d4.remove(this.f9204g);
                if (d4.size() != 1) {
                    SliceItem i5 = C0797e.i(sliceItem, "action", "range");
                    this.f9210m = i5;
                    ArrayList d5 = d(i5);
                    d5.remove(e());
                    d4.remove(this.f9210m);
                    d4.addAll(d5);
                } else if (h((SliceItem) d4.get(0))) {
                    sliceItem = (SliceItem) d4.get(0);
                    d4 = d(sliceItem);
                    this.f9210m = sliceItem;
                    d4.remove(e());
                }
            }
        }
        if ("selection".equals(sliceItem.f4058c)) {
            this.f9211n = sliceItem;
        }
        if (d4.size() > 0) {
            SliceItem sliceItem2 = this.f9204g;
            if (sliceItem2 != null) {
                d4.remove(sliceItem2);
            }
            SliceItem sliceItem3 = this.f9203f;
            if (sliceItem3 != null) {
                d4.remove(sliceItem3);
            }
            ArrayList arrayList3 = new ArrayList();
            for (int i6 = 0; i6 < d4.size(); i6++) {
                SliceItem sliceItem4 = (SliceItem) d4.get(i6);
                if ("text".equals(sliceItem4.f4057b)) {
                    SliceItem sliceItem5 = this.f9205h;
                    if ((sliceItem5 == null || !sliceItem5.i("title")) && sliceItem4.i("title") && !sliceItem4.i("summary")) {
                        this.f9205h = sliceItem4;
                    } else if (this.f9206i == null && !sliceItem4.i("summary")) {
                        this.f9206i = sliceItem4;
                    } else if (this.f9207j == null && sliceItem4.i("summary")) {
                        this.f9207j = sliceItem4;
                    }
                } else {
                    arrayList3.add(sliceItem4);
                }
            }
            SliceItem sliceItem6 = this.f9205h;
            if (sliceItem6 != null && (sliceItem6.i("partial") || !TextUtils.isEmpty((CharSequence) sliceItem6.f4059d))) {
                this.f9213p++;
            }
            SliceItem sliceItem7 = this.f9206i;
            if (sliceItem7 != null && (sliceItem7.i("partial") || !TextUtils.isEmpty((CharSequence) sliceItem7.f4059d))) {
                this.f9213p++;
            }
            SliceItem sliceItem8 = this.f9204g;
            boolean z6 = sliceItem8 != null && "long".equals(sliceItem8.f4057b);
            for (int i7 = 0; i7 < arrayList3.size(); i7++) {
                SliceItem sliceItem9 = (SliceItem) arrayList3.get(i7);
                boolean z7 = C0797e.e(sliceItem9, "action", null, null) != null;
                boolean equals = "long".equals(sliceItem9.f4057b);
                ArrayList arrayList4 = this.f9208k;
                if (!equals) {
                    if (z7) {
                        androidx.slice.core.a aVar = new androidx.slice.core.a(sliceItem9);
                        if (aVar.b()) {
                            this.f9209l.add(aVar);
                        }
                    }
                    arrayList4.add(sliceItem9);
                } else if (!z6) {
                    arrayList4.add(sliceItem9);
                    z6 = true;
                }
            }
        }
        g();
    }

    public static ArrayList d(SliceItem sliceItem) {
        ArrayList arrayList = new ArrayList();
        for (SliceItem sliceItem2 : sliceItem.g().b()) {
            if (i(sliceItem, sliceItem2)) {
                arrayList.add(sliceItem2);
            }
        }
        return arrayList;
    }

    public static boolean h(SliceItem sliceItem) {
        if (sliceItem == null) {
            return false;
        }
        if ("slice".equals(sliceItem.f4057b) || "action".equals(sliceItem.f4057b)) {
            List b4 = sliceItem.g().b();
            if (sliceItem.i("see_more") && b4.isEmpty()) {
                return true;
            }
            for (int i4 = 0; i4 < b4.size(); i4++) {
                if (i(sliceItem, (SliceItem) b4.get(i4))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean i(SliceItem sliceItem, SliceItem sliceItem2) {
        if (sliceItem2.h("keywords", "ttl", "last_updated", "horizontal") || "content_description".equals(sliceItem2.f4058c) || "selection_option_key".equals(sliceItem2.f4058c) || "selection_option_value".equals(sliceItem2.f4058c)) {
            return false;
        }
        String str = sliceItem2.f4057b;
        return "image".equals(str) || "text".equals(str) || "long".equals(str) || "action".equals(str) || "input".equals(str) || "slice".equals(str) || ("int".equals(str) && "range".equals(sliceItem.f4058c));
    }

    @Override // f0.G
    public final int a(J j4, O o4) {
        int i4;
        int i5;
        j4.getClass();
        int i6 = o4.f9133b;
        if (i6 <= 0) {
            i6 = j4.f9118o;
        }
        SliceItem sliceItem = this.f9210m;
        if (sliceItem == null && this.f9211n == null && o4.f9134c != 2) {
            return i6;
        }
        if (sliceItem != null) {
            if (((!this.f9212o || this.f9214q) ? this.f9204g : null) != null) {
                return j4.f9126w;
            }
            int i7 = this.f9213p;
            i4 = i7 == 0 ? 0 : i7 > 1 ? j4.f9119p : j4.f9120q;
            i5 = j4.f9122s;
        } else if (this.f9211n == null) {
            return (this.f9213p > 1 || this.f9212o) ? i6 : j4.f9121r;
        } else {
            i4 = this.f9213p > 1 ? j4.f9124u : j4.f9125v;
            i5 = j4.f9123t;
        }
        return i4 + i5;
    }

    public final SliceItem e() {
        SliceItem sliceItem = this.f9210m;
        if (sliceItem != null) {
            List b4 = sliceItem.g().b();
            for (int i4 = 0; i4 < b4.size(); i4++) {
                if ("image".equals(((SliceItem) b4.get(i4)).f4057b)) {
                    return (SliceItem) b4.get(i4);
                }
            }
            return null;
        }
        return null;
    }

    public final boolean f() {
        return "action".equals(this.f9085a.f4057b) && C0307a.a(this.f9085a.g().f4054c, "see_more") && this.f9085a.g().b().isEmpty();
    }

    public final boolean g() {
        return (this.f9085a != null) && !(this.f9204g == null && this.f9203f == null && this.f9205h == null && this.f9206i == null && this.f9208k.size() <= 0 && this.f9210m == null && this.f9211n == null && !f());
    }
}
