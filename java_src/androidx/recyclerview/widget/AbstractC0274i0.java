package androidx.recyclerview.widget;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
/* renamed from: androidx.recyclerview.widget.i0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0274i0 {
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView) {
        ((C0282m0) view.getLayoutParams()).a();
        rect.set(0, 0, 0, 0);
    }

    public void onDraw(Canvas canvas, RecyclerView recyclerView, A0 a02) {
    }

    public void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
    }
}
