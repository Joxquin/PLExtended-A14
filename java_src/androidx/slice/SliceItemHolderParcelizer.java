package androidx.slice;

import android.os.Bundle;
import android.os.Parcelable;
import b0.C0311e;
import i0.c;
import i0.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class SliceItemHolderParcelizer {
    private static C0311e sBuilder = new C0311e();

    public static SliceItemHolder read(c cVar) {
        C0311e c0311e = sBuilder;
        ArrayList arrayList = c0311e.f4155a;
        SliceItemHolder sliceItemHolder = arrayList.size() > 0 ? (SliceItemHolder) arrayList.remove(arrayList.size() - 1) : new SliceItemHolder(c0311e);
        e eVar = sliceItemHolder.f4064a;
        if (cVar.j(1)) {
            eVar = cVar.r();
        }
        sliceItemHolder.f4064a = eVar;
        Parcelable parcelable = sliceItemHolder.f4065b;
        if (cVar.j(2)) {
            parcelable = cVar.n();
        }
        sliceItemHolder.f4065b = parcelable;
        sliceItemHolder.f4066c = cVar.p(3, sliceItemHolder.f4066c);
        sliceItemHolder.f4067d = cVar.l(sliceItemHolder.f4067d, 4);
        long j4 = sliceItemHolder.f4068e;
        if (cVar.j(5)) {
            j4 = cVar.m();
        }
        sliceItemHolder.f4068e = j4;
        Bundle bundle = sliceItemHolder.f4069f;
        if (cVar.j(6)) {
            bundle = cVar.g();
        }
        sliceItemHolder.f4069f = bundle;
        return sliceItemHolder;
    }

    public static void write(SliceItemHolder sliceItemHolder, c cVar) {
        cVar.getClass();
        e eVar = sliceItemHolder.f4064a;
        if (eVar != null) {
            cVar.s(1);
            cVar.E(eVar);
        }
        Parcelable parcelable = sliceItemHolder.f4065b;
        if (parcelable != null) {
            cVar.s(2);
            cVar.A(parcelable);
        }
        String str = sliceItemHolder.f4066c;
        if (str != null) {
            cVar.B(3, str);
        }
        int i4 = sliceItemHolder.f4067d;
        if (i4 != 0) {
            cVar.s(4);
            cVar.y(i4);
        }
        long j4 = sliceItemHolder.f4068e;
        if (0 != j4) {
            cVar.s(5);
            cVar.z(j4);
        }
        Bundle bundle = sliceItemHolder.f4069f;
        if (bundle != null) {
            cVar.s(6);
            cVar.v(bundle);
        }
    }
}
