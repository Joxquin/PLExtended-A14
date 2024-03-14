package b0;

import android.content.Context;
import android.os.Bundle;
import androidx.slice.Slice;
import androidx.slice.SliceItem;
import d0.C0797e;
import f0.C0843j;
import f0.C0849p;
import java.util.ArrayList;
import java.util.List;
/* renamed from: b0.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0312f {

    /* renamed from: a  reason: collision with root package name */
    public final Slice f4156a;

    /* renamed from: b  reason: collision with root package name */
    public final long f4157b;

    /* renamed from: c  reason: collision with root package name */
    public final long f4158c;

    /* renamed from: d  reason: collision with root package name */
    public final C0843j f4159d;

    /* renamed from: e  reason: collision with root package name */
    public final androidx.slice.core.a f4160e;

    /* renamed from: f  reason: collision with root package name */
    public final List f4161f;

    public C0312f(Context context, Slice slice) {
        List list;
        this.f4156a = slice;
        SliceItem b4 = C0797e.b(slice, "long", "ttl");
        if (b4 != null) {
            this.f4157b = b4.e();
        }
        SliceItem b5 = C0797e.b(slice, "long", "last_updated");
        if (b5 != null) {
            this.f4158c = b5.e();
        }
        SliceItem h4 = C0797e.h(slice, "bundle", "host_extras");
        if (h4 != null) {
            Object obj = h4.f4059d;
            if (obj instanceof Bundle) {
                Bundle bundle = (Bundle) obj;
                C0843j c0843j = new C0843j(slice);
                this.f4159d = c0843j;
                C0849p c0849p = c0843j.f9191g;
                C0843j.d(c0849p, true, c0843j.f9193i);
                this.f4160e = (androidx.slice.core.a) c0843j.e(context);
                list = c0843j.f9193i;
                this.f4161f = list;
                if (list == null || c0849p == null || !C0797e.l(c0849p.f9085a, "list_item")) {
                    return;
                }
                ArrayList arrayList = c0849p.f9208k;
                ArrayList arrayList2 = new ArrayList();
                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                    if (C0797e.e((SliceItem) arrayList.get(i4), "action", null, null) != null) {
                        arrayList2.add(new androidx.slice.core.a((SliceItem) arrayList.get(i4)));
                    }
                }
                if (arrayList2.size() > 0) {
                    this.f4161f = arrayList2;
                    return;
                }
                return;
            }
        }
        Bundle bundle2 = Bundle.EMPTY;
        C0843j c0843j2 = new C0843j(slice);
        this.f4159d = c0843j2;
        C0849p c0849p2 = c0843j2.f9191g;
        C0843j.d(c0849p2, true, c0843j2.f9193i);
        this.f4160e = (androidx.slice.core.a) c0843j2.e(context);
        list = c0843j2.f9193i;
        this.f4161f = list;
        if (list == null) {
        }
    }

    public final int a() {
        boolean z4 = C0797e.b(this.f4156a, null, "partial") != null;
        if (this.f4159d.f()) {
            return z4 ? 1 : 2;
        }
        return 0;
    }

    public final boolean b() {
        long currentTimeMillis = System.currentTimeMillis();
        long j4 = this.f4157b;
        return (j4 == 0 || j4 == -1 || currentTimeMillis <= j4) ? false : true;
    }
}
