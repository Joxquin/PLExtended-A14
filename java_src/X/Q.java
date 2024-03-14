package X;

import android.text.TextUtils;
import androidx.preference.Preference;
/* loaded from: classes.dex */
public final class Q {

    /* renamed from: a  reason: collision with root package name */
    public final int f1950a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1951b;

    /* renamed from: c  reason: collision with root package name */
    public final String f1952c;

    public Q(Preference preference) {
        this.f1952c = preference.getClass().getName();
        this.f1950a = preference.getLayoutResource();
        this.f1951b = preference.getWidgetLayoutResource();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Q) {
            Q q4 = (Q) obj;
            return this.f1950a == q4.f1950a && this.f1951b == q4.f1951b && TextUtils.equals(this.f1952c, q4.f1952c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f1952c.hashCode() + ((((527 + this.f1950a) * 31) + this.f1951b) * 31);
    }
}
