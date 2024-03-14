package h2;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final String f9497a;

    /* renamed from: b  reason: collision with root package name */
    public final b[] f9498b;

    /* renamed from: c  reason: collision with root package name */
    public int f9499c = 0;

    public c(String str, int i4) {
        this.f9497a = str;
        this.f9498b = new b[i4];
    }

    public final void a(String str) {
        c(str, 0, 0.0f);
    }

    public final void b(String str, int i4) {
        c(str, 2, i4);
    }

    public final void c(String str, int i4, float f4) {
        int i5 = this.f9499c;
        b[] bVarArr = this.f9498b;
        int length = ((bVarArr.length + i5) - 1) % bVarArr.length;
        int length2 = ((i5 + bVarArr.length) - 2) % bVarArr.length;
        b bVar = bVarArr[length];
        if (bVar != null && bVar.f9492a == i4 && bVar.f9493b.equals(str)) {
            b bVar2 = bVarArr[length2];
            if (bVar2 != null && bVar2.f9492a == i4 && bVar2.f9493b.equals(str)) {
                b bVar3 = bVarArr[length];
                bVar3.f9492a = i4;
                bVar3.f9493b = str;
                bVar3.f9494c = f4;
                bVar3.f9495d = System.currentTimeMillis();
                bVar3.f9496e = 0;
                bVarArr[length2].f9496e++;
                return;
            }
        }
        int i6 = this.f9499c;
        if (bVarArr[i6] == null) {
            bVarArr[i6] = new b();
        }
        b bVar4 = bVarArr[i6];
        bVar4.f9492a = i4;
        bVar4.f9493b = str;
        bVar4.f9494c = f4;
        bVar4.f9495d = System.currentTimeMillis();
        bVar4.f9496e = 0;
        this.f9499c = (this.f9499c + 1) % bVarArr.length;
    }

    public final void d(String str, PrintWriter printWriter) {
        String str2 = this.f9497a;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + String.valueOf(str).length() + 15);
        sb.append(str);
        sb.append(str2);
        sb.append(" event history:");
        printWriter.println(sb.toString());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("  HH:mm:ss.SSSZ  ", Locale.US);
        Date date = new Date();
        int i4 = 0;
        while (true) {
            b[] bVarArr = this.f9498b;
            if (i4 >= bVarArr.length) {
                return;
            }
            b bVar = bVarArr[(((this.f9499c + bVarArr.length) - i4) - 1) % bVarArr.length];
            if (bVar != null) {
                date.setTime(bVar.f9495d);
                StringBuilder sb2 = new StringBuilder(str);
                sb2.append(simpleDateFormat.format(date));
                sb2.append(bVar.f9493b);
                int i5 = bVar.f9492a;
                if (i5 == 1) {
                    sb2.append(": ");
                    sb2.append(bVar.f9494c);
                } else if (i5 == 2) {
                    sb2.append(": ");
                    sb2.append((int) bVar.f9494c);
                } else if (i5 == 3) {
                    sb2.append(": true");
                } else if (i5 == 4) {
                    sb2.append(": false");
                }
                if (bVar.f9496e > 0) {
                    sb2.append(" & ");
                    sb2.append(bVar.f9496e);
                    sb2.append(" similar events");
                }
                printWriter.println(sb2);
            }
            i4++;
        }
    }
}
