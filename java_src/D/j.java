package D;

import android.content.res.Resources;
import java.util.Objects;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public final Resources f272a;

    /* renamed from: b  reason: collision with root package name */
    public final Resources.Theme f273b;

    public j(Resources resources, Resources.Theme theme) {
        this.f272a = resources;
        this.f273b = theme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j.class != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        return this.f272a.equals(jVar.f272a) && Objects.equals(this.f273b, jVar.f273b);
    }

    public final int hashCode() {
        return Objects.hash(this.f272a, this.f273b);
    }
}
