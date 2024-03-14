package L2;

import java.util.Objects;
import s1.C1393a;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public int f1313a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1314b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1315c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1316d;

    /* renamed from: e  reason: collision with root package name */
    public int f1317e;

    /* renamed from: f  reason: collision with root package name */
    public final int f1318f;

    /* renamed from: g  reason: collision with root package name */
    public final int f1319g;

    /* renamed from: h  reason: collision with root package name */
    public h f1320h;

    /* renamed from: i  reason: collision with root package name */
    public final C1393a f1321i;

    public d(c cVar) {
        this.f1313a = cVar.f1304a;
        this.f1314b = cVar.f1305b;
        this.f1315c = cVar.f1306c;
        this.f1316d = cVar.f1307d;
        this.f1317e = cVar.f1308e;
        this.f1318f = cVar.f1309f;
        this.f1319g = cVar.f1310g;
        this.f1320h = cVar.f1311h;
        this.f1321i = cVar.f1312i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            return this.f1313a == dVar.f1313a && this.f1314b == dVar.f1314b && this.f1315c == dVar.f1315c && this.f1316d == dVar.f1316d && this.f1317e == dVar.f1317e && this.f1318f == dVar.f1318f && this.f1319g == dVar.f1319g && Objects.equals(this.f1320h, dVar.f1320h) && Objects.equals(this.f1321i, dVar.f1321i);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f1313a), Integer.valueOf(this.f1314b), Integer.valueOf(this.f1315c), Integer.valueOf(this.f1316d), Integer.valueOf(this.f1317e), Integer.valueOf(this.f1318f), Integer.valueOf(this.f1319g), this.f1320h);
    }

    public final String toString() {
        return "instance_id = " + this.f1313a + ", feature type = " + this.f1317e + ", display surface = " + this.f1314b + ", rank = " + this.f1315c + ", cardinality = " + this.f1316d + ", receivedLatencyMillis = " + this.f1318f + ", uid = " + this.f1319g + ", subcardInfo = " + this.f1320h + ", dimensionalInfo = " + this.f1321i;
    }
}
