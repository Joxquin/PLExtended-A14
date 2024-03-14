package x3;

import java.util.ArrayList;
import java.util.List;
import okio.ByteString;
/* loaded from: classes.dex */
public final class g {
    public static void a(long j4, b bVar, int i4, List list, int i5, int i6, List list2) {
        int i7;
        int i8;
        int i9;
        int i10;
        b bVar2;
        int i11 = i4;
        if (!(i5 < i6)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        for (int i12 = i5; i12 < i6; i12++) {
            if (!(((ByteString) ((ArrayList) list).get(i12)).d() >= i11)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
        }
        ArrayList arrayList = (ArrayList) list;
        ByteString byteString = (ByteString) arrayList.get(i5);
        ByteString byteString2 = (ByteString) arrayList.get(i6 - 1);
        int i13 = -1;
        if (i11 == byteString.d()) {
            int intValue = ((Number) list2.get(i5)).intValue();
            int i14 = i5 + 1;
            ByteString byteString3 = (ByteString) arrayList.get(i14);
            i7 = i14;
            i8 = intValue;
            byteString = byteString3;
        } else {
            i7 = i5;
            i8 = -1;
        }
        if (byteString.h(i11) == byteString2.h(i11)) {
            int min = Math.min(byteString.d(), byteString2.d());
            int i15 = 0;
            for (int i16 = i11; i16 < min && byteString.h(i16) == byteString2.h(i16); i16++) {
                i15++;
            }
            long j5 = 4;
            long j6 = 1 + (bVar.f12892e / j5) + j4 + 2 + i15;
            bVar.n(-i15);
            bVar.n(i8);
            int i17 = i11 + i15;
            while (i11 < i17) {
                bVar.n(byteString.h(i11) & 255);
                i11++;
            }
            if (i7 + 1 == i6) {
                if (!(i17 == ((ByteString) arrayList.get(i7)).d())) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                bVar.n(((Number) list2.get(i7)).intValue());
                return;
            }
            b bVar3 = new b();
            bVar.n(((int) ((bVar3.f12892e / j5) + j6)) * (-1));
            a(j6, bVar3, i17, list, i7, i6, list2);
            do {
            } while (bVar3.g(bVar, 8192L) != -1);
            return;
        }
        int i18 = 1;
        for (int i19 = i7 + 1; i19 < i6; i19++) {
            if (((ByteString) arrayList.get(i19 - 1)).h(i11) != ((ByteString) arrayList.get(i19)).h(i11)) {
                i18++;
            }
        }
        long j7 = 4;
        long j8 = (i18 * 2) + (bVar.f12892e / j7) + j4 + 2;
        bVar.n(i18);
        bVar.n(i8);
        for (int i20 = i7; i20 < i6; i20++) {
            byte h4 = ((ByteString) arrayList.get(i20)).h(i11);
            if (i20 == i7 || h4 != ((ByteString) arrayList.get(i20 - 1)).h(i11)) {
                bVar.n(h4 & 255);
            }
        }
        b bVar4 = new b();
        while (i7 < i6) {
            byte h5 = ((ByteString) arrayList.get(i7)).h(i11);
            int i21 = i7 + 1;
            int i22 = i21;
            while (true) {
                if (i22 >= i6) {
                    i9 = i6;
                    break;
                } else if (h5 != ((ByteString) arrayList.get(i22)).h(i11)) {
                    i9 = i22;
                    break;
                } else {
                    i22++;
                }
            }
            if (i21 == i9 && i11 + 1 == ((ByteString) arrayList.get(i7)).d()) {
                bVar.n(((Number) list2.get(i7)).intValue());
                i10 = i9;
                bVar2 = bVar4;
            } else {
                bVar.n(((int) ((bVar4.f12892e / j7) + j8)) * i13);
                i10 = i9;
                bVar2 = bVar4;
                a(j8, bVar4, i11 + 1, list, i7, i9, list2);
            }
            bVar4 = bVar2;
            i7 = i10;
            i13 = -1;
        }
        do {
        } while (bVar4.g(bVar, 8192L) != -1);
    }
}
