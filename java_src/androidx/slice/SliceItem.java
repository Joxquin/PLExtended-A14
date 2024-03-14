package androidx.slice;

import L.b;
import L.c;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.AlignmentSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import androidx.versionedparcelable.CustomVersionedParcelable;
import b0.C0307a;
import b0.InterfaceC0310d;
import java.util.List;
/* loaded from: classes.dex */
public final class SliceItem extends CustomVersionedParcelable {

    /* renamed from: a  reason: collision with root package name */
    public String[] f4056a;

    /* renamed from: b  reason: collision with root package name */
    public String f4057b;

    /* renamed from: c  reason: collision with root package name */
    public String f4058c;

    /* renamed from: d  reason: collision with root package name */
    public Object f4059d;

    /* renamed from: e  reason: collision with root package name */
    public CharSequence f4060e;

    /* renamed from: f  reason: collision with root package name */
    public SliceItemHolder f4061f;

    public SliceItem(Object obj, String str, String str2, String[] strArr) {
        this.f4056a = strArr;
        this.f4057b = str;
        this.f4058c = str2;
        this.f4059d = obj;
    }

    public static void b(Spannable spannable) {
        Object[] spans;
        for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
            Object obj2 = (obj instanceof AlignmentSpan) || (obj instanceof ForegroundColorSpan) || (obj instanceof RelativeSizeSpan) || (obj instanceof StyleSpan) ? obj : null;
            if (obj2 != obj) {
                if (obj2 != null) {
                    spannable.setSpan(obj2, spannable.getSpanStart(obj), spannable.getSpanEnd(obj), spannable.getSpanFlags(obj));
                }
                spannable.removeSpan(obj);
            }
        }
    }

    public final boolean a(Context context, Intent intent) {
        b.a(this.f4059d, "Object must be non-null for FORMAT_ACTION");
        Object obj = ((c) this.f4059d).f1016a;
        if (obj instanceof PendingIntent) {
            ((PendingIntent) obj).send(context, 0, intent, null, null);
            return false;
        }
        ((InterfaceC0310d) obj).a();
        return true;
    }

    public final PendingIntent c() {
        b.a(this.f4059d, "Object must be non-null");
        Object obj = ((c) this.f4059d).f1016a;
        if (obj instanceof PendingIntent) {
            return (PendingIntent) obj;
        }
        return null;
    }

    public final int d() {
        b.a(this.f4059d, "Object must be non-null for FORMAT_INT");
        return ((Integer) this.f4059d).intValue();
    }

    public final long e() {
        b.a(this.f4059d, "Object must be non-null for FORMAT_LONG");
        return ((Long) this.f4059d).longValue();
    }

    public final CharSequence f() {
        if (this.f4060e == null) {
            CharSequence charSequence = (CharSequence) this.f4059d;
            if (charSequence instanceof Spannable) {
                b((Spannable) charSequence);
            } else if (charSequence instanceof Spanned) {
                Spanned spanned = (Spanned) charSequence;
                boolean z4 = false;
                Object[] spans = spanned.getSpans(0, spanned.length(), Object.class);
                int length = spans.length;
                int i4 = 0;
                while (true) {
                    boolean z5 = true;
                    if (i4 >= length) {
                        z4 = true;
                        break;
                    }
                    Object obj = spans[i4];
                    if (!(obj instanceof AlignmentSpan) && !(obj instanceof ForegroundColorSpan) && !(obj instanceof RelativeSizeSpan) && !(obj instanceof StyleSpan)) {
                        z5 = false;
                    }
                    if (!z5) {
                        break;
                    }
                    i4++;
                }
                if (!z4) {
                    SpannableString spannableString = new SpannableString(charSequence);
                    b(spannableString);
                    charSequence = spannableString;
                }
            }
            this.f4060e = charSequence;
        }
        return this.f4060e;
    }

    public final Slice g() {
        b.a(this.f4059d, "Object must be non-null for FORMAT_SLICE");
        return "action".equals(this.f4057b) ? (Slice) ((c) this.f4059d).f1017b : (Slice) this.f4059d;
    }

    public final boolean h(String... strArr) {
        for (String str : strArr) {
            if (C0307a.a(this.f4056a, str)) {
                return true;
            }
        }
        return false;
    }

    public final boolean i(String str) {
        return C0307a.a(this.f4056a, str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00d7, code lost:
        if (r14.equals("int") == false) goto L56;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String j(java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 644
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slice.SliceItem.j(java.lang.String):java.lang.String");
    }

    public final String toString() {
        return j("");
    }

    public SliceItem(Object obj, String str, String str2, List list) {
        this(obj, str, str2, (String[]) list.toArray(new String[list.size()]));
    }

    public SliceItem() {
        this.f4056a = Slice.f4050e;
        this.f4057b = "text";
        this.f4058c = null;
    }

    public SliceItem(PendingIntent pendingIntent, Slice slice, String str, String[] strArr) {
        this(new c(pendingIntent, slice), "action", str, strArr);
    }
}
