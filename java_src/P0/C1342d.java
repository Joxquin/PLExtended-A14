package p0;

import java.util.List;
/* renamed from: p0.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1342d {

    /* renamed from: a  reason: collision with root package name */
    public final List f11913a;

    /* renamed from: b  reason: collision with root package name */
    public final char f11914b;

    /* renamed from: c  reason: collision with root package name */
    public final double f11915c;

    /* renamed from: d  reason: collision with root package name */
    public final String f11916d;

    /* renamed from: e  reason: collision with root package name */
    public final String f11917e;

    public C1342d(List list, char c4, double d4, String str, String str2) {
        this.f11913a = list;
        this.f11914b = c4;
        this.f11915c = d4;
        this.f11916d = str;
        this.f11917e = str2;
    }

    public static int a(char c4, String str, String str2) {
        int hashCode = str.hashCode();
        return str2.hashCode() + ((hashCode + ((0 + c4) * 31)) * 31);
    }

    public final int hashCode() {
        return a(this.f11914b, this.f11917e, this.f11916d);
    }
}
