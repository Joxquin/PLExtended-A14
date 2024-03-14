package androidx.core.view;

import android.view.DisplayCutout;
import java.util.Objects;
/* renamed from: androidx.core.view.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0167d {

    /* renamed from: a  reason: collision with root package name */
    public final DisplayCutout f3107a;

    public C0167d(DisplayCutout displayCutout) {
        this.f3107a = displayCutout;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0167d.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.f3107a, ((C0167d) obj).f3107a);
    }

    public final int hashCode() {
        DisplayCutout displayCutout = this.f3107a;
        if (displayCutout == null) {
            return 0;
        }
        return displayCutout.hashCode();
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.f3107a + "}";
    }
}
