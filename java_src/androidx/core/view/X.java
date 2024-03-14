package androidx.core.view;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import java.util.Objects;
/* loaded from: classes.dex */
public class X extends W {
    public X(c0 c0Var, WindowInsets windowInsets) {
        super(c0Var, windowInsets);
    }

    @Override // androidx.core.view.a0
    public c0 a() {
        return c0.g(this.f3091c.consumeDisplayCutout(), null);
    }

    @Override // androidx.core.view.a0
    public C0167d e() {
        DisplayCutout displayCutout = this.f3091c.getDisplayCutout();
        if (displayCutout == null) {
            return null;
        }
        return new C0167d(displayCutout);
    }

    @Override // androidx.core.view.V, androidx.core.view.a0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof X) {
            X x4 = (X) obj;
            return Objects.equals(this.f3091c, x4.f3091c) && Objects.equals(this.f3095g, x4.f3095g);
        }
        return false;
    }

    @Override // androidx.core.view.a0
    public int hashCode() {
        return this.f3091c.hashCode();
    }
}
