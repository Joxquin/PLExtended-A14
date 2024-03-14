package androidx.slice.core;

import androidx.core.graphics.drawable.IconCompat;
import androidx.slice.SliceItem;
import d0.InterfaceC0793a;
/* loaded from: classes.dex */
public final class a implements InterfaceC0793a {

    /* renamed from: a  reason: collision with root package name */
    public final SliceItem f4081a;

    /* renamed from: b  reason: collision with root package name */
    public final IconCompat f4082b;

    /* renamed from: c  reason: collision with root package name */
    public final int f4083c;

    /* renamed from: d  reason: collision with root package name */
    public final CharSequence f4084d;

    /* renamed from: e  reason: collision with root package name */
    public final CharSequence f4085e;

    /* renamed from: f  reason: collision with root package name */
    public final SliceActionImpl$ActionType f4086f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f4087g;

    /* renamed from: h  reason: collision with root package name */
    public final int f4088h;

    /* renamed from: i  reason: collision with root package name */
    public final SliceItem f4089i;

    public a(IconCompat iconCompat, int i4, CharSequence charSequence) {
        this.f4083c = 5;
        this.f4086f = SliceActionImpl$ActionType.DEFAULT;
        this.f4088h = -1;
        this.f4082b = iconCompat;
        this.f4084d = charSequence;
        this.f4083c = i4;
    }

    public static int e(SliceItem sliceItem) {
        if (sliceItem.i("show_label")) {
            return 6;
        }
        if (sliceItem.i("no_tint")) {
            return sliceItem.i("raw") ? sliceItem.i("large") ? 4 : 3 : sliceItem.i("large") ? 2 : 1;
        }
        return 0;
    }

    @Override // d0.InterfaceC0793a
    public final int a() {
        return this.f4088h;
    }

    @Override // d0.InterfaceC0793a
    public final boolean b() {
        return this.f4086f == SliceActionImpl$ActionType.TOGGLE;
    }

    public final String c() {
        int ordinal = this.f4086f.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    return null;
                }
                return "time_picker";
            }
            return "date_picker";
        }
        return "toggle";
    }

    public final boolean d() {
        return this.f4086f == SliceActionImpl$ActionType.TOGGLE && this.f4082b == null;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a(androidx.slice.SliceItem r10) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slice.core.a.<init>(androidx.slice.SliceItem):void");
    }
}
