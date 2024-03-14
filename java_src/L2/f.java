package L2;

import java.util.Objects;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final int f1324a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1325b;

    public f(e eVar) {
        this.f1324a = eVar.f1322a;
        this.f1325b = eVar.f1323b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            return this.f1324a == fVar.f1324a && this.f1325b == fVar.f1325b;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f1324a), Integer.valueOf(this.f1325b));
    }

    public final String toString() {
        return "BcSmartspaceCardMetadataLoggingInfo{mInstanceId=" + this.f1324a + ", mCardTypeId=" + this.f1325b + '}';
    }
}
