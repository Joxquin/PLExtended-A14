package e;

import android.content.Context;
import android.widget.ArrayAdapter;
/* renamed from: e.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0818j extends ArrayAdapter {
    public C0818j(Context context, int i4, CharSequence[] charSequenceArr) {
        super(context, i4, 16908308, charSequenceArr);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final long getItemId(int i4) {
        return i4;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }
}
