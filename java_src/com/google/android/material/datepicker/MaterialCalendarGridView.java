package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.android.systemui.shared.R;
import java.util.Calendar;
import java.util.Iterator;
import x2.C1485w;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class MaterialCalendarGridView extends GridView {

    /* renamed from: d  reason: collision with root package name */
    public final Calendar f7884d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f7885e;

    public MaterialCalendarGridView(Context context) {
        this(context, null);
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    /* renamed from: a */
    public final A getAdapter2() {
        return (A) super.getAdapter();
    }

    public final View b(int i4) {
        return getChildAt(i4 - getFirstVisiblePosition());
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter2().notifyDataSetChanged();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int b4;
        int width;
        int b5;
        int width2;
        int width3;
        int i4;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        A adapter2 = getAdapter2();
        InterfaceC0732g interfaceC0732g = adapter2.f7851e;
        C0731f c0731f = adapter2.f7853g;
        int max = Math.max(adapter2.b(), getFirstVisiblePosition());
        int min = Math.min((adapter2.b() + adapter2.f7850d.f7973h) - 1, getLastVisiblePosition());
        Long item = adapter2.getItem(max);
        Long item2 = adapter2.getItem(min);
        Iterator it = interfaceC0732g.e().iterator();
        while (it.hasNext()) {
            L.c cVar = (L.c) it.next();
            Object obj = cVar.f1016a;
            if (obj != null) {
                Object obj2 = cVar.f1017b;
                if (obj2 != null) {
                    long longValue = ((Long) obj).longValue();
                    long longValue2 = ((Long) obj2).longValue();
                    Long valueOf = Long.valueOf(longValue);
                    Long valueOf2 = Long.valueOf(longValue2);
                    if (!(item == null || item2 == null || valueOf == null || valueOf2 == null || valueOf.longValue() > item2.longValue() || valueOf2.longValue() < item.longValue())) {
                        boolean a4 = C1485w.a(this);
                        if (longValue < item.longValue()) {
                            width = max % adapter2.f7850d.f7972g == 0 ? 0 : !a4 ? materialCalendarGridView.b(max - 1).getRight() : materialCalendarGridView.b(max - 1).getLeft();
                            b4 = max;
                        } else {
                            materialCalendarGridView.f7884d.setTimeInMillis(longValue);
                            b4 = adapter2.b() + (materialCalendarGridView.f7884d.get(5) - 1);
                            View b6 = materialCalendarGridView.b(b4);
                            width = (b6.getWidth() / 2) + b6.getLeft();
                        }
                        if (longValue2 > item2.longValue()) {
                            width2 = (min + 1) % adapter2.f7850d.f7972g == 0 ? getWidth() : !a4 ? materialCalendarGridView.b(min).getRight() : materialCalendarGridView.b(min).getLeft();
                            b5 = min;
                        } else {
                            materialCalendarGridView.f7884d.setTimeInMillis(longValue2);
                            b5 = adapter2.b() + (materialCalendarGridView.f7884d.get(5) - 1);
                            View b7 = materialCalendarGridView.b(b5);
                            width2 = (b7.getWidth() / 2) + b7.getLeft();
                        }
                        int itemId = (int) adapter2.getItemId(b4);
                        int i5 = max;
                        int i6 = min;
                        int itemId2 = (int) adapter2.getItemId(b5);
                        while (itemId <= itemId2) {
                            int numColumns = getNumColumns() * itemId;
                            int numColumns2 = (getNumColumns() + numColumns) - 1;
                            View b8 = materialCalendarGridView.b(numColumns);
                            int top = b8.getTop() + c0731f.f7933a.f7927a.top;
                            A a5 = adapter2;
                            int bottom = b8.getBottom() - c0731f.f7933a.f7927a.bottom;
                            if (a4) {
                                int i7 = b5 > numColumns2 ? 0 : width2;
                                width3 = numColumns > b4 ? getWidth() : width;
                                i4 = i7;
                            } else {
                                i4 = numColumns > b4 ? 0 : width;
                                width3 = b5 > numColumns2 ? getWidth() : width2;
                            }
                            canvas.drawRect(i4, top, width3, bottom, c0731f.f7940h);
                            itemId++;
                            materialCalendarGridView = this;
                            it = it;
                            adapter2 = a5;
                        }
                        materialCalendarGridView = this;
                        max = i5;
                        min = i6;
                    }
                }
            } else {
                materialCalendarGridView = this;
            }
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onFocusChanged(boolean z4, int i4, Rect rect) {
        if (!z4) {
            super.onFocusChanged(false, i4, rect);
        } else if (i4 == 33) {
            A adapter2 = getAdapter2();
            setSelection((adapter2.b() + adapter2.f7850d.f7973h) - 1);
        } else if (i4 == 130) {
            setSelection(getAdapter2().b());
        } else {
            super.onFocusChanged(true, i4, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if (super.onKeyDown(i4, keyEvent)) {
            if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter2().b()) {
                return true;
            }
            if (19 == i4) {
                setSelection(getAdapter2().b());
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onMeasure(int i4, int i5) {
        if (!this.f7885e) {
            super.onMeasure(i4, i5);
            return;
        }
        super.onMeasure(i4, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final void setSelection(int i4) {
        if (i4 < getAdapter2().b()) {
            super.setSelection(getAdapter2().b());
        } else {
            super.setSelection(i4);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof A) {
            super.setAdapter(listAdapter);
            return;
        }
        throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), A.class.getCanonicalName()));
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f7884d = H.d(null);
        if (MaterialDatePicker.e(getContext())) {
            setNextFocusLeftId(R.id.cancel_button);
            setNextFocusRightId(R.id.confirm_button);
        }
        this.f7885e = MaterialDatePicker.f(R.attr.nestedScrollable, getContext());
        androidx.core.view.J.h(this, new s());
    }
}
