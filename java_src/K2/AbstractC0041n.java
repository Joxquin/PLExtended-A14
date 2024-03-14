package K2;

import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
/* renamed from: K2.n  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0041n extends ConstraintLayout {

    /* renamed from: d  reason: collision with root package name */
    public String f998d;

    public AbstractC0041n(Context context) {
        super(context);
        this.f998d = "";
    }

    public final void r(String str) {
        if (this.f998d.equals(str)) {
            return;
        }
        this.f998d = str;
        s();
    }

    public void s() {
    }

    public abstract boolean t(SmartspaceTarget smartspaceTarget, n1.d dVar, L2.d dVar2);

    public abstract void u(int i4);

    public AbstractC0041n(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f998d = "";
    }
}
