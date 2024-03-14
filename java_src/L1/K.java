package L1;

import android.content.Context;
import android.graphics.Path;
import android.widget.TextView;
/* loaded from: classes.dex */
public final class K extends TextView {

    /* renamed from: d  reason: collision with root package name */
    public c0 f1094d;

    public K(Context context) {
        super(context, null, 0, 0);
        setTextIsSelectable(true);
    }

    @Override // android.widget.TextView
    public final void onSelectionChanged(int i4, int i5) {
        super.onSelectionChanged(i4, i5);
        if (this.f1094d == null) {
            return;
        }
        if (i4 == i5 || getLayout() == null) {
            this.f1094d.a(null);
            return;
        }
        Path path = new Path();
        getLayout().getSelectionPath(i4, i5, path);
        this.f1094d.a(path);
    }
}
