package I;

import android.os.LocaleList;
/* loaded from: classes.dex */
public final class h implements g {

    /* renamed from: a  reason: collision with root package name */
    public final LocaleList f557a;

    public h(Object obj) {
        this.f557a = (LocaleList) obj;
    }

    @Override // I.g
    public final Object a() {
        return this.f557a;
    }

    public final boolean equals(Object obj) {
        return this.f557a.equals(((g) obj).a());
    }

    public final int hashCode() {
        return this.f557a.hashCode();
    }

    @Override // I.g
    public final boolean isEmpty() {
        return this.f557a.isEmpty();
    }

    public final String toString() {
        return this.f557a.toString();
    }
}
