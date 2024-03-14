package b0;

import android.net.Uri;
import androidx.slice.Slice;
import androidx.slice.SliceItem;
/* renamed from: b0.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0314h {

    /* renamed from: a  reason: collision with root package name */
    public final String f4165a;

    /* renamed from: b  reason: collision with root package name */
    public final Uri f4166b;

    public C0314h(Slice slice) {
        StringBuilder sb = new StringBuilder();
        a(slice, sb);
        this.f4165a = sb.toString();
        this.f4166b = slice.c();
    }

    public static void a(Slice slice, StringBuilder sb) {
        sb.append("s{");
        for (SliceItem sliceItem : slice.b()) {
            b(sliceItem, sb);
        }
        sb.append("}");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static void b(SliceItem sliceItem, StringBuilder sb) {
        char c4;
        String str = sliceItem.f4057b;
        switch (str.hashCode()) {
            case -1422950858:
                if (str.equals("action")) {
                    c4 = 1;
                    break;
                }
                c4 = 65535;
                break;
            case -1377881982:
                if (str.equals("bundle")) {
                    c4 = 7;
                    break;
                }
                c4 = 65535;
                break;
            case 104431:
                if (str.equals("int")) {
                    c4 = 4;
                    break;
                }
                c4 = 65535;
                break;
            case 3327612:
                if (str.equals("long")) {
                    c4 = 5;
                    break;
                }
                c4 = 65535;
                break;
            case 3556653:
                if (str.equals("text")) {
                    c4 = 2;
                    break;
                }
                c4 = 65535;
                break;
            case 100313435:
                if (str.equals("image")) {
                    c4 = 3;
                    break;
                }
                c4 = 65535;
                break;
            case 100358090:
                if (str.equals("input")) {
                    c4 = 6;
                    break;
                }
                c4 = 65535;
                break;
            case 109526418:
                if (str.equals("slice")) {
                    c4 = 0;
                    break;
                }
                c4 = 65535;
                break;
            default:
                c4 = 65535;
                break;
        }
        if (c4 == 0) {
            a(sliceItem.g(), sb);
        } else if (c4 == 1) {
            sb.append('a');
            if ("range".equals(sliceItem.f4058c)) {
                sb.append('r');
            }
            a(sliceItem.g(), sb);
        } else if (c4 == 2) {
            sb.append('t');
        } else if (c4 != 3) {
        } else {
            sb.append('i');
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0314h) {
            return this.f4165a.equals(((C0314h) obj).f4165a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4165a.hashCode();
    }

    public C0314h(SliceItem sliceItem) {
        StringBuilder sb = new StringBuilder();
        b(sliceItem, sb);
        this.f4165a = sb.toString();
        if (!"action".equals(sliceItem.f4057b) && !"slice".equals(sliceItem.f4057b)) {
            this.f4166b = null;
        } else {
            this.f4166b = sliceItem.g().c();
        }
    }
}
