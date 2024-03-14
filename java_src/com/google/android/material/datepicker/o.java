package com.google.android.material.datepicker;

import android.graphics.Canvas;
import android.view.View;
import androidx.recyclerview.widget.A0;
import androidx.recyclerview.widget.AbstractC0274i0;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Calendar;
/* loaded from: classes.dex */
public final class o extends AbstractC0274i0 {

    /* renamed from: d  reason: collision with root package name */
    public final Calendar f7952d = H.d(null);

    /* renamed from: e  reason: collision with root package name */
    public final Calendar f7953e = H.d(null);

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ MaterialCalendar f7954f;

    public o(MaterialCalendar materialCalendar) {
        this.f7954f = materialCalendar;
    }

    @Override // androidx.recyclerview.widget.AbstractC0274i0
    public final void onDraw(Canvas canvas, RecyclerView recyclerView, A0 a02) {
        Object obj;
        if ((recyclerView.getAdapter() instanceof K) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
            K k4 = (K) recyclerView.getAdapter();
            GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
            MaterialCalendar materialCalendar = this.f7954f;
            for (L.c cVar : materialCalendar.f7872f.e()) {
                Object obj2 = cVar.f1016a;
                if (obj2 != null && (obj = cVar.f1017b) != null) {
                    long longValue = ((Long) obj2).longValue();
                    Calendar calendar = this.f7952d;
                    calendar.setTimeInMillis(longValue);
                    long longValue2 = ((Long) obj).longValue();
                    Calendar calendar2 = this.f7953e;
                    calendar2.setTimeInMillis(longValue2);
                    int i4 = calendar.get(1) - k4.f7870a.f7873g.f7920d.f7971f;
                    int i5 = calendar2.get(1) - k4.f7870a.f7873g.f7920d.f7971f;
                    View findViewByPosition = gridLayoutManager.findViewByPosition(i4);
                    View findViewByPosition2 = gridLayoutManager.findViewByPosition(i5);
                    int spanCount = i4 / gridLayoutManager.getSpanCount();
                    int spanCount2 = i5 / gridLayoutManager.getSpanCount();
                    int i6 = spanCount;
                    while (i6 <= spanCount2) {
                        View findViewByPosition3 = gridLayoutManager.findViewByPosition(gridLayoutManager.getSpanCount() * i6);
                        if (findViewByPosition3 != null) {
                            canvas.drawRect(i6 == spanCount ? (findViewByPosition.getWidth() / 2) + findViewByPosition.getLeft() : 0, findViewByPosition3.getTop() + materialCalendar.f7876j.f7936d.f7927a.top, i6 == spanCount2 ? (findViewByPosition2.getWidth() / 2) + findViewByPosition2.getLeft() : recyclerView.getWidth(), findViewByPosition3.getBottom() - materialCalendar.f7876j.f7936d.f7927a.bottom, materialCalendar.f7876j.f7940h);
                        }
                        i6++;
                    }
                }
            }
        }
    }
}
