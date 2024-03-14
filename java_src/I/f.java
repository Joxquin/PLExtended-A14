package I;

import android.os.LocaleList;
import java.util.Locale;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: b  reason: collision with root package name */
    public static final f f555b = new f(new h(new LocaleList(new Locale[0])));

    /* renamed from: a  reason: collision with root package name */
    public final g f556a;

    public f(h hVar) {
        this.f556a = hVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f) {
            if (this.f556a.equals(((f) obj).f556a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f556a.hashCode();
    }

    public final String toString() {
        return this.f556a.toString();
    }
}
