package d0;

import androidx.slice.SliceItem;
/* renamed from: d0.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0795c implements InterfaceC0796d {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f8761a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f8762b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f8763c;

    public /* synthetic */ C0795c(String str, String str2, int i4) {
        this.f8761a = i4;
        this.f8762b = str;
        this.f8763c = str2;
    }

    @Override // d0.InterfaceC0796d
    public final boolean a(SliceItem sliceItem) {
        int i4 = this.f8761a;
        String str = this.f8763c;
        String str2 = this.f8762b;
        switch (i4) {
            case 0:
                if (C0797e.a(sliceItem, str2)) {
                    if (str == null || str.equals(sliceItem.f4058c)) {
                        return true;
                    }
                }
                return false;
            default:
                if (C0797e.a(sliceItem, str2)) {
                    if (str == null || str.equals(sliceItem.f4058c)) {
                        return true;
                    }
                }
                return false;
        }
    }
}
