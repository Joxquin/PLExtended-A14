package f0;

import androidx.core.graphics.drawable.IconCompat;
import androidx.slice.SliceItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: f0.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0837d {

    /* renamed from: a  reason: collision with root package name */
    public SliceItem f9157a;

    /* renamed from: b  reason: collision with root package name */
    public SliceItem f9158b;

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList f9159c;

    /* renamed from: d  reason: collision with root package name */
    public SliceItem f9160d;

    /* renamed from: e  reason: collision with root package name */
    public int f9161e;

    /* renamed from: f  reason: collision with root package name */
    public int f9162f;

    /* renamed from: g  reason: collision with root package name */
    public IconCompat f9163g;

    /* renamed from: h  reason: collision with root package name */
    public SliceItem f9164h;

    /* renamed from: i  reason: collision with root package name */
    public int f9165i;

    /* renamed from: j  reason: collision with root package name */
    public SliceItem f9166j;

    /* renamed from: k  reason: collision with root package name */
    public SliceItem f9167k;

    public C0837d(SliceItem sliceItem) {
        List list;
        ArrayList arrayList = new ArrayList();
        this.f9159c = arrayList;
        this.f9165i = -1;
        String str = sliceItem.f4057b;
        boolean z4 = false;
        if (sliceItem.i("shortcut") || !("slice".equals(str) || "action".equals(str))) {
            String str2 = sliceItem.f4057b;
            if (!("content_description".equals(sliceItem.f4058c) || sliceItem.h("keywords", "ttl", "last_updated")) && ("text".equals(str2) || "long".equals(str2) || "image".equals(str2))) {
                z4 = true;
            }
            if (z4) {
                arrayList.add(sliceItem);
            }
        } else {
            List b4 = sliceItem.g().b();
            Iterator it = b4.iterator();
            while (true) {
                if (!it.hasNext()) {
                    list = null;
                    break;
                }
                SliceItem sliceItem2 = (SliceItem) it.next();
                if ("action".equals(sliceItem2.f4057b) || "slice".equals(sliceItem2.f4057b)) {
                    if (!"date_picker".equals(sliceItem2.f4058c) && !"time_picker".equals(sliceItem2.f4058c)) {
                        list = sliceItem2.g().b();
                        if (new androidx.slice.core.a(sliceItem2).b()) {
                            this.f9167k = sliceItem2;
                        } else {
                            this.f9157a = (SliceItem) b4.get(0);
                        }
                    }
                }
            }
            if ("action".equals(str)) {
                this.f9157a = sliceItem;
            }
            this.f9161e = 0;
            this.f9162f = 0;
            a(b4);
            if (this.f9161e == 0 && this.f9162f == 0 && list != null) {
                a(list);
            }
        }
        if (this.f9158b == null) {
            ArrayList arrayList2 = this.f9159c;
            if (arrayList2.size() > 0) {
                arrayList2.size();
            }
        }
    }

    public final void a(List list) {
        for (int i4 = 0; i4 < list.size(); i4++) {
            SliceItem sliceItem = (SliceItem) list.get(i4);
            String str = sliceItem.f4057b;
            if (this.f9158b == null && ("date_picker".equals(sliceItem.f4058c) || "time_picker".equals(sliceItem.f4058c))) {
                this.f9158b = sliceItem;
            } else if ("content_description".equals(sliceItem.f4058c)) {
                this.f9160d = sliceItem;
            } else {
                int i5 = this.f9161e;
                ArrayList arrayList = this.f9159c;
                if (i5 < 2 && ("text".equals(str) || "long".equals(str))) {
                    SliceItem sliceItem2 = this.f9166j;
                    if (sliceItem2 == null || (!sliceItem2.i("title") && sliceItem.i("title"))) {
                        this.f9166j = sliceItem;
                    }
                    if (!sliceItem.i("overlay")) {
                        this.f9161e++;
                        arrayList.add(sliceItem);
                    } else if (this.f9164h == null) {
                        this.f9164h = sliceItem;
                    }
                } else if (this.f9162f < 1 && "image".equals(sliceItem.f4057b)) {
                    this.f9165i = androidx.slice.core.a.e(sliceItem);
                    this.f9162f++;
                    this.f9163g = (IconCompat) sliceItem.f4059d;
                    arrayList.add(sliceItem);
                }
            }
        }
    }
}
