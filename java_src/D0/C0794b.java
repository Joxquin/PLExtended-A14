package d0;

import androidx.slice.SliceItem;
/* renamed from: d0.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0794b implements InterfaceC0796d {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f8757a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f8758b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String[] f8759c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ String[] f8760d;

    public /* synthetic */ C0794b(String str, String[] strArr, String[] strArr2, int i4) {
        this.f8757a = i4;
        this.f8758b = str;
        this.f8759c = strArr;
        this.f8760d = strArr2;
    }

    @Override // d0.InterfaceC0796d
    public final boolean a(SliceItem sliceItem) {
        int i4 = this.f8757a;
        String[] strArr = this.f8760d;
        String[] strArr2 = this.f8759c;
        String str = this.f8758b;
        switch (i4) {
            case 0:
                return C0797e.a(sliceItem, str) && C0797e.l(sliceItem, strArr2) && !C0797e.k(sliceItem, strArr);
            case 1:
                return C0797e.a(sliceItem, str) && C0797e.l(sliceItem, strArr2) && !C0797e.k(sliceItem, strArr);
            default:
                return C0797e.a(sliceItem, str) && C0797e.l(sliceItem, strArr2) && !C0797e.k(sliceItem, strArr);
        }
    }
}
